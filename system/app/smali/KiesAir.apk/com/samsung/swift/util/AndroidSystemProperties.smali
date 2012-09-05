.class public Lcom/samsung/swift/util/AndroidSystemProperties;
.super Ljava/lang/Object;
.source "AndroidSystemProperties.java"


# static fields
.field private static method:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 106
    :try_start_0
    const-class v2, Lcom/samsung/swift/util/AndroidSystemProperties;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "android.os.SystemProperties"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 107
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v2, "get"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/samsung/swift/util/AndroidSystemProperties;->method:Ljava/lang/reflect/Method;
    :try_end_21
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_21} :catch_22
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_21} :catch_27
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_21} :catch_2c

    .line 121
    :goto_21
    return-void

    .line 109
    :catch_22
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_21

    .line 113
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_27
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_21

    .line 117
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_2c
    move-exception v1

    .line 119
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_21
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNativeProperty(Ljava/lang/String;I)I
    .registers 3
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/swift/util/AndroidSystemProperties;->getNativeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getNativeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "name"
    .parameter "defValue"

    .prologue
    .line 132
    :try_start_0
    sget-object v2, Lcom/samsung/swift/util/AndroidSystemProperties;->method:Ljava/lang/reflect/Method;

    if-nez v2, :cond_5

    .line 143
    .end local p1
    :cond_4
    :goto_4
    return-object p1

    .line 138
    .restart local p1
    :cond_5
    sget-object v2, Lcom/samsung/swift/util/AndroidSystemProperties;->method:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_1c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1c} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1c} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_1c} :catch_2f

    move-result v2

    if-eqz v2, :cond_4

    move-object p1, v1

    .line 143
    goto :goto_4

    .line 145
    .end local v1           #value:Ljava/lang/String;
    :catch_21
    move-exception v0

    .line 147
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 149
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_28
    move-exception v0

    .line 151
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 153
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2f
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method
