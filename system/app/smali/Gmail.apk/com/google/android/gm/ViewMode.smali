.class public Lcom/google/android/gm/ViewMode;
.super Ljava/lang/Object;
.source "ViewMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ViewMode$ModeChangeListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gm/ViewMode$ModeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field private final mTwoPane:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gm/ViewMode;->mMode:I

    .line 30
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ViewMode;->mListeners:Ljava/util/ArrayList;

    .line 33
    invoke-static {p1}, Lcom/google/android/gm/Utils;->useTabletUI(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gm/ViewMode;->mTwoPane:Z

    .line 34
    return-void
.end method

.method private dispatchModeChange()V
    .registers 5

    .prologue
    .line 140
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gm/ViewMode;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 141
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/ViewMode$ModeChangeListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gm/ViewMode$ModeChangeListener;

    .line 142
    .local v2, listener:Lcom/google/android/gm/ViewMode$ModeChangeListener;
    invoke-interface {v2, p0}, Lcom/google/android/gm/ViewMode$ModeChangeListener;->onViewModeChanged(Lcom/google/android/gm/ViewMode;)V

    goto :goto_b

    .line 144
    .end local v2           #listener:Lcom/google/android/gm/ViewMode$ModeChangeListener;
    :cond_1b
    return-void
.end method

.method private setModeInternal(I)Z
    .registers 3
    .parameter "mode"

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/gm/ViewMode;->mMode:I

    if-ne v0, p1, :cond_6

    .line 66
    const/4 v0, 0x0

    .line 71
    :goto_5
    return v0

    .line 69
    :cond_6
    iput p1, p0, Lcom/google/android/gm/ViewMode;->mMode:I

    .line 70
    invoke-direct {p0}, Lcom/google/android/gm/ViewMode;->dispatchModeChange()V

    .line 71
    const/4 v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public addListener(Lcom/google/android/gm/ViewMode$ModeChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/gm/ViewMode;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/gm/ViewMode;->mMode:I

    return v0
.end method

.method public handleRestore(Landroid/os/Bundle;)V
    .registers 5
    .parameter "inState"

    .prologue
    .line 105
    const-string v1, "view-mode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 106
    .local v0, mode:I
    invoke-direct {p0, v0}, Lcom/google/android/gm/ViewMode;->setModeInternal(I)Z

    .line 107
    return-void
.end method

.method public handleSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 101
    const-string v0, "view-mode"

    iget v1, p0, Lcom/google/android/gm/ViewMode;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    return-void
.end method

.method public isConversationListMode()Z
    .registers 3

    .prologue
    .line 93
    iget v0, p0, Lcom/google/android/gm/ViewMode;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isConversationMode()Z
    .registers 3

    .prologue
    .line 89
    iget v0, p0, Lcom/google/android/gm/ViewMode;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isLabelListMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 97
    iget v1, p0, Lcom/google/android/gm/ViewMode;->mMode:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isTwoPane()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/google/android/gm/ViewMode;->mTwoPane:Z

    return v0
.end method

.method public removeListener(Lcom/google/android/gm/ViewMode$ModeChangeListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/gm/ViewMode;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public transitionToConversationListMode()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google/android/gm/ViewMode;->setModeInternal(I)Z

    move-result v0

    return v0
.end method

.method public transitionToConversationMode()Z
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/google/android/gm/ViewMode;->setModeInternal(I)Z

    move-result v0

    return v0
.end method

.method public transitionToLabelListMode()Z
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gm/ViewMode;->setModeInternal(I)Z

    move-result v0

    return v0
.end method
