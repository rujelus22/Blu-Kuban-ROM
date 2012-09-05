.class public abstract Lcom/google/android/music/menu/MusicMenuItem;
.super Ljava/lang/Object;
.source "MusicMenuItem.java"


# instance fields
.field protected mEnabled:Z

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field protected mIntent:Landroid/content/Intent;

.field protected mItemId:I

.field protected mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

.field protected mOrder:I

.field protected mSubMenu:Lcom/google/android/music/menu/MusicListMenu;

.field protected mTitle:Ljava/lang/String;

.field protected mVisible:Z


# direct methods
.method public constructor <init>(Lcom/google/android/music/menu/MusicMenu;IILjava/lang/String;)V
    .registers 6
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    .line 29
    iput p2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mItemId:I

    .line 30
    iput p3, p0, Lcom/google/android/music/menu/MusicMenuItem;->mOrder:I

    .line 31
    iput-object p4, p0, Lcom/google/android/music/menu/MusicMenuItem;->mTitle:Ljava/lang/String;

    .line 32
    iput-boolean v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mEnabled:Z

    .line 33
    iput-boolean v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mVisible:Z

    .line 34
    return-void
.end method


# virtual methods
.method public getCheckboxEnabled()Z
    .registers 2

    .prologue
    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getChecked()Z
    .registers 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mItemId:I

    return v0
.end method

.method protected getMenu()Lcom/google/android/music/menu/MusicMenu;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    return-object v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mOrder:I

    return v0
.end method

.method public getSelected()Z
    .registers 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSubMenu()Lcom/google/android/music/menu/MusicListMenu;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mSubMenu:Lcom/google/android/music/menu/MusicListMenu;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method abstract getView()Landroid/view/View;
.end method

.method public invoke()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 117
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicMenuItem;->onInvoke()V

    .line 119
    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v2, p0}, Lcom/google/android/music/menu/MusicMenu;->performItemAction(Lcom/google/android/music/menu/MusicMenuItem;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 131
    :goto_c
    return v1

    .line 123
    :cond_d
    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_25

    .line 125
    :try_start_11
    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v2}, Lcom/google/android/music/menu/MusicMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/menu/MusicMenuItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11 .. :try_end_1c} :catch_1d

    goto :goto_c

    .line 127
    :catch_1d
    move-exception v0

    .line 128
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "MusicMenuItem"

    const-string v2, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_25
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicMenuItem;->mVisible:Z

    return v0
.end method

.method public onInvoke()V
    .registers 1

    .prologue
    .line 136
    return-void
.end method

.method public requestFocus()Z
    .registers 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setCheckboxEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 161
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setEnabled(Z)V
    .registers 2
    .parameter "enabled"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mEnabled:Z

    .line 100
    return-void
.end method

.method public setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;
    .registers 4
    .parameter "iconResId"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/google/android/music/menu/MusicMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 95
    return-object p0
.end method

.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method

.method public setLayoutId(I)V
    .registers 3
    .parameter "layoutId"

    .prologue
    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setSelected(Z)V
    .registers 3
    .parameter "selected"

    .prologue
    .line 181
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setWidgetDrawables(II)V
    .registers 4
    .parameter "onDrawable"
    .parameter "offDrawable"

    .prologue
    .line 155
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mItemId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", title \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", order "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", visible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/music/menu/MusicMenuItem;->mVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
