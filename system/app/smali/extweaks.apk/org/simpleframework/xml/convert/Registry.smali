.class public Lorg/simpleframework/xml/convert/Registry;
.super Ljava/lang/Object;
.source "Registry.java"


# instance fields
.field private final binder:Lorg/simpleframework/xml/convert/RegistryBinder;

.field private final cache:Lorg/simpleframework/xml/convert/ConverterCache;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lorg/simpleframework/xml/convert/RegistryBinder;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/RegistryBinder;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->binder:Lorg/simpleframework/xml/convert/RegistryBinder;

    .line 52
    new-instance v0, Lorg/simpleframework/xml/convert/ConverterCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/convert/ConverterCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/convert/ConverterCache;

    .line 53
    return-void
.end method

.method private create(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .registers 4
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->binder:Lorg/simpleframework/xml/convert/RegistryBinder;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/convert/RegistryBinder;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_d

    .line 88
    iget-object v1, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/convert/ConverterCache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/convert/ConverterCache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    :cond_d
    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Registry;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 105
    if-eqz p1, :cond_7

    .line 106
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->binder:Lorg/simpleframework/xml/convert/RegistryBinder;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/convert/RegistryBinder;->bind(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 108
    :cond_7
    return-object p0
.end method

.method public bind(Ljava/lang/Class;Lorg/simpleframework/xml/convert/Converter;)Lorg/simpleframework/xml/convert/Registry;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 123
    if-eqz p1, :cond_7

    .line 124
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/convert/ConverterCache;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/convert/ConverterCache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 126
    :cond_7
    return-object p0
.end method

.method public lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;
    .registers 3
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lorg/simpleframework/xml/convert/Registry;->cache:Lorg/simpleframework/xml/convert/ConverterCache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/convert/ConverterCache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/convert/Converter;

    .line 68
    if-nez v0, :cond_e

    .line 69
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/convert/Registry;->create(Ljava/lang/Class;)Lorg/simpleframework/xml/convert/Converter;

    move-result-object v0

    .line 71
    :cond_e
    return-object v0
.end method
