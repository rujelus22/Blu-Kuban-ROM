.class abstract LahF;
.super Lalv;
.source "AbstractIndexedListIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lalv",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:I


# direct methods
.method protected constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LahF;-><init>(II)V

    .line 55
    return-void
.end method

.method protected constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lalv;-><init>()V

    .line 69
    invoke-static {p2, p1}, LafQ;->b(II)I

    .line 70
    iput p1, p0, LahF;->a:I

    .line 71
    iput p2, p0, LahF;->b:I

    .line 72
    return-void
.end method


# virtual methods
.method protected abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .registers 3

    .prologue
    .line 76
    iget v0, p0, LahF;->b:I

    iget v1, p0, LahF;->a:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final hasPrevious()Z
    .registers 2

    .prologue
    .line 94
    iget v0, p0, LahF;->b:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0}, LahF;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 82
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 84
    :cond_c
    iget v0, p0, LahF;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, LahF;->b:I

    invoke-virtual {p0, v0}, LahF;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final nextIndex()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, LahF;->b:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, LahF;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_c

    .line 100
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 102
    :cond_c
    iget v0, p0, LahF;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, LahF;->b:I

    invoke-virtual {p0, v0}, LahF;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, LahF;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
