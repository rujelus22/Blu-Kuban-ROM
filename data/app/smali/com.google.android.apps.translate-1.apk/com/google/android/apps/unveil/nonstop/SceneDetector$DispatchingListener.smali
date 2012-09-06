.class public final Lcom/google/android/apps/unveil/nonstop/SceneDetector$DispatchingListener;
.super Ljava/lang/Object;
.source "SceneDetector.java"

# interfaces
.implements Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/nonstop/SceneDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DispatchingListener"
.end annotation


# instance fields
.field private final delegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, delegates:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/google/android/apps/unveil/nonstop/SceneDetector$DispatchingListener;->delegates:Ljava/util/List;

    .line 116
    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/apps/unveil/results/ResultItem;)V
    .registers 5
    .parameter "resultItem"

    .prologue
    .line 127
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/SceneDetector$DispatchingListener;->delegates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;

    .line 128
    .local v1, l:Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;
    invoke-interface {v1, p1}, Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;->onResult(Lcom/google/android/apps/unveil/results/ResultItem;)V

    goto :goto_6

    .line 130
    .end local v1           #l:Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;
    :cond_16
    return-void
.end method

.method public onSceneChanged()V
    .registers 4

    .prologue
    .line 120
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/SceneDetector$DispatchingListener;->delegates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;

    .line 121
    .local v1, l:Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;
    invoke-interface {v1}, Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;->onSceneChanged()V

    goto :goto_6

    .line 123
    .end local v1           #l:Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;
    :cond_16
    return-void
.end method

.method public onScenePushed()V
    .registers 4

    .prologue
    .line 134
    iget-object v2, p0, Lcom/google/android/apps/unveil/nonstop/SceneDetector$DispatchingListener;->delegates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;

    .line 135
    .local v1, l:Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;
    invoke-interface {v1}, Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;->onScenePushed()V

    goto :goto_6

    .line 137
    .end local v1           #l:Lcom/google/android/apps/unveil/nonstop/SceneDetector$OnEventListener;
    :cond_16
    return-void
.end method
