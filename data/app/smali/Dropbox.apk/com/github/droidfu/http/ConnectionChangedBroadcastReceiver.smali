.class public Lcom/github/droidfu/http/ConnectionChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "panda.py"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 26
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "CONN CHANGE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 27
    invoke-static {p1}, Lcom/github/droidfu/http/a;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method
