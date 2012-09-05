.class Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;
.super Ljava/lang/Object;
.source "DevModeHandlerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->startProcessing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/w/installer/dev/DevModeHandlerActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$dp:Lcom/sprint/w/installer/dev/DeveloperPermissions;


# direct methods
.method constructor <init>(Lcom/sprint/w/installer/dev/DevModeHandlerActivity;Landroid/app/ProgressDialog;Lcom/sprint/w/installer/dev/DeveloperPermissions;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;->this$0:Lcom/sprint/w/installer/dev/DevModeHandlerActivity;

    iput-object p2, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p3, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;->val$dp:Lcom/sprint/w/installer/dev/DeveloperPermissions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 52
    iget-object v3, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;->this$0:Lcom/sprint/w/installer/dev/DevModeHandlerActivity;

    invoke-virtual {v3}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 53
    .local v0, mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, meid:Ljava/lang/String;
    iget-object v3, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;->this$0:Lcom/sprint/w/installer/dev/DevModeHandlerActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://sprintdevelopersandbox.com/Warhol/resources/warhols/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sprint/w/installer/util/Util;->getMdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;->this$0:Lcom/sprint/w/installer/dev/DevModeHandlerActivity;

    iget-object v5, v5, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->secureToken:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_61

    .end local v1           #meid:Ljava/lang/String;
    :goto_3d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->connect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, serverResponse:Ljava/lang/String;
    iget-object v3, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 60
    if-eqz v2, :cond_64

    .line 61
    iget-object v3, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;->val$dp:Lcom/sprint/w/installer/dev/DeveloperPermissions;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/sprint/w/installer/dev/DeveloperPermissions;->loadFromJSON(Ljava/lang/String;Z)V

    .line 62
    iget-object v3, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;->this$0:Lcom/sprint/w/installer/dev/DevModeHandlerActivity;

    new-instance v4, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1$1;

    invoke-direct {v4, p0}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1$1;-><init>(Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;)V

    invoke-virtual {v3, v4}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 76
    :goto_60
    return-void

    .line 57
    .end local v2           #serverResponse:Ljava/lang/String;
    .restart local v1       #meid:Ljava/lang/String;
    :cond_61
    const-string v1, "null"

    goto :goto_3d

    .line 69
    .end local v1           #meid:Ljava/lang/String;
    .restart local v2       #serverResponse:Ljava/lang/String;
    :cond_64
    iget-object v3, p0, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;->this$0:Lcom/sprint/w/installer/dev/DevModeHandlerActivity;

    new-instance v4, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1$2;

    invoke-direct {v4, p0}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1$2;-><init>(Lcom/sprint/w/installer/dev/DevModeHandlerActivity$1;)V

    invoke-virtual {v3, v4}, Lcom/sprint/w/installer/dev/DevModeHandlerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_60
.end method
