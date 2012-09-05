.class Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$1;
.super Ljava/lang/Object;
.source "MPrintSettingSplitActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "className"
    .parameter "service"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    check-cast p2, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintServiceBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/sec/android/app/mobileprint/MPrintMainService$PrintServiceBinder;->getService()Lcom/sec/android/app/mobileprint/MPrintMainService;

    move-result-object v1

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->access$002(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService;

    .line 79
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSettingSplitActivity : onServiceConnected - MPrintService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "className"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity$1;->this$0:Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->mBoundService:Lcom/sec/android/app/mobileprint/MPrintMainService;
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;->access$002(Lcom/sec/android/app/mobileprint/MPrintSettingSplitActivity;Lcom/sec/android/app/mobileprint/MPrintMainService;)Lcom/sec/android/app/mobileprint/MPrintMainService;

    .line 84
    const-string v0, "MobilePrint"

    const-string v1, "MPrintSettingSplitActivity : onServiceDisconnected - MPrintService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method
