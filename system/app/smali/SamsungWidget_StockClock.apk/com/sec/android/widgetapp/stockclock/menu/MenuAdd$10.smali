.class Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$10;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->showLoadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 622
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mLoadingDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$902(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 623
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mRequestCanceled:Z
    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$702(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;Z)Z

    .line 624
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 626
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 628
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 630
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 631
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$10;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$1000(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 633
    :cond_37
    return-void
.end method
