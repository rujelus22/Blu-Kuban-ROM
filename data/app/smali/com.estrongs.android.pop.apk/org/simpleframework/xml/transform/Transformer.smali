.class public Lorg/simpleframework/xml/transform/Transformer;
.super Ljava/lang/Object;


# instance fields
.field private final cache:Lorg/simpleframework/xml/transform/TransformCache;

.field private final error:Lorg/simpleframework/xml/util/Cache;

.field private final matcher:Lorg/simpleframework/xml/transform/Matcher;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/transform/Matcher;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/simpleframework/xml/transform/DefaultMatcher;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/transform/DefaultMatcher;-><init>(Lorg/simpleframework/xml/transform/Matcher;)V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/Transformer;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    new-instance v0, Lorg/simpleframework/xml/transform/TransformCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/transform/TransformCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/Transformer;->cache:Lorg/simpleframework/xml/transform/TransformCache;

    new-instance v0, Lorg/simpleframework/xml/util/WeakCache;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/WeakCache;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/transform/Transformer;->error:Lorg/simpleframework/xml/util/Cache;

    return-void
.end method

.method private lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 3

    iget-object v0, p0, Lorg/simpleframework/xml/transform/Transformer;->cache:Lorg/simpleframework/xml/transform/TransformCache;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/transform/TransformCache;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/transform/Transform;

    if-eqz v0, :cond_b

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/simpleframework/xml/transform/Transformer;->error:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/util/Cache;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    goto :goto_a

    :cond_15
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/Transformer;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    goto :goto_a
.end method

.method private match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;
    .registers 4

    iget-object v0, p0, Lorg/simpleframework/xml/transform/Transformer;->matcher:Lorg/simpleframework/xml/transform/Matcher;

    invoke-interface {v0, p1}, Lorg/simpleframework/xml/transform/Matcher;->match(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, p0, Lorg/simpleframework/xml/transform/Transformer;->cache:Lorg/simpleframework/xml/transform/TransformCache;

    invoke-virtual {v1, p1, v0}, Lorg/simpleframework/xml/transform/TransformCache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_d
    return-object v0

    :cond_e
    iget-object v1, p0, Lorg/simpleframework/xml/transform/Transformer;->error:Lorg/simpleframework/xml/util/Cache;

    invoke-interface {v1, p1, p0}, Lorg/simpleframework/xml/util/Cache;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d
.end method


# virtual methods
.method public read(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7

    invoke-direct {p0, p2}, Lorg/simpleframework/xml/transform/Transformer;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    if-nez v0, :cond_14

    new-instance v0, Lorg/simpleframework/xml/transform/TransformException;

    const-string v1, "Transform of %s not supported"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/transform/TransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_14
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/transform/Transform;->read(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public valid(Ljava/lang/Class;)Z
    .registers 3

    invoke-direct {p0, p1}, Lorg/simpleframework/xml/transform/Transformer;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public write(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .registers 7

    invoke-direct {p0, p2}, Lorg/simpleframework/xml/transform/Transformer;->lookup(Ljava/lang/Class;)Lorg/simpleframework/xml/transform/Transform;

    move-result-object v0

    if-nez v0, :cond_14

    new-instance v0, Lorg/simpleframework/xml/transform/TransformException;

    const-string v1, "Transform of %s not supported"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/transform/TransformException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_14
    invoke-interface {v0, p1}, Lorg/simpleframework/xml/transform/Transform;->write(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
