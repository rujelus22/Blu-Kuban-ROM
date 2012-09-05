.class Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$10;
.super Ljava/lang/Object;
.source "MenuSearch.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 590
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 593
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mLoadingDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$902(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 594
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mRequestCanceled:Z
    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$702(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;Z)Z

    .line 595
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 597
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 599
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 601
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 602
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuSearch;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 604
    :cond_37
    return-void
.end method
