.class Lorg/simpleframework/xml/convert/RegistryBinder;
.super Ljava/lang/Object;
.source "RegistryBinder.java"


# instance fields
.field private final cache:Lorg/simpleframework/xml/convert/ClassCache;

.field private final factory:Lorg/simpleframework/xml/convert/ConverterFactory;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/simpleframework/xml/convert/ConverterFactory;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/ConverterFactory;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/RegistryBinder;->factory:Lorg/simpleframework/xml/convert/ConverterFactory;

    .line 52
    new-instance v0, Lorg/simpleframework/xml/convert/ClassCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/ClassCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/RegistryBinder;->cache:Lorg/simpleframework/xml/convert/ClassCache;

    .line 53
    return-void
.end method

.method private create(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .registers 3
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lorg/simpleframework/xml/convert/RegistryBinder;->factory:Lorg/simpleframework/xml/convert/ConverterFactory;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/convert/ConverterFactory;->getInstance(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lorg/simpleframework/xml/convert/RegistryBinder;->cache:Lorg/simpleframework/xml/convert/ClassCache;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/convert/ClassCache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .registers 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lorg/simpleframework/xml/convert/RegistryBinder;->cache:Lorg/simpleframework/xml/convert/ClassCache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/convert/ClassCache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 68
    if-eqz v0, :cond_f

    .line 69
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/convert/RegistryBinder;->create(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    .line 71
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
