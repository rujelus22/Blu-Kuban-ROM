.class public interface abstract Lcom/google/android/apps/googlevoice/proxy/ContextProxy;
.super Ljava/lang/Object;
.source "ContextProxy.java"


# virtual methods
.method public abstract deleteDatabase(Ljava/lang/String;)Z
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getSystemServiceProxy(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
.end method

.method public abstract sendBroadcast(Landroid/content/Intent;)V
.end method

.method public abstract unregisterReceiver(Landroid/content/BroadcastReceiver;)V
.end method
