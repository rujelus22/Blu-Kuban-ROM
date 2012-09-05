.class public Lcom/cooliris/media/MonitoredActivity$LifeCycleAdapter;
.super Ljava/lang/Object;
.source "MonitoredActivity.java"

# interfaces
.implements Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/MonitoredActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LifeCycleAdapter"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Lcom/cooliris/media/MonitoredActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 44
    return-void
.end method

.method public onActivityDestroyed(Lcom/cooliris/media/MonitoredActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 47
    return-void
.end method

.method public onActivityStarted(Lcom/cooliris/media/MonitoredActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 56
    return-void
.end method

.method public onActivityStopped(Lcom/cooliris/media/MonitoredActivity;)V
    .registers 2
    .parameter "activity"

    .prologue
    .line 59
    return-void
.end method
