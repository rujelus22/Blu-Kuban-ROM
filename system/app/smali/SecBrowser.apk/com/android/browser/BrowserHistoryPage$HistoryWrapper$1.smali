.class Lcom/android/browser/BrowserHistoryPage$HistoryWrapper$1;
.super Landroid/database/DataSetObserver;
.source "BrowserHistoryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;)V
    .registers 2
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper$1;->this$0:Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    .prologue
    .line 508
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 509
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper$1;->this$0:Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;->notifyDataSetChanged()V

    .line 510
    return-void
.end method

.method public onInvalidated()V
    .registers 2

    .prologue
    .line 514
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 515
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper$1;->this$0:Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$HistoryWrapper;->notifyDataSetInvalidated()V

    .line 516
    return-void
.end method
