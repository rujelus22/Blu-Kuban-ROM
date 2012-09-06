.class final Lcom/google/common/base/Join$1;
.super Ljava/util/AbstractList;
.source "Join.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/Join;->iterable(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$first:Ljava/lang/Object;

.field final synthetic val$rest:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/google/common/base/Join$1;->val$rest:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/base/Join$1;->val$first:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter "index"

    .prologue
    .line 262
    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/google/common/base/Join$1;->val$first:Ljava/lang/Object;

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/google/common/base/Join$1;->val$rest:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    goto :goto_4
.end method

.method public size()I
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/common/base/Join$1;->val$rest:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
