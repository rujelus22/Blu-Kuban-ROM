.class public Lcom/google/android/apps/plus/iu/ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/iu/ConnectivityReceiver$AsyncService;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 13
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/plus/iu/ConnectivityReceiver$AsyncService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 14
    return-void
.end method
