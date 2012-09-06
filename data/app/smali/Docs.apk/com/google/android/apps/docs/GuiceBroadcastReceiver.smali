.class public abstract Lcom/google/android/apps/docs/GuiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GuiceBroadcastReceiver.java"


# instance fields
.field protected a:Lck;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, LcK;

    invoke-interface {v0}, LcK;->a()Lans;

    move-result-object v0

    .line 23
    invoke-interface {v0, p0}, Lans;->a(Ljava/lang/Object;)V

    .line 25
    const-class v1, Lck;

    invoke-interface {v0, v1}, Lans;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lck;

    iput-object v0, p0, Lcom/google/android/apps/docs/GuiceBroadcastReceiver;->a:Lck;

    .line 27
    :try_start_17
    iget-object v0, p0, Lcom/google/android/apps/docs/GuiceBroadcastReceiver;->a:Lck;

    invoke-interface {v0, p1}, Lck;->a(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/docs/GuiceBroadcastReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_25

    .line 30
    iget-object v0, p0, Lcom/google/android/apps/docs/GuiceBroadcastReceiver;->a:Lck;

    invoke-interface {v0, p1}, Lck;->b(Landroid/content/Context;)V

    .line 32
    return-void

    .line 30
    :catchall_25
    move-exception v0

    iget-object v1, p0, Lcom/google/android/apps/docs/GuiceBroadcastReceiver;->a:Lck;

    invoke-interface {v1, p1}, Lck;->b(Landroid/content/Context;)V

    throw v0
.end method
