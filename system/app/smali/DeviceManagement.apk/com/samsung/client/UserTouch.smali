.class public Lcom/samsung/client/UserTouch;
.super Landroid/app/Activity;
.source "UserTouch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/client/UserTouch$1;,
        Lcom/samsung/client/UserTouch$OffReceiver;,
        Lcom/samsung/client/UserTouch$OnReceiver;
    }
.end annotation


# static fields
.field private static screenTouched:Z


# instance fields
.field off:Landroid/content/BroadcastReceiver;

.field private offAfterCreated:Z

.field on:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/client/UserTouch;->screenTouched:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/samsung/client/UserTouch;->off:Landroid/content/BroadcastReceiver;

    .line 14
    iput-object v0, p0, Lcom/samsung/client/UserTouch;->on:Landroid/content/BroadcastReceiver;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/client/UserTouch;->offAfterCreated:Z

    .line 47
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/client/UserTouch;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/samsung/client/UserTouch;->offAfterCreated:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/client/UserTouch;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/samsung/client/UserTouch;->offAfterCreated:Z

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 22
    const-string v0, "UserTouch"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/client/DMApp;->setCurrentActivity(Landroid/app/Activity;)V

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/client/UserTouch;->screenTouched:Z

    .line 27
    new-instance v0, Lcom/samsung/client/UserTouch$OnReceiver;

    invoke-direct {v0, p0, v2}, Lcom/samsung/client/UserTouch$OnReceiver;-><init>(Lcom/samsung/client/UserTouch;Lcom/samsung/client/UserTouch$1;)V

    iput-object v0, p0, Lcom/samsung/client/UserTouch;->on:Landroid/content/BroadcastReceiver;

    .line 28
    new-instance v0, Lcom/samsung/client/UserTouch$OffReceiver;

    invoke-direct {v0, p0, v2}, Lcom/samsung/client/UserTouch$OffReceiver;-><init>(Lcom/samsung/client/UserTouch;Lcom/samsung/client/UserTouch$1;)V

    iput-object v0, p0, Lcom/samsung/client/UserTouch;->off:Landroid/content/BroadcastReceiver;

    .line 29
    iget-object v0, p0, Lcom/samsung/client/UserTouch;->off:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/UserTouch;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 80
    const-string v0, "UserTouch"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 82
    iget-object v0, p0, Lcom/samsung/client/UserTouch;->on:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/client/UserTouch;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method public onStop()V
    .registers 3

    .prologue
    .line 73
    const-string v0, "UserTouch"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 75
    iget-object v0, p0, Lcom/samsung/client/UserTouch;->on:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/client/UserTouch;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/client/UserTouch;->off:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/client/UserTouch;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 77
    return-void
.end method

.method public onUserInteraction()V
    .registers 3

    .prologue
    .line 64
    const-string v0, "UserTouch"

    const-string v1, "onUserInteraction"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-boolean v0, Lcom/samsung/client/UserTouch;->screenTouched:Z

    if-nez v0, :cond_15

    .line 67
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/client/DMApp;->bringUItoForeground(Landroid/app/Activity;)V

    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/client/UserTouch;->screenTouched:Z

    .line 70
    :cond_15
    return-void
.end method

.method public receiveShow()V
    .registers 2

    .prologue
    .line 59
    invoke-static {}, Lcom/samsung/client/DMApp;->getInstance()Lcom/samsung/client/DMApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/client/DMApp;->bringUItoForeground(Landroid/app/Activity;)V

    .line 60
    return-void
.end method
