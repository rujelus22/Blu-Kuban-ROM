.class Lcom/google/common/collect/Lists$OnePlusArrayList;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/RandomAccess;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final first:Ljava/lang/Object;

.field final rest:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/google/common/collect/Lists$OnePlusArrayList;->first:Ljava/lang/Object;

    .line 245
    invoke-static {p2}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/common/collect/Lists$OnePlusArrayList;->rest:[Ljava/lang/Object;

    .line 246
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$OnePlusArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/t;->a(II)I

    .line 253
    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/google/common/collect/Lists$OnePlusArrayList;->first:Ljava/lang/Object;

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/Lists$OnePlusArrayList;->rest:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_b
.end method

.method public size()I
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/common/collect/Lists$OnePlusArrayList;->rest:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method