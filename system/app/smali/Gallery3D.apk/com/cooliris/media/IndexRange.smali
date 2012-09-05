.class public final Lcom/cooliris/media/IndexRange;
.super Ljava/lang/Object;
.source "IndexRange.java"


# instance fields
.field public begin:I

.field public end:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v0, p0, Lcom/cooliris/media/IndexRange;->begin:I

    .line 27
    iput v0, p0, Lcom/cooliris/media/IndexRange;->end:I

    .line 28
    return-void
.end method


# virtual methods
.method public set(II)V
    .registers 3
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 31
    iput p1, p0, Lcom/cooliris/media/IndexRange;->begin:I

    .line 32
    iput p2, p0, Lcom/cooliris/media/IndexRange;->end:I

    .line 33
    return-void
.end method
