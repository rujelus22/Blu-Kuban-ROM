.class final Lcom/google/common/base/I;
.super Ljava/util/AbstractList;
.source "SourceFile"


# instance fields
.field final synthetic a:[Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/google/common/base/I;->a:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/common/base/I;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/base/I;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 329
    packed-switch p1, :pswitch_data_10

    .line 335
    iget-object v0, p0, Lcom/google/common/base/I;->a:[Ljava/lang/Object;

    add-int/lit8 v1, p1, -0x2

    aget-object v0, v0, v1

    :goto_9
    return-object v0

    .line 331
    :pswitch_a
    iget-object v0, p0, Lcom/google/common/base/I;->b:Ljava/lang/Object;

    goto :goto_9

    .line 333
    :pswitch_d
    iget-object v0, p0, Lcom/google/common/base/I;->c:Ljava/lang/Object;

    goto :goto_9

    .line 329
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method public size()I
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/common/base/I;->a:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method
