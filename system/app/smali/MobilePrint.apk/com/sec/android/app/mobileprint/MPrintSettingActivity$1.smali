.class Lcom/sec/android/app/mobileprint/MPrintSettingActivity$1;
.super Ljava/lang/Object;
.source "MPrintSettingActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    check-cast p2, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintServiceBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintServiceBinder;->getService()Lcom/sec/android/app/mobileprint/MPrintMainService;

    move-result-object v1

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$002(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService;

    .line 93
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSettingActivity : onServiceConnected - MPrintService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingActivity$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingActivity;->access$002(Lcom/sec/android/app/mobileprint/MPrintSettingActivity;Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService;

    .line 98
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSettingActivity : onServiceDisconnected - MPrintService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method
