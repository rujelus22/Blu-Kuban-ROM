.class public Lcom/cooliris/media/MonitoredActivity;
.super Landroid/app/Activity;
.source "MonitoredActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/MonitoredActivity$LifeCycleAdapter;,
        Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    .line 42
    return-void
.end method


# virtual methods
.method public addLifeCycleListener(Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/cooliris/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 66
    :goto_8
    return-void

    .line 65
    :cond_9
    iget-object v0, p0, Lcom/cooliris/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    iget-object v2, p0, Lcom/cooliris/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;

    .line 76
    .local v1, listener:Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;
    invoke-interface {v1, p0}, Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;->onActivityCreated(Lcom/cooliris/media/MonitoredActivity;)V

    goto :goto_9

    .line 78
    .end local v1           #listener:Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;
    :cond_19
    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    iget-object v2, p0, Lcom/cooliris/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;

    .line 84
    .local v1, listener:Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;
    invoke-interface {v1, p0}, Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;->onActivityDestroyed(Lcom/cooliris/media/MonitoredActivity;)V

    goto :goto_9

    .line 86
    .end local v1           #listener:Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;
    :cond_19
    return-void
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 90
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 91
    iget-object v2, p0, Lcom/cooliris/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;

    .line 92
    .local v1, listener:Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;
    invoke-interface {v1, p0}, Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;->onActivityStarted(Lcom/cooliris/media/MonitoredActivity;)V

    goto :goto_9

    .line 94
    .end local v1           #listener:Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;
    :cond_19
    return-void
.end method

.method protected onStop()V
    .registers 4

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 99
    iget-object v2, p0, Lcom/cooliris/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;

    .line 100
    .local v1, listener:Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;
    invoke-interface {v1, p0}, Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;->onActivityStopped(Lcom/cooliris/media/MonitoredActivity;)V

    goto :goto_9

    .line 102
    .end local v1           #listener:Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;
    :cond_19
    return-void
.end method

.method public removeLifeCycleListener(Lcom/cooliris/media/MonitoredActivity$LifeCycleListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/cooliris/media/MonitoredActivity;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method
