.class Lcom/infraware/polarisoffice/OfficeMainActivity$2;
.super Landroid/os/Handler;
.source "OfficeMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeMainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/OfficeMainActivity;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/OfficeMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeMainActivity$2;->this$0:Lcom/infraware/polarisoffice/OfficeMainActivity;

    .line 140
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 151
    :cond_8
    :goto_8
    return-void

    .line 146
    :pswitch_9
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity$2;->this$0:Lcom/infraware/polarisoffice/OfficeMainActivity;

    #getter for: Lcom/infraware/polarisoffice/OfficeMainActivity;->updateBinder:Lcom/infraware/common/update/UpdateService;
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->access$1(Lcom/infraware/polarisoffice/OfficeMainActivity;)Lcom/infraware/common/update/UpdateService;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 147
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeMainActivity$2;->this$0:Lcom/infraware/polarisoffice/OfficeMainActivity;

    #getter for: Lcom/infraware/polarisoffice/OfficeMainActivity;->updateBinder:Lcom/infraware/common/update/UpdateService;
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeMainActivity;->access$1(Lcom/infraware/polarisoffice/OfficeMainActivity;)Lcom/infraware/common/update/UpdateService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/common/update/UpdateService;->checkUpdate()V

    goto :goto_8

    .line 144
    nop

    :pswitch_data_1c
    .packed-switch 0x66
        :pswitch_9
    .end packed-switch
.end method
