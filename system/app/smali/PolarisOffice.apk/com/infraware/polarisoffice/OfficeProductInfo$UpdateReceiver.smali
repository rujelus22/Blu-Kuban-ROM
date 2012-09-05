.class public Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OfficeProductInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/polarisoffice/OfficeProductInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;


# direct methods
.method public constructor <init>(Lcom/infraware/polarisoffice/OfficeProductInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x2

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_7e

    .line 211
    const-string v2, "com.infraware.polarisoffice.ACTION_DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 212
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 213
    .local v1, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const-string v3, "APKFileNameForInstall"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/infraware/polarisoffice/OfficeProductInfo;->m_strFileName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/infraware/polarisoffice/OfficeProductInfo;->access$1(Lcom/infraware/polarisoffice/OfficeProductInfo;Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onStopService(I)Z

    .line 231
    .end local v1           #bundle:Landroid/os/Bundle;
    :cond_24
    :goto_24
    return-void

    .line 215
    :cond_25
    const-string v2, "com.infraware.polarisoffice.ACTION_LATEST_VERSION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 216
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onStopService(I)Z

    goto :goto_24

    .line 217
    :cond_33
    const-string v2, "com.infraware.polarisoffice.ACTION_DISABLE_CONFIRM_VERSION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 218
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onStopService(I)Z

    goto :goto_24

    .line 219
    :cond_42
    const-string v2, "com.infraware.polarisoffice.ACTION_CONNECTION_ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 220
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onStopService(I)Z

    goto :goto_24

    .line 221
    :cond_51
    const-string v2, "com.infraware.polarisoffice.ACTION_NETWORK_ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    .line 222
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onStopService(I)Z

    goto :goto_24

    .line 223
    :cond_60
    const-string v2, "com.infraware.polarisoffice.ACTION_FILE_WRITE_ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 224
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onStopService(I)Z

    goto :goto_24

    .line 225
    :cond_6f
    const-string v2, "com.infraware.polarisoffice.ACTION_UPDATE_AVAILABE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 226
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onStopService(I)Z

    goto :goto_24

    .line 230
    :cond_7e
    iget-object v2, p0, Lcom/infraware/polarisoffice/OfficeProductInfo$UpdateReceiver;->this$0:Lcom/infraware/polarisoffice/OfficeProductInfo;

    invoke-virtual {v2, v3}, Lcom/infraware/polarisoffice/OfficeProductInfo;->onStopService(I)Z

    goto :goto_24
.end method
