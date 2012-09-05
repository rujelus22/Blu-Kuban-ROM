.class Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;
.super Ljava/lang/Thread;
.source "MPrintSearchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintSearchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindServiceThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)V
    .registers 2
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Lcom/sec/android/app/mobileprint/MPrintSearchManager$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread$1;-><init>(Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;)V

    #setter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$102(Lcom/sec/android/app/mobileprint/MPrintSearchManager;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mAppContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$300(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.mobileprint.SAPS.DeviceManagerService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintSearchManager$BindServiceThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintSearchManager;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintSearchManager;->mSAPSConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintSearchManager;->access$100(Lcom/sec/android/app/mobileprint/MPrintSearchManager;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 220
    return-void
.end method
