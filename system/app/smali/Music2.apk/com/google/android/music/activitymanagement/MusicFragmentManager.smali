.class public Lcom/google/android/music/activitymanagement/MusicFragmentManager;
.super Ljava/lang/Object;
.source "MusicFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;,
        Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;
    }
.end annotation


# instance fields
.field private mActiveFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;",
            "Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mAvailableFragments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;",
            "Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

.field private mCurrentState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

.field private mImmutableSetOfActiveFragments:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mReconfigListener:Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;

.field private final mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

.field private final mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/MusicStateController;Lcom/google/android/music/activitymanagement/MusicUIController;Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;)V
    .registers 7
    .parameter "context"
    .parameter "stateController"
    .parameter "uiController"
    .parameter "reconfigListener"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mAvailableFragments:Ljava/util/Map;

    .line 37
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mActiveFragments:Ljava/util/Map;

    .line 39
    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mImmutableSetOfActiveFragments:Ljava/util/Set;

    .line 43
    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 50
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mContext:Landroid/content/Context;

    .line 51
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->NONE:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mCurrentState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    .line 52
    iput-object p2, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    .line 53
    iput-object p3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    .line 54
    iput-object p4, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mReconfigListener:Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;

    .line 55
    return-void
.end method

.method private createNewFragment(Ljava/lang/Class;)Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;)",
            "Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;"
        }
    .end annotation

    .prologue
    .line 214
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 216
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mContext:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicFragment;

    .line 217
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mUiController:Lcom/google/android/music/activitymanagement/MusicUIController;

    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mStateController:Lcom/google/android/music/activitymanagement/MusicStateController;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/activitymanagement/MusicFragment;->setControllers(Lcom/google/android/music/activitymanagement/MusicUIController;Lcom/google/android/music/activitymanagement/MusicStateController;)V

    .line 218
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mReconfigListener:Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicFragment;->setReconfigListener(Lcom/google/android/music/activitymanagement/MusicFragment$ReconfigListener;)V

    .line 219
    new-instance v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;

    invoke-direct {v1, p0, v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;-><init>(Lcom/google/android/music/activitymanagement/MusicFragmentManager;Lcom/google/android/music/activitymanagement/MusicFragment;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2c

    return-object v1

    .line 220
    :catch_2c
    move-exception v0

    .line 221
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized transitionToState(Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;)V
    .registers 8
    .parameter "desiredState"

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mCurrentState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2c

    if-ne v3, p1, :cond_7

    .line 127
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 103
    :cond_7
    :try_start_7
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mCurrentState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    sget-object v4, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->DESTROYED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne v3, v4, :cond_2f

    .line 104
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not transition to state ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") from DESTROYED"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2c

    .line 96
    :catchall_2c
    move-exception v3

    monitor-exit p0

    throw v3

    .line 108
    :cond_2f
    :try_start_2f
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mCurrentState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    .line 111
    sget-object v3, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->DESTROYED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne p1, v3, :cond_51

    .line 112
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mAvailableFragments:Ljava/util/Map;

    .line 118
    .local v2, transitionSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;>;"
    :goto_37
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;

    .line 119
    .local v1, record:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    invoke-virtual {v1, p1, v3}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->moveToState(Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;Lcom/google/android/music/activitymanagement/MusicState;)V

    goto :goto_3f

    .line 116
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #record:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    .end local v2           #transitionSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;>;"
    :cond_51
    iget-object v2, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mActiveFragments:Ljava/util/Map;

    .restart local v2       #transitionSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;>;"
    goto :goto_37

    .line 122
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_54
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mCurrentState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    sget-object v4, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->DESTROYED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    if-ne v3, v4, :cond_5

    .line 123
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mActiveFragments:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 124
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mAvailableFragments:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 125
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mImmutableSetOfActiveFragments:Ljava/util/Set;
    :try_end_67
    .catchall {:try_start_2f .. :try_end_67} :catchall_2c

    goto :goto_5
.end method


# virtual methods
.method public declared-synchronized dispatchLowMemory()V
    .registers 8

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mAvailableFragments:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 82
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;>;"
    :cond_b
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 83
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 84
    .local v1, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mActiveFragments:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 85
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mAvailableFragments:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;

    .line 86
    .local v0, fragRec:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    sget-object v5, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->DESTROYED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->moveToState(Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 87
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_31

    goto :goto_b

    .line 81
    .end local v0           #fragRec:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    .end local v1           #fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;>;"
    :catchall_31
    move-exception v5

    monitor-exit p0

    throw v5

    .line 90
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;>;"
    :cond_34
    :try_start_34
    iget-object v5, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mAvailableFragments:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;

    .line 91
    .local v2, fragmentRec:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    #getter for: Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->access$000(Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragment;->onLowMemory()V
    :try_end_51
    .catchall {:try_start_34 .. :try_end_51} :catchall_31

    goto :goto_3e

    .line 93
    .end local v2           #fragmentRec:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    :cond_52
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getActiveFragments()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mImmutableSetOfActiveFragments:Ljava/util/Set;

    if-eqz v3, :cond_9

    .line 192
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mImmutableSetOfActiveFragments:Ljava/util/Set;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_2b

    .line 201
    :goto_7
    monitor-exit p0

    return-object v3

    .line 194
    :cond_9
    :try_start_9
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v2

    .line 195
    .local v2, setBuilder:Lcom/google/common/collect/ImmutableSet$Builder;,"Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mActiveFragments:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;

    .line 198
    .local v1, record:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    #getter for: Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v1}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->access$000(Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_2b

    goto :goto_17

    .line 191
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #record:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    .end local v2           #setBuilder:Lcom/google/common/collect/ImmutableSet$Builder;,"Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    :catchall_2b
    move-exception v3

    monitor-exit p0

    throw v3

    .line 200
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #setBuilder:Lcom/google/common/collect/ImmutableSet$Builder;,"Lcom/google/common/collect/ImmutableSet$Builder<Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    :cond_2e
    :try_start_2e
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mImmutableSetOfActiveFragments:Ljava/util/Set;

    .line 201
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mImmutableSetOfActiveFragments:Ljava/util/Set;
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_2b

    goto :goto_7
.end method

.method public declared-synchronized getFragment(Ljava/lang/Class;)Lcom/google/android/music/activitymanagement/MusicFragment;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;)",
            "Lcom/google/android/music/activitymanagement/MusicFragment;"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mActiveFragments:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    .line 206
    .local v0, record:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    if-nez v0, :cond_e

    .line 207
    const/4 v1, 0x0

    .line 209
    :goto_c
    monitor-exit p0

    return-object v1

    :cond_e
    :try_start_e
    #getter for: Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->access$000(Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;)Lcom/google/android/music/activitymanagement/MusicFragment;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    move-result-object v1

    goto :goto_c

    .line 205
    .end local v0           #record:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized launchFragments(Ljava/util/Collection;Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 7
    .parameter
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/music/activitymanagement/MusicFragment;",
            ">;>;",
            "Lcom/google/android/music/activitymanagement/MusicState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, fragments:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;>;"
    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 178
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 179
    .local v2, requiredFragment:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mAvailableFragments:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;

    .line 180
    .local v0, fragmentRec:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    if-nez v0, :cond_26

    .line 181
    invoke-direct {p0, v2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->createNewFragment(Ljava/lang/Class;)Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;

    move-result-object v0

    .line 182
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mAvailableFragments:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_26
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mActiveFragments:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mCurrentState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    invoke-virtual {v0, v3, p2}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->moveToState(Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;Lcom/google/android/music/activitymanagement/MusicState;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_31

    goto :goto_7

    .line 177
    .end local v0           #fragmentRec:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #requiredFragment:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    :catchall_31
    move-exception v3

    monitor-exit p0

    throw v3

    .line 187
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_34
    const/4 v3, 0x0

    :try_start_35
    iput-object v3, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mImmutableSetOfActiveFragments:Ljava/util/Set;
    :try_end_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_31

    .line 188
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized launchNewState(Lcom/google/android/music/activitymanagement/MusicState;Z)V
    .registers 12
    .parameter "state"
    .parameter "finishOldState"

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    if-eqz v7, :cond_e

    .line 142
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/music/activitymanagement/MusicState;->saveState(Ljava/util/Set;)V

    .line 144
    :cond_e
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    .line 145
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getRequiredFragments()Ljava/util/Set;

    move-result-object v6

    .line 148
    .local v6, requiredFragments:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;>;"
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mActiveFragments:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 149
    .local v0, activeFragmentIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;>;"
    :cond_1e
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_45

    .line 150
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;

    .line 151
    .local v1, existingFragment:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    #getter for: Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->mFragment:Lcom/google/android/music/activitymanagement/MusicFragment;
    invoke-static {v1}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->access$000(Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;)Lcom/google/android/music/activitymanagement/MusicFragment;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 153
    .local v2, existingFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    .line 156
    sget-object v7, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->PAUSED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->moveToState(Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;Lcom/google/android/music/activitymanagement/MusicState;)V

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_42

    goto :goto_1e

    .line 141
    .end local v0           #activeFragmentIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;>;"
    .end local v1           #existingFragment:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    .end local v2           #existingFragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    .end local v6           #requiredFragments:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;>;"
    :catchall_42
    move-exception v7

    monitor-exit p0

    throw v7

    .line 161
    .restart local v0       #activeFragmentIt:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;>;"
    .restart local v6       #requiredFragments:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;>;"
    :cond_45
    :try_start_45
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 162
    .local v5, requiredFragment:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mAvailableFragments:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;

    .line 163
    .local v3, fragmentRec:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    if-nez v3, :cond_68

    .line 164
    invoke-direct {p0, v5}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->createNewFragment(Ljava/lang/Class;)Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;

    move-result-object v3

    .line 165
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mAvailableFragments:Ljava/util/Map;

    invoke-interface {v7, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_68
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mActiveFragments:Ljava/util/Map;

    invoke-interface {v7, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v7, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mCurrentState:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    invoke-virtual {v3, v7, p1}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->moveToState(Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;Lcom/google/android/music/activitymanagement/MusicState;)V

    goto :goto_49

    .line 170
    .end local v3           #fragmentRec:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    .end local v5           #requiredFragment:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    :cond_73
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mImmutableSetOfActiveFragments:Ljava/util/Set;
    :try_end_76
    .catchall {:try_start_45 .. :try_end_76} :catchall_42

    .line 171
    monitor-exit p0

    return-void
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->CREATED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->transitionToState(Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;)V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    if-eqz v0, :cond_d

    .line 65
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mCurrentMusicState:Lcom/google/android/music/activitymanagement/MusicState;

    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->getActiveFragments()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/MusicState;->saveState(Ljava/util/Set;)V

    .line 67
    :cond_d
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->DESTROYED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->transitionToState(Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;)V

    .line 68
    return-void
.end method

.method public declared-synchronized onLaunchNewStateDone(Lcom/google/android/music/activitymanagement/MusicState;)V
    .registers 7
    .parameter "state"

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/music/activitymanagement/MusicState;->getRequiredFragments()Ljava/util/Set;

    move-result-object v3

    .line 131
    .local v3, requiredFragments:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 132
    .local v2, requiredFragment:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    iget-object v4, p0, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->mAvailableFragments:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;

    .line 133
    .local v0, fragmentRec:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    if-eqz v0, :cond_9

    .line 134
    #calls: Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->onLaunchNewStateDone(Lcom/google/android/music/activitymanagement/MusicState;)V
    invoke-static {v0, p1}, Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;->access$100(Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;Lcom/google/android/music/activitymanagement/MusicState;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    goto :goto_9

    .line 130
    .end local v0           #fragmentRec:Lcom/google/android/music/activitymanagement/MusicFragmentManager$MusicFragmentRecord;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #requiredFragment:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;"
    .end local v3           #requiredFragments:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;>;"
    :catchall_23
    move-exception v4

    monitor-exit p0

    throw v4

    .line 137
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #requiredFragments:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Class<+Lcom/google/android/music/activitymanagement/MusicFragment;>;>;"
    :cond_26
    monitor-exit p0

    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 77
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->PAUSED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->transitionToState(Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;)V

    .line 78
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;->RESUMED:Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;

    invoke-direct {p0, v0}, Lcom/google/android/music/activitymanagement/MusicFragmentManager;->transitionToState(Lcom/google/android/music/activitymanagement/MusicFragmentManager$State;)V

    .line 73
    return-void
.end method
