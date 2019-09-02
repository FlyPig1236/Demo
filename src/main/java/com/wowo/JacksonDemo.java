package com.wowo;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class JacksonDemo {
    public static void main (String[] args) throws IOException {
        ObjectMapper mapper = new ObjectMapper();
        //Java数组 <-->JSON
        //Java对象 -->JSON
        //mapper.writeValueAsString(obj);
        //Java数组 <-->JSON
        String[] arr = {"AJAX","JSON","Vue"};
        String str = mapper.writeValueAsString(arr);
        System.out.println("str="+str);
        str = "[\"AJAX\",\"JSON\",\"Vue\",\"React\"]";
        String[] arr1 = mapper.readValue(str,String[].class);
        System.out.println(Arrays.toString(arr1));
        //Java对象 <-->JSON
        User user = new User(1,"tom",20);
        str = mapper.writeValueAsString(user);
        System.out.println("str="+str);
        str="{\"id\":1,\"name\":\"alice\",\"age\":22}";
        User user1 = mapper.readValue(str,User.class);
        System.out.println(user1);
        //Java List<User> <-->JSON
        List<User> users = new ArrayList<>();
        users.add(new User(1,"tom",20));
        users.add(new User(2,"alice",24));
        users.add(new User(3,"tony",30));
        str = mapper.writeValueAsString(users);
        System.out.println(str);
        str = "[{\"id\":1,\"name\":\"tom\",\"age\":20},{\"id\":2,\"name\":\"alice\",\"age\":24},{\"id\":3,\"name\":\"tony\",\"age\":30}]";
        List<User> users1 = mapper.readValue(str,List.class);
        List<User> users2 = mapper.readValue(str,new TypeReference<List<User>>(){});
        System.out.println(users1);
    }

}
