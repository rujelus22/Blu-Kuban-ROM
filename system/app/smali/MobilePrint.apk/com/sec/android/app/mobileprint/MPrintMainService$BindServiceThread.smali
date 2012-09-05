.class Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;
.super Ljava/lang/Thread;
.source "MPrintMainService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintMainService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindServiceThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/mobileprint/MPrintMainService;)V
    .registers 2
    .parameter

    .prologue
    .line 405
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/mobileprint/MPrintMainService;Lcom/sec/android/app/mobileprint/MPrintMainService$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 405
    invoke-direct {p0, p1}, Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;-><init>(Lcom/sec/android/app/mobileprint/MPrintMainService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    new-instance v1, Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread$1;-><init>(Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;)V

    #setter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v1}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$302(Lcom/sec/android/app/mobileprint/MPrintMainService;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 420
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.mobileprint.SAPS.PrintService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintMainService$BindServiceThread;->this$0:Lcom/sec/android/app/mobileprint/MPrintMainService;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintMainService;->mSAPSConnection:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintMainService;->access$300(Lcom/sec/android/app/mobileprint/MPrintMainService;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/mobileprint/MPrintMainService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 421
    return-void
.end method
