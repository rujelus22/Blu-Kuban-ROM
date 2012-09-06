.class public abstract Lcom/google/android/music/menu/MusicListMenu;
.super Lcom/google/android/music/menu/MusicMenu;
.source "MusicListMenu.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field protected mHeader:Ljava/lang/CharSequence;

.field protected mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

.field protected mRadioButtonsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V
    .registers 5
    .parameter "context"
    .parameter "callback"
    .parameter "rootView"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/menu/MusicMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mRadioButtonsEnabled:Z

    .line 20
    return-void
.end method


# virtual methods
.method public add(III)Lcom/google/android/music/menu/MusicMenuItem;
    .registers 5
    .parameter "id"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/music/menu/MusicListMenu;->add(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IILjava/lang/String;)Lcom/google/android/music/menu/MusicMenuItem;
    .registers 7
    .parameter "id"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 95
    new-instance v0, Lcom/google/android/music/menu/MusicListMenuItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/menu/MusicListMenuItem;-><init>(Lcom/google/android/music/menu/MusicMenu;IILjava/lang/String;)V

    .line 96
    .local v0, item:Lcom/google/android/music/menu/MusicListMenuItem;
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/google/android/music/menu/MusicListMenu;->findInsertIndex(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 97
    iget-boolean v1, p0, Lcom/google/android/music/menu/MusicListMenu;->mRadioButtonsEnabled:Z

    if-eqz v1, :cond_17

    .line 98
    sget-object v1, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_RADIO_BUTTON:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicListMenuItem;->setWidgetMode(Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;)V

    .line 100
    :cond_17
    return-object v0
.end method

.method protected clearView()V
    .registers 3

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenu;->getMenuView()Lcom/google/android/music/menu/MusicListMenuView;

    move-result-object v0

    .line 76
    .local v0, view:Lcom/google/android/music/menu/MusicListMenuView;
    if-eqz v0, :cond_9

    .line 77
    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicListMenuView;->clearChildren()V

    .line 79
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/music/menu/MusicListMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    .line 80
    return-void
.end method

.method public getHeader()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mHeader:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public abstract getMenuView()Lcom/google/android/music/menu/MusicListMenuView;
.end method

.method public getRadioButtonsEnabled()Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mRadioButtonsEnabled:Z

    return v0
.end method

.method protected onItemChecked(Lcom/google/android/music/menu/MusicMenuItem;Z)V
    .registers 7
    .parameter "item"
    .parameter "checked"

    .prologue
    .line 63
    if-eqz p2, :cond_20

    iget-boolean v3, p0, Lcom/google/android/music/menu/MusicListMenu;->mRadioButtonsEnabled:Z

    if-eqz v3, :cond_20

    .line 64
    iget-object v3, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 65
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v1, :cond_20

    .line 66
    iget-object v3, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/menu/MusicListMenuItem;

    .line 67
    .local v2, tmp:Lcom/google/android/music/menu/MusicListMenuItem;
    if-eq v2, p1, :cond_1d

    .line 68
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/music/menu/MusicListMenuItem;->setCheckedInternal(Z)V

    .line 65
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 72
    .end local v0           #i:I
    .end local v1           #size:I
    .end local v2           #tmp:Lcom/google/android/music/menu/MusicListMenuItem;
    :cond_20
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 171
    const/4 v1, 0x4

    if-eq p2, v1, :cond_8

    const/16 v1, 0x52

    if-ne p2, v1, :cond_12

    .line 172
    :cond_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_11

    .line 173
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenu;->close()V

    .line 177
    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public performItemAction(Lcom/google/android/music/menu/MusicMenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 182
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 183
    :cond_8
    const/4 v0, 0x0

    .line 198
    :goto_9
    return v0

    .line 186
    :cond_a
    const/4 v0, 0x0

    .line 187
    .local v0, invoked:Z
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getSubMenu()Lcom/google/android/music/menu/MusicListMenu;

    move-result-object v1

    if-eqz v1, :cond_1d

    .line 188
    const/4 v0, 0x1

    .line 189
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenu;->close()V

    .line 190
    invoke-virtual {p1}, Lcom/google/android/music/menu/MusicMenuItem;->getSubMenu()Lcom/google/android/music/menu/MusicListMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicListMenu;->show()V

    goto :goto_9

    .line 192
    :cond_1d
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenu;->mCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    if-eqz v1, :cond_27

    .line 193
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenu;->mCallback:Lcom/google/android/music/menu/MusicMenu$Callback;

    invoke-interface {v1, p1}, Lcom/google/android/music/menu/MusicMenu$Callback;->onMusicMenuItemSelected(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v0

    .line 196
    :cond_27
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenu;->close()V

    goto :goto_9
.end method

.method public setHeader(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "header"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/music/menu/MusicListMenu;->mHeader:Ljava/lang/CharSequence;

    .line 85
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    if-eqz v0, :cond_d

    .line 86
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenu;->mMenuView:Lcom/google/android/music/menu/MusicListMenuView;

    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenu;->mHeader:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicListMenuView;->setHeader(Ljava/lang/CharSequence;)V

    .line 88
    :cond_d
    return-void
.end method

.method public setRadioButtonsEnabled(Z)V
    .registers 7
    .parameter "enabled"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/google/android/music/menu/MusicListMenu;->mRadioButtonsEnabled:Z

    .line 40
    iget-object v3, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 41
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v2, :cond_33

    .line 42
    iget-object v3, p0, Lcom/google/android/music/menu/MusicListMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicListMenuItem;

    .line 43
    .local v1, item:Lcom/google/android/music/menu/MusicListMenuItem;
    if-eqz p1, :cond_23

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicListMenuItem;->getCheckboxEnabled()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 44
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "can\'t use radio buttons and checkboxes in the same menu"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    :cond_23
    if-eqz p1, :cond_2d

    .line 48
    sget-object v3, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_RADIO_BUTTON:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    invoke-virtual {v1, v3}, Lcom/google/android/music/menu/MusicListMenuItem;->setWidgetMode(Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;)V

    .line 41
    :goto_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 50
    :cond_2d
    sget-object v3, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_NONE:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    invoke-virtual {v1, v3}, Lcom/google/android/music/menu/MusicListMenuItem;->setWidgetMode(Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;)V

    goto :goto_2a

    .line 53
    .end local v1           #item:Lcom/google/android/music/menu/MusicListMenuItem;
    :cond_33
    return-void
.end method

.method public abstract show()V
.end method
