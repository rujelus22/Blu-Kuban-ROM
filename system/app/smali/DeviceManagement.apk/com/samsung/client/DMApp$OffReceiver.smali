.class Lcom/samsung/client/DMApp$OffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DMApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/client/DMApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/client/DMApp;


# direct methods
.method private constructor <init>(Lcom/samsung/client/DMApp;)V
    .registers 2
    .parameter

    .prologue
    .line 2781
    iput-object p1, p0, Lcom/samsung/client/DMApp$OffReceiver;->this$0:Lcom/samsung/client/DMApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/client/DMApp;Lcom/samsung/client/DMApp$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2781
    invoke-direct {p0, p1}, Lcom/samsung/client/DMApp$OffReceiver;-><init>(Lcom/samsung/client/DMApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2785
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2786
    monitor-enter p0

    .line 2787
    const/4 v0, 0x0

    :try_start_e
    sput-boolean v0, Lcom/samsung/client/SanService;->needCheckHomeScreen:Z

    .line 2788
    monitor-exit p0

    .line 2790
    :cond_11
    return-void

    .line 2788
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v0
.end method
