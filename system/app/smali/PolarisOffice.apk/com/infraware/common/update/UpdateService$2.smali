.class Lcom/infraware/common/update/UpdateService$2;
.super Ljava/lang/Object;
.source "UpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/update/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/update/UpdateService;


# direct methods
.method constructor <init>(Lcom/infraware/common/update/UpdateService;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/common/update/UpdateService$2;->this$0:Lcom/infraware/common/update/UpdateService;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 144
    iget-object v6, p0, Lcom/infraware/common/update/UpdateService$2;->this$0:Lcom/infraware/common/update/UpdateService;

    iget-object v7, p0, Lcom/infraware/common/update/UpdateService$2;->this$0:Lcom/infraware/common/update/UpdateService;

    iget-object v7, v7, Lcom/infraware/common/update/UpdateService;->mstrCheckVersionURL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/infraware/common/update/UpdateService;->getVersionCheck(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, intent:Landroid/content/Intent;
    const/4 v4, 0x0

    .line 147
    .local v4, newVersion:I
    const/4 v1, 0x0

    .line 148
    .local v1, curVersion:I
    sget-object v6, Lcom/infraware/common/update/UpdateService;->mstrNewVersion:Ljava/lang/String;

    if-eqz v6, :cond_20

    .line 149
    sget-object v6, Lcom/infraware/common/update/UpdateService;->mstrNewVersion:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 150
    iget-object v6, p0, Lcom/infraware/common/update/UpdateService$2;->this$0:Lcom/infraware/common/update/UpdateService;

    invoke-virtual {v6}, Lcom/infraware/common/update/UpdateService;->loadCurrentVersion()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, strCurVersionCheck:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 154
    .end local v5           #strCurVersionCheck:Ljava/lang/String;
    :cond_20
    const/4 v3, 0x0

    .line 155
    .local v3, newAndroidMajorVersion:I
    const/4 v0, 0x0

    .line 156
    .local v0, curAndroidMajorVersion:I
    sget-object v6, Lcom/infraware/common/update/UpdateService;->mstrNewAndroidMajorVersion:Ljava/lang/String;

    if-eqz v6, :cond_32

    .line 157
    sget-object v6, Lcom/infraware/common/update/UpdateService;->mstrNewAndroidMajorVersion:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 158
    sget-object v6, Lcom/infraware/common/update/UpdateService;->mstrCurAndroidMajorVersion:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 161
    :cond_32
    if-eqz v3, :cond_6a

    if-gt v3, v0, :cond_6a

    .line 162
    if-le v4, v1, :cond_58

    .line 163
    iget-object v6, p0, Lcom/infraware/common/update/UpdateService$2;->this$0:Lcom/infraware/common/update/UpdateService;

    iget-boolean v6, v6, Lcom/infraware/common/update/UpdateService;->mDownloadStop:Z

    if-eqz v6, :cond_50

    .line 164
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v6, "com.infraware.polarisoffice.ACTION_USER_CANCEL"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .restart local v2       #intent:Landroid/content/Intent;
    :goto_45
    iget-object v6, p0, Lcom/infraware/common/update/UpdateService$2;->this$0:Lcom/infraware/common/update/UpdateService;

    invoke-virtual {v6, v2}, Lcom/infraware/common/update/UpdateService;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    iget-object v6, p0, Lcom/infraware/common/update/UpdateService$2;->this$0:Lcom/infraware/common/update/UpdateService;

    invoke-virtual {v6}, Lcom/infraware/common/update/UpdateService;->stopSelf()V

    .line 178
    return-void

    .line 166
    :cond_50
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v6, "com.infraware.polarisoffice.ACTION_UPDATE_AVAILABE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_45

    .line 168
    :cond_58
    if-nez v4, :cond_62

    .line 169
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v6, "com.infraware.polarisoffice.ACTION_NETWORK_ERROR"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_45

    .line 171
    :cond_62
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v6, "com.infraware.polarisoffice.ACTION_LATEST_VERSION"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_45

    .line 174
    :cond_6a
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    const-string v6, "com.infraware.polarisoffice.ACTION_LATEST_VERSION"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_45
.end method
