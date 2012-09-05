.class public abstract Lcom/google/protobuf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/k;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    return-void
.end method

.method protected static a(Lcom/google/protobuf/j;)Lcom/google/protobuf/UninitializedMessageException;
    .registers 2
    .parameter

    .prologue
    .line 298
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {v0, p0}, Lcom/google/protobuf/UninitializedMessageException;-><init>(Lcom/google/protobuf/j;)V

    return-object v0
.end method

.method protected static a(Ljava/lang/Iterable;Ljava/util/Collection;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 310
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 311
    if-nez v1, :cond_4

    .line 312
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 315
    :cond_16
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_20

    .line 317
    check-cast p0, Ljava/util/Collection;

    .line 318
    invoke-interface {p1, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 324
    :cond_1f
    return-void

    .line 320
    :cond_20
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 321
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method


# virtual methods
.method public abstract a(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/b;
.end method

.method public final a(Ljava/io/InputStream;)Lcom/google/protobuf/b;
    .registers 4
    .parameter

    .prologue
    .line 201
    invoke-static {p1}, Lcom/google/protobuf/d;->a(Ljava/io/InputStream;)Lcom/google/protobuf/d;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/google/protobuf/e;->a()Lcom/google/protobuf/e;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/b;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/b;

    .line 203
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/d;->a(I)V

    .line 204
    return-object p0
.end method

.method public synthetic b(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/k;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/b;->a(Lcom/google/protobuf/d;Lcom/google/protobuf/e;)Lcom/google/protobuf/b;

    move-result-object v0

    return-object v0
.end method

.method public abstract c()Lcom/google/protobuf/b;
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/protobuf/b;->c()Lcom/google/protobuf/b;

    move-result-object v0

    return-object v0
.end method
