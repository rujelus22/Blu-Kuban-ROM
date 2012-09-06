.class LwL;
.super Ljava/lang/Object;
.source "DocumentSliceImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field final synthetic a:LwK;

.field final synthetic a:[I

.field final synthetic b:I

.field final synthetic c:I


# direct methods
.method constructor <init>(LwK;II[I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, LwL;->a:LwK;

    iput p2, p0, LwL;->b:I

    iput p3, p0, LwL;->c:I

    iput-object p4, p0, LwL;->a:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iget v0, p0, LwL;->b:I

    iput v0, p0, LwL;->a:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, LwL;->a:[I

    iget v1, p0, LwL;->a:I

    aget v0, v0, v1

    .line 122
    iget v1, p0, LwL;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LwL;->a:I

    .line 123
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 116
    iget v0, p0, LwL;->a:I

    iget v1, p0, LwL;->c:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 111
    invoke-virtual {p0}, LwL;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 2

    .prologue
    .line 128
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
