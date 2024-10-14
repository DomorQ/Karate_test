package utils;

import com.github.javafaker.Faker;

public class TestDataCreator {

    private static Faker faker = new Faker();

    public static String getDogName() {
        return faker.dog().name();
    }

    public static int getID() {
        return faker.number().numberBetween(0,10000);
    }

    public static String getFileName() {
        return faker.file().fileName();
    }


    public static String[] getStatus() {
        return new String[]{"available", "pending", "sold"};
    }
}
