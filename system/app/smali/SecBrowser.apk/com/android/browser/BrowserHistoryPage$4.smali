.class Lcom/android/browser/BrowserHistoryPage$4;
.super Ljava/lang/Object;
.source "BrowserHistoryPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserHistoryPage;->promptToClearTodayHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserHistoryPage;

.field final synthetic val$clearToday:Lcom/android/browser/BrowserHistoryPage$ClearTodayHistoryTask;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserHistoryPage;Lcom/android/browser/BrowserHistoryPage$ClearTodayHistoryTask;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/android/browser/BrowserHistoryPage$4;->this$0:Lcom/android/browser/BrowserHistoryPage;

    iput-object p2, p0, Lcom/android/browser/BrowserHistoryPage$4;->val$clearToday:Lcom/android/browser/BrowserHistoryPage$ClearTodayHistoryTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 344
    const/4 v0, -0x1

    if-ne p2, v0, :cond_8

    .line 345
    iget-object v0, p0, Lcom/android/browser/BrowserHistoryPage$4;->val$clearToday:Lcom/android/browser/BrowserHistoryPage$ClearTodayHistoryTask;

    invoke-virtual {v0}, Lcom/android/browser/BrowserHistoryPage$ClearTodayHistoryTask;->start()V

    .line 347
    :cond_8
    return-void
.end method
