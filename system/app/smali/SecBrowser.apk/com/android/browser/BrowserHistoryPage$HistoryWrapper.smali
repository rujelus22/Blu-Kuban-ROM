.class abstract Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;
.super Landroid/widget/BaseAdapter;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserHistoryPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "HistoryWrapper"
.end annotation


# instance fields
.field protected mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

.field private mObserver:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;)V
    .registers 4
    .parameter "adapter"

    .prologue
    .line 519
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 505
    new-instance v0, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper$1;-><init>(Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;)V

    iput-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;->mObserver:Landroid/database/DataSetObserver;

    .line 520
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    .line 521
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;->mAdapter:Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;

    iget-object v1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserHistoryPage$HistoryAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 522
    return-void
.end method
