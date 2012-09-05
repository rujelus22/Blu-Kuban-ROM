.class public Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;
.super Ljava/lang/Object;
.source "PassagePaginationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/util/PassagePaginationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PageBounds"
.end annotation


# instance fields
.field public final pageBottom:I

.field public final pageTop:I

.field final synthetic this$0:Lcom/google/android/apps/books/util/PassagePaginationResult;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/books/util/PassagePaginationResult;II)V
    .registers 4
    .parameter
    .parameter "pageTop"
    .parameter "pageBottom"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->this$0:Lcom/google/android/apps/books/util/PassagePaginationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p2, p0, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->pageTop:I

    .line 34
    iput p3, p0, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->pageBottom:I

    .line 35
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 3

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->pageBottom:I

    iget v1, p0, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->pageTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public intersects(II)Z
    .registers 4
    .parameter "top"
    .parameter "bottom"

    .prologue
    .line 45
    iget v0, p0, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->pageTop:I

    if-ge v0, p2, :cond_a

    iget v0, p0, Lcom/google/android/apps/books/util/PassagePaginationResult$PageBounds;->pageBottom:I

    if-ge p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
