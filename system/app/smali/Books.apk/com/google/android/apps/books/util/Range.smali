.class public Lcom/google/android/apps/books/util/Range;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field public final end:I

.field public final start:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/google/android/apps/books/util/Range;->start:I

    .line 19
    iput p2, p0, Lcom/google/android/apps/books/util/Range;->end:I

    .line 20
    return-void
.end method
