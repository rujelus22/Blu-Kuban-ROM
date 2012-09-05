.class public abstract Lcom/google/android/music/menu/MusicMenu;
.super Ljava/lang/Object;
.source "MusicMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/menu/MusicMenu$Callback;
    }
.end annotation


# instance fields
.field protected mCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

.field protected mContext:Landroid/content/Context;

.field protected mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/menu/MusicMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V
    .registers 5
    .parameter "context"
    .parameter "callback"
    .parameter "rootView"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    .line 27
    iput-object p1, p0, Lcom/google/android/music/menu/MusicMenu;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/google/android/music/menu/MusicMenu;->mCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    .line 29
    iput-object p3, p0, Lcom/google/android/music/menu/MusicMenu;->mRootView:Landroid/view/View;

    .line 30
    return-void
.end method


# virtual methods
.method public abstract add(III)Lcom/google/android/music/menu/MusicMenuItem;
.end method

.method public abstract close()V
.end method

.method protected findInsertIndex(I)I
    .registers 5
    .parameter "order"

    .prologue
    .line 117
    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_1e

    .line 118
    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicMenuItem;

    .line 119
    .local v1, item:Lcom/google/android/music/menu/MusicMenuItem;
    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenuItem;->getOrder()I

    move-result v2

    if-gt v2, p1, :cond_1b

    .line 120
    add-int/lit8 v2, v0, 0x1

    .line 124
    .end local v1           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :goto_1a
    return v2

    .line 117
    .restart local v1       #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 124
    .end local v1           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public findSelectedItem()Lcom/google/android/music/menu/MusicMenuItem;
    .registers 4

    .prologue
    .line 134
    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicMenuItem;

    .line 135
    .local v1, item:Lcom/google/android/music/menu/MusicMenuItem;
    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenuItem;->getSelected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 140
    .end local v1           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :goto_18
    return-object v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getItems()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/menu/MusicMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRadioButtonsEnabled()Z
    .registers 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/menu/MusicMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, visible:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/menu/MusicMenuItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_28

    .line 109
    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/menu/MusicMenuItem;

    invoke-virtual {v2}, Lcom/google/android/music/menu/MusicMenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 110
    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 113
    :cond_28
    return-object v1
.end method

.method protected onItemChecked(Lcom/google/android/music/menu/MusicMenuItem;Z)V
    .registers 4
    .parameter "item"
    .parameter "checked"

    .prologue
    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract performItemAction(Lcom/google/android/music/menu/MusicMenuItem;)Z
.end method

.method public setHeader(Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "header"

    .prologue
    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setItemSelected(I)V
    .registers 5
    .parameter "id"

    .prologue
    .line 128
    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicMenuItem;

    .line 129
    .local v1, item:Lcom/google/android/music/menu/MusicMenuItem;
    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenuItem;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_1d

    const/4 v2, 0x1

    :goto_19
    invoke-virtual {v1, v2}, Lcom/google/android/music/menu/MusicMenuItem;->setSelected(Z)V

    goto :goto_6

    :cond_1d
    const/4 v2, 0x0

    goto :goto_19

    .line 131
    .end local v1           #item:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_1f
    return-void
.end method

.method public setRadioButtonsEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract show()V
.end method
