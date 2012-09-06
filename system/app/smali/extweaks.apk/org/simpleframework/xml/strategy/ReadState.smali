.class Lorg/simpleframework/xml/strategy/ReadState;
.super Lorg/simpleframework/xml/util/WeakCache;
.source "ReadState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/simpleframework/xml/util/WeakCache",
        "<",
        "Ljava/lang/Object;",
        "Lorg/simpleframework/xml/strategy/ReadGraph;",
        ">;"
    }
.end annotation


# instance fields
.field private final contract:Lorg/simpleframework/xml/strategy/Contract;

.field private final loader:Lorg/simpleframework/xml/strategy/Loader;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Contract;)V
    .registers 3
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/simpleframework/xml/util/WeakCache;-><init>()V

    .line 57
    new-instance v0, Lorg/simpleframework/xml/strategy/Loader;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/Loader;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadState;->loader:Lorg/simpleframework/xml/strategy/Loader;

    .line 58
    iput-object p1, p0, Lorg/simpleframework/xml/strategy/ReadState;->contract:Lorg/simpleframework/xml/strategy/Contract;

    .line 59
    return-void
.end method

.method private create(Ljava/lang/Object;)Lorg/simpleframework/xml/strategy/ReadGraph;
    .registers 5
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/strategy/ReadState;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/strategy/ReadGraph;

    .line 93
    if-nez v0, :cond_14

    .line 94
    new-instance v0, Lorg/simpleframework/xml/strategy/ReadGraph;

    iget-object v1, p0, Lorg/simpleframework/xml/strategy/ReadState;->contract:Lorg/simpleframework/xml/strategy/Contract;

    iget-object v2, p0, Lorg/simpleframework/xml/strategy/ReadState;->loader:Lorg/simpleframework/xml/strategy/Loader;

    invoke-direct {v0, v1, v2}, Lorg/simpleframework/xml/strategy/ReadGraph;-><init>(Lorg/simpleframework/xml/strategy/Contract;Lorg/simpleframework/xml/strategy/Loader;)V

    .line 95
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/strategy/ReadState;->cache(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    :cond_14
    return-object v0
.end method


# virtual methods
.method public find(Ljava/lang/Object;)Lorg/simpleframework/xml/strategy/ReadGraph;
    .registers 3
    .parameter

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/strategy/ReadState;->fetch(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/strategy/ReadGraph;

    .line 74
    if-eqz v0, :cond_9

    .line 77
    :goto_8
    return-object v0

    :cond_9
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/strategy/ReadState;->create(Ljava/lang/Object;)Lorg/simpleframework/xml/strategy/ReadGraph;

    move-result-object v0

    goto :goto_8
.end method
