.class public final Lamd;
.super Lame;
.source "JsonArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lame;",
        "Ljava/lang/Iterable",
        "<",
        "Lame;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lame;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lamd;->a:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lamd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lame;
    .registers 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lamd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lame;

    return-object v0
.end method

.method public a()Ljava/lang/Number;
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lamd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 106
    iget-object v0, p0, Lamd;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lame;

    invoke-virtual {v0}, Lame;->a()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 108
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lamd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 122
    iget-object v0, p0, Lamd;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lame;

    invoke-virtual {v0}, Lame;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 124
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public a(Lame;)V
    .registers 3
    .parameter

    .prologue
    .line 49
    if-nez p1, :cond_4

    .line 50
    sget-object p1, Lamg;->a:Lamg;

    .line 52
    :cond_4
    iget-object v0, p0, Lamd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public a()Z
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lamd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 268
    iget-object v0, p0, Lamd;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lame;

    invoke-virtual {v0}, Lame;->a()Z

    move-result v0

    return v0

    .line 270
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public b()I
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lamd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 220
    iget-object v0, p0, Lamd;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lame;

    invoke-virtual {v0}, Lame;->b()I

    move-result v0

    return v0

    .line 222
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 275
    if-eq p1, p0, :cond_12

    instance-of v0, p1, Lamd;

    if-eqz v0, :cond_14

    check-cast p1, Lamd;

    iget-object v0, p1, Lamd;->a:Ljava/util/List;

    iget-object v1, p0, Lamd;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lamd;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lame;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lamd;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
