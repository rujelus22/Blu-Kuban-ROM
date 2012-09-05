.class Lcom/samsung/client/DMApp$OnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DMApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/DMApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DMApp;


# direct methods
.method private constructor <init>(Lcom/samsung/client/DMApp;)V
    .registers 2
    .parameter

    .prologue
    .line 2808
    iput-object p1, p0, Lcom/samsung/client/DMApp$OnReceiver;->this$0:Lcom/samsung/client/DMApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/client/DMApp;Lcom/samsung/client/DMApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2808
    invoke-direct {p0, p1}, Lcom/samsung/client/DMApp$OnReceiver;-><init>(Lcom/samsung/client/DMApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2810
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2811
    monitor-enter p0

    .line 2812
    const/4 v0, 0x1

    :try_start_e
    sput-boolean v0, Lcom/samsung/client/SanService;->needCheckHomeScreen:Z

    .line 2813
    monitor-exit p0

    .line 2815
    :cond_11
    return-void

    .line 2813
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v0
.end method
