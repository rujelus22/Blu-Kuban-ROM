.class Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$9;
.super Ljava/lang/Object;
.source "MenuAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 606
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$9;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 610
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$9;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mRequestCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$702(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;Z)Z

    .line 611
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$9;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 613
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd$9;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;

    #getter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;
    invoke-static {v0}, Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;->access$800(Lcom/sec/android/widgetapp/stockclock/menu/MenuAdd;)Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 615
    :cond_17
    return-void
.end method
