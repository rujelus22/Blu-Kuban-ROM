.class Lcom/infraware/polarisoffice/common/FreeDrawToolbar$2;
.super Landroid/os/Handler;
.source "FreeDrawToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/common/FreeDrawToolbar;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$2;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    .line 192
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 194
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 202
    :cond_5
    :goto_5
    return-void

    .line 196
    :pswitch_6
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$2;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mToolbarPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$2;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    iget-object v0, v0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->mToolbarPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/infraware/polarisoffice/common/FreeDrawToolbar$2;->this$0:Lcom/infraware/polarisoffice/common/FreeDrawToolbar;

    invoke-virtual {v0}, Lcom/infraware/polarisoffice/common/FreeDrawToolbar;->closeToolBar()V

    goto :goto_5

    .line 194
    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
