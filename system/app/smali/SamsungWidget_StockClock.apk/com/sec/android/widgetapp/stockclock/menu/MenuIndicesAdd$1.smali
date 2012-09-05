.class Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$1;
.super Ljava/lang/Object;
.source "MenuIndicesAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->showRefreshDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;)V
    .registers 2
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$1;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 102
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$1;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRequestCanceled:Z
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->access$002(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;Z)Z

    .line 103
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$1;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    if-eqz v0, :cond_13

    .line 105
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$1;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 107
    :cond_13
    return-void
.end method
