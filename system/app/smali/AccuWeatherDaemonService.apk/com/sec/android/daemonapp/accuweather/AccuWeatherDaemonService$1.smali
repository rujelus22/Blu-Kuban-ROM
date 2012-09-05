.class Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$1;
.super Ljava/lang/Object;
.source "AccuWeatherDaemonService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;


# direct methods
.method constructor <init>(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;)V
    .registers 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$1;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService$1;->this$0:Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;

    #calls: Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->getLocationInfo()V
    invoke-static {v0}, Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;->access$000(Lcom/sec/android/daemonapp/accuweather/AccuWeatherDaemonService;)V

    .line 269
    return-void
.end method
