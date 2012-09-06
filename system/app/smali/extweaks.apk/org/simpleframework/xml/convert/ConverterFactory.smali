.class Lorg/simpleframework/xml/convert/ConverterFactory;
.super Ljava/lang/Object;
.source "ConverterFactory.java"


# instance fields
.field private final cache:Lorg/simpleframework/xml/convert/ConverterCache;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/simpleframework/xml/convert/ConverterCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/ConverterCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/ConverterFactory;->cache:Lorg/simpleframework/xml/convert/ConverterCache;

    .line 50
    return-void
.end method

.method private getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 4
    .parameter

    .prologue
    .line 136
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_11

    .line 139
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 141
    :cond_11
    return-object v0
.end method

.method private getConverter(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .registers 6
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/convert/ConverterFactory;->getConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 101
    if-nez v0, :cond_14

    .line 102
    new-instance v0, Lorg/simpleframework/xml/convert/ConvertException;

    const-string v1, "No default constructor for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/convert/ConvertException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 104
    :cond_14
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/convert/ConverterFactory;->getConverter(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    return-object v0
.end method

.method private getConverter(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)Lorg/simpleframework/xml/convert/Converter;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Converter;

    .line 120
    if-eqz v0, :cond_10

    .line 121
    iget-object v1, p0, Lorg/simpleframework/xml/convert/ConverterFactory;->cache:Lorg/simpleframework/xml/convert/ConverterCache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/convert/ConverterCache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    :cond_10
    return-object v0
.end method


# virtual methods
.method public getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .registers 3
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lorg/simpleframework/xml/convert/ConverterFactory;->cache:Lorg/simpleframework/xml/convert/ConverterCache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/convert/ConverterCache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Converter;

    .line 64
    if-nez v0, :cond_e

    .line 65
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/convert/ConverterFactory;->getConverter(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    .line 67
    :cond_e
    return-object v0
.end method

.method public getInstance(Lorg/simpleframework/xml/convert/Convert;)Lorg/simpleframework/xml/convert/Converter;
    .registers 7
    .parameter

    .prologue
    .line 81
    invoke-interface {p1}, Lorg/simpleframework/xml/convert/Convert;->value()Ljava/lang/Class;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 84
    new-instance v1, Lorg/simpleframework/xml/convert/ConvertException;

    const-string v2, "Can not instantiate %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lorg/simpleframework/xml/convert/ConvertException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    .line 86
    :cond_18
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/convert/ConverterFactory;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    return-object v0
.end method
