.class Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$9;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->showLoadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)V
    .registers 2
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$9;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 581
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$9;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mRequestCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$702(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;Z)Z

    .line 582
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$9;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 584
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$9;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 586
    :cond_17
    return-void
.end method
