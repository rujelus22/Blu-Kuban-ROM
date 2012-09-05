.class Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;
.super Ljava/lang/Object;
.source "SecBrowserAbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/SecBrowserAbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/browser/SecBrowserAbsSpinner;


# direct methods
.method constructor <init>(Lcom/android/browser/SecBrowserAbsSpinner;)V
    .registers 3
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;->this$0:Lcom/android/browser/SecBrowserAbsSpinner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 450
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .registers 7

    .prologue
    .line 469
    iget-object v2, p0, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    .line 470
    .local v2, scrapHeap:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 471
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 472
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 473
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_17

    .line 474
    iget-object v4, p0, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;->this$0:Lcom/android/browser/SecBrowserAbsSpinner;

    const/4 v5, 0x1

    #calls: Lcom/android/browser/SecBrowserAbsSpinner;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v4, v3, v5}, Lcom/android/browser/SecBrowserAbsSpinner;->access$100(Lcom/android/browser/SecBrowserAbsSpinner;Landroid/view/View;Z)V

    .line 471
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 477
    .end local v3           #view:Landroid/view/View;
    :cond_1a
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 478
    return-void
.end method

.method get(I)Landroid/view/View;
    .registers 4
    .parameter "position"

    .prologue
    .line 458
    iget-object v1, p0, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 459
    .local v0, result:Landroid/view/View;
    if-eqz v0, :cond_f

    .line 461
    iget-object v1, p0, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 465
    :cond_f
    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .registers 4
    .parameter "position"
    .parameter "v"

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/browser/SecBrowserAbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    return-void
.end method
