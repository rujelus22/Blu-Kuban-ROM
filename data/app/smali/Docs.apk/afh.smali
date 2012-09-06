.class abstract Lafh;
.super Ljava/lang/Object;
.source "AbstractIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lafj;

.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Lafj;->b:Lafj;

    iput-object v0, p0, Lafh;->a:Lafj;

    .line 34
    return-void
.end method

.method private a()Z
    .registers 3

    .prologue
    .line 63
    sget-object v0, Lafj;->d:Lafj;

    iput-object v0, p0, Lafh;->a:Lafj;

    .line 64
    invoke-virtual {p0}, Lafh;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lafh;->a:Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lafh;->a:Lafj;

    sget-object v1, Lafj;->c:Lafj;

    if-eq v0, v1, :cond_16

    .line 66
    sget-object v0, Lafj;->a:Lafj;

    iput-object v0, p0, Lafh;->a:Lafj;

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lafj;->c:Lafj;

    iput-object v0, p0, Lafh;->a:Lafj;

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasNext()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lafh;->a:Lafj;

    sget-object v3, Lafj;->d:Lafj;

    if-eq v0, v3, :cond_1e

    move v0, v1

    :goto_9
    invoke-static {v0}, LafQ;->b(Z)V

    .line 52
    sget-object v0, Lafi;->a:[I

    iget-object v3, p0, Lafh;->a:Lafj;

    invoke-virtual {v3}, Lafj;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_22

    .line 59
    invoke-direct {p0}, Lafh;->a()Z

    move-result v2

    :goto_1d
    :pswitch_1d
    return v2

    :cond_1e
    move v0, v2

    .line 51
    goto :goto_9

    :pswitch_20
    move v2, v1

    .line 56
    goto :goto_1d

    .line 52
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0}, Lafh;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 75
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 77
    :cond_c
    sget-object v0, Lafj;->b:Lafj;

    iput-object v0, p0, Lafh;->a:Lafj;

    .line 78
    iget-object v0, p0, Lafh;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final remove()V
    .registers 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
