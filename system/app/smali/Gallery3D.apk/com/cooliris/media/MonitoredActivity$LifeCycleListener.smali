.class public interface abstract Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;
.super Ljava/lang/Object;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/MonitoredActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LifeCycleListener"
.end annotation


# virtual methods
.method public abstract onActivityCreated(Lcom/cooliris/media/MonitoredActivity;)V
.end method

.method public abstract onActivityDestroyed(Lcom/cooliris/media/MonitoredActivity;)V
.end method

.method public abstract onActivityStarted(Lcom/cooliris/media/MonitoredActivity;)V
.end method

.method public abstract onActivityStopped(Lcom/cooliris/media/MonitoredActivity;)V
.end method
