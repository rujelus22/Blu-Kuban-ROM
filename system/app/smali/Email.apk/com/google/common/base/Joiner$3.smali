.class final Lcom/google/common/base/Joiner$3;
.super Ljava/util/AbstractList;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Joiner;
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

.field final synthetic val$second:Ljava/lang/Object;


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter "index"

    .prologue
    .line 331
    packed-switch p1, :pswitch_data_10

    .line 337
    iget-object v0, p0, Lcom/google/common/base/Joiner$3;->val$rest:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x2

    aget-object v0, v0, v1

    :goto_9
    return-object v0

    .line 333
    :pswitch_a
    iget-object v0, p0, Lcom/google/common/base/Joiner$3;->val$first:Ljava/lang/Object;

    goto :goto_9

    .line 335
    :pswitch_d
    iget-object v0, p0, Lcom/google/common/base/Joiner$3;->val$second:Ljava/lang/Object;

    goto :goto_9

    .line 331
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method public size()I
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/common/base/Joiner$3;->val$rest:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
