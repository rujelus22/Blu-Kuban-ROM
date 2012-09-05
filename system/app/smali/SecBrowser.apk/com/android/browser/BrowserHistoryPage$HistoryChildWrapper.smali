.class Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;
.super Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistoryChildWrapper"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mSelectedGroup:I


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;Landroid/app/Activity;)V
    .registers 3
    .parameter "adapter"
    .parameter "activity"

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;-><init>(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)V

    .line 560
    iput-object p2, p0, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mActivity:Landroid/app/Activity;

    .line 561
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    iget v1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mSelectedGroup:I

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getChildrenCount(I)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter "position"

    .prologue
    .line 577
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .parameter "position"

    .prologue
    .line 582
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    iget v1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mSelectedGroup:I

    const/4 v3, 0x0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method setSelectedGroup(I)V
    .registers 3
    .parameter "groupPosition"

    .prologue
    .line 564
    iput p1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mSelectedGroup:I

    .line 565
    invoke-virtual {p0}, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;->notifyDataSetChanged()V

    .line 566
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_e

    .line 567
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryChildWrapper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    .line 568
    :cond_e
    return-void
.end method
