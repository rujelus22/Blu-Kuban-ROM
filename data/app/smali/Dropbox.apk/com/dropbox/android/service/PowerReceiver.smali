.class public Lcom/dropbox/android/service/PowerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "panda.py"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 45
    const-class v0, Lcom/dropbox/android/service/PowerReceiver;

    invoke-static {p0, v0, p1}, Lcom/dropbox/android/util/aI;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-static {p0, p2}, Lcom/dropbox/android/util/h;->a(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 20
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dropbox/android/service/C;

    invoke-direct {v1, p0, p1}, Lcom/dropbox/android/service/C;-><init>(Lcom/dropbox/android/service/PowerReceiver;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 35
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 37
    return-void
.end method
