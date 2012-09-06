.class Lorg/simpleframework/xml/stream/OutputStack;
.super Ljava/util/ArrayList;
.source "OutputStack.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lorg/simpleframework/xml/stream/OutputNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final active:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 2
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputStack;->active:Ljava/util/Set;

    .line 50
    return-void
.end method


# virtual methods
.method public bottom()Lorg/simpleframework/xml/stream/OutputNode;
    .registers 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputStack;->size()I

    move-result v0

    .line 94
    if-gtz v0, :cond_8

    .line 95
    const/4 v0, 0x0

    .line 97
    :goto_7
    return-object v0

    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/OutputStack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/OutputNode;

    goto :goto_7
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/OutputStack$Sequence;-><init>(Lorg/simpleframework/xml/stream/OutputStack;)V

    return-object v0
.end method

.method public pop()Lorg/simpleframework/xml/stream/OutputNode;
    .registers 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputStack;->size()I

    move-result v0

    .line 62
    if-gtz v0, :cond_8

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_7
    return-object v0

    :cond_8
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/OutputStack;->purge(I)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    goto :goto_7
.end method

.method public purge(I)Lorg/simpleframework/xml/stream/OutputNode;
    .registers 4
    .parameter

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/OutputStack;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/OutputNode;

    .line 126
    if-eqz v0, :cond_d

    .line 127
    iget-object v1, p0, Lorg/simpleframework/xml/stream/OutputStack;->active:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 129
    :cond_d
    return-object v0
.end method

.method public push(Lorg/simpleframework/xml/stream/OutputNode;)Lorg/simpleframework/xml/stream/OutputNode;
    .registers 3
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputStack;->active:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/stream/OutputStack;->add(Ljava/lang/Object;)Z

    .line 111
    return-object p1
.end method

.method public top()Lorg/simpleframework/xml/stream/OutputNode;
    .registers 2

    .prologue
    .line 76
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/OutputStack;->size()I

    move-result v0

    .line 78
    if-gtz v0, :cond_8

    .line 79
    const/4 v0, 0x0

    .line 81
    :goto_7
    return-object v0

    :cond_8
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/OutputStack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/OutputNode;

    goto :goto_7
.end method
