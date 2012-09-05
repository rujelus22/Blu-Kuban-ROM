.class Lcom/arcsoft/quickview/QuickViewActivity$8;
.super Landroid/os/Handler;
.source "QuickViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/quickview/QuickViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/arcsoft/quickview/QuickViewActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/quickview/QuickViewActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/arcsoft/quickview/QuickViewActivity$8;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$8;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$400(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$8;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #getter for: Lcom/arcsoft/quickview/QuickViewActivity;->mDeleteDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$400(Lcom/arcsoft/quickview/QuickViewActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1045
    :goto_14
    return-void

    .line 1042
    :cond_15
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$8;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #calls: Lcom/arcsoft/quickview/QuickViewActivity;->prepareDeleteAnimation()V
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$500(Lcom/arcsoft/quickview/QuickViewActivity;)V

    .line 1043
    iget-object v0, p0, Lcom/arcsoft/quickview/QuickViewActivity$8;->this$0:Lcom/arcsoft/quickview/QuickViewActivity;

    #calls: Lcom/arcsoft/quickview/QuickViewActivity;->showDelDialog()V
    invoke-static {v0}, Lcom/arcsoft/quickview/QuickViewActivity;->access$600(Lcom/arcsoft/quickview/QuickViewActivity;)V

    .line 1044
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_14
.end method
