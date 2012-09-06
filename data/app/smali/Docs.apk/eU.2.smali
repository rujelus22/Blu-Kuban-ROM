.class public final LeU;
.super Ljava/lang/Object;
.source "ErrorNotificationActivity.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, LeU;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 129
    const-string v0, "CAKEMIX_CRASHED"

    invoke-static {p2}, LZA;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, LeU;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a(Landroid/content/Context;Ljava/lang/Throwable;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    iget-object v1, p0, LeU;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 133
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 134
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 135
    return-void
.end method
