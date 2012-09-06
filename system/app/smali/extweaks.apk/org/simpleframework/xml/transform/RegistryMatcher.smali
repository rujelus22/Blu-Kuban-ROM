.class public Lorg/simpleframework/xml/transform/RegistryMatcher;
.super Ljava/lang/Object;
.source "RegistryMatcher.java"

# interfaces
.implements Lorg/simpleframework/xml/transform/Matcher;


# instance fields
.field private final transforms:Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/transform/RegistryMatcher$Cache",
            "<",
            "Lorg/simpleframework/xml/transform/Transform;",
            ">;"
        }
    .end annotation
.end field

.field private final types:Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/transform/RegistryMatcher$Cache",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/RegistryMatcher;->transforms:Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;

    .line 55
    new-instance v0, Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/RegistryMatcher;->types:Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;

    .line 56
    return-void
.end method

.method private create(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lorg/simpleframework/xml/transform/RegistryMatcher;->types:Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 112
    if-eqz v0, :cond_f

    .line 113
    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/transform/RegistryMatcher;->create(Ljava/lang/Class;Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    .line 115
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private create(Ljava/lang/Class;Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 130
    check-cast v0, Lorg/simpleframework/xml/transform/Transform;

    .line 132
    if-eqz v0, :cond_d

    .line 133
    iget-object v1, p0, Lorg/simpleframework/xml/transform/RegistryMatcher;->transforms:Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    :cond_d
    return-object v0
.end method


# virtual methods
.method public bind(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lorg/simpleframework/xml/transform/RegistryMatcher;->types:Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public bind(Ljava/lang/Class;Lorg/simpleframework/xml/transform/Transform;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lorg/simpleframework/xml/transform/RegistryMatcher;->transforms:Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;

    invoke-virtual {v0, p1, p2}, Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lorg/simpleframework/xml/transform/RegistryMatcher;->transforms:Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/RegistryMatcher$Cache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/transform/Transform;

    .line 94
    if-nez v0, :cond_e

    .line 95
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/RegistryMatcher;->create(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    .line 97
    :cond_e
    return-object v0
.end method
