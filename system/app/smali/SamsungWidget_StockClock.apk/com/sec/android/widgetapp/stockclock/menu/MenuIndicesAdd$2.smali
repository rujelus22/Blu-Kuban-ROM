.class Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$2;
.super Ljava/lang/Object;
.source "MenuIndicesAdd.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 111
    iput-object p1, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$2;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5
    .parameter "dialog"

    .prologue
    const/4 v2, 0x1

    .line 114
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$2;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRequestCanceled:Z
    invoke-static {v0, v2}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->access$002(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;Z)Z

    .line 115
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$2;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mRefreshDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->access$102(Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 116
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$2;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    if-eqz v0, :cond_19

    .line 118
    iget-object v0, p0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd$2;->this$0:Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;

    iget-object v0, v0, Lcom/sec/android/widgetapp/stockclock/menu/MenuIndicesAdd;->mHttpDataManager:Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/widgetapp/stockclock/http/HttpDataManager;->setCancelState(Z)V

    .line 120
    :cond_19
    return-void
.end method
