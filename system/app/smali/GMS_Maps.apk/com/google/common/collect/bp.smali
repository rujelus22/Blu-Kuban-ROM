.class public abstract Lcom/google/common/collect/bp;
.super Lcom/google/common/collect/bx;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/Q;


# static fields
.field private static final a:Lcom/google/common/collect/bp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    new-instance v0, Lcom/google/common/collect/bq;

    invoke-direct {v0}, Lcom/google/common/collect/bq;-><init>()V

    sput-object v0, Lcom/google/common/collect/bp;->a:Lcom/google/common/collect/bp;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/google/common/collect/bx;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bp;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    new-instance v0, Lcom/google/common/collect/cY;

    invoke-static/range {p0 .. p5}, Lcom/google/common/collect/bx;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/bx;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/cY;-><init>(Lcom/google/common/collect/bx;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->e()Lcom/google/common/collect/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/bx;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Lcom/google/common/collect/Q;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->f()Lcom/google/common/collect/bp;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Lcom/google/common/collect/br;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->g()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->e()Lcom/google/common/collect/bx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/bx;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->f()Lcom/google/common/collect/bp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/bp;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract e()Lcom/google/common/collect/bx;
.end method

.method public synthetic entrySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->a()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 274
    if-eq p1, p0, :cond_c

    invoke-virtual {p0}, Lcom/google/common/collect/bp;->e()Lcom/google/common/collect/bx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/bx;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public abstract f()Lcom/google/common/collect/bp;
.end method

.method public g()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->f()Lcom/google/common/collect/bp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/bp;->x_()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->e()Lcom/google/common/collect/bx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/bx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->e()Lcom/google/common/collect/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/bx;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->e()Lcom/google/common/collect/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/bx;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public synthetic keySet()Ljava/util/Set;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->x_()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->e()Lcom/google/common/collect/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/bx;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->e()Lcom/google/common/collect/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/bx;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->g()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public x_()Lcom/google/common/collect/ImmutableSet;
    .registers 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/google/common/collect/bp;->e()Lcom/google/common/collect/bx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/bx;->x_()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method
