.class Lcom/infraware/polarisoffice/OfficeProductInfo$2;
.super Landroid/os/Handler;
.source "OfficeProductInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/infraware/polarisoffice/OfficeProductInfo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;


# direct methods
.method constructor <init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$2;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    .line 157
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 161
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_46

    .line 183
    :cond_8
    :goto_8
    return-void

    .line 164
    :pswitch_9
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$2;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$2;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    #getter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strVersionCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$2(Lcom/infraware/polarisoffice/OfficeProductInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->checkUpdate(Ljava/lang/String;)Z

    goto :goto_8

    .line 168
    :pswitch_15
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$2;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    #getter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->updateBinder:Lcom/infraware/common/update/UpdateService;
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$3(Lcom/infraware/polarisoffice/OfficeProductInfo;)Lcom/infraware/common/update/UpdateService;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 169
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$2;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    #getter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->updateBinder:Lcom/infraware/common/update/UpdateService;
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$3(Lcom/infraware/polarisoffice/OfficeProductInfo;)Lcom/infraware/common/update/UpdateService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/common/update/UpdateService;->checkUpdate()V

    goto :goto_8

    .line 174
    :pswitch_27
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$2;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    iget-object v1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$2;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    #getter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strVersionCode:Ljava/lang/String;
    invoke-static {v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$2(Lcom/infraware/polarisoffice/OfficeProductInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onUpdateApk(Ljava/lang/String;)Z

    goto :goto_8

    .line 178
    :pswitch_33
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$2;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    #getter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->updateBinder:Lcom/infraware/common/update/UpdateService;
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$3(Lcom/infraware/polarisoffice/OfficeProductInfo;)Lcom/infraware/common/update/UpdateService;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 179
    iget-object v0, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$2;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    #getter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->updateBinder:Lcom/infraware/common/update/UpdateService;
    invoke-static {v0}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$3(Lcom/infraware/polarisoffice/OfficeProductInfo;)Lcom/infraware/common/update/UpdateService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/infraware/common/update/UpdateService;->updateProcess()V

    goto :goto_8

    .line 161
    nop

    :pswitch_data_46
    .packed-switch 0x64
        :pswitch_27
        :pswitch_33
        :pswitch_9
        :pswitch_15
    .end packed-switch
.end method
