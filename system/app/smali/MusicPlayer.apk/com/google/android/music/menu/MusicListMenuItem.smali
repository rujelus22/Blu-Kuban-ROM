.class public Lcom/google/android/music/menu/MusicListMenuItem;
.super Lcom/google/android/music/menu/MusicMenuItem;
.source "MusicListMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;
    }
.end annotation


# instance fields
.field private mChecked:Z

.field private mCustomWidgetImages:Z

.field private mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

.field private mLayoutId:I

.field private mRequestFocus:Z

.field private mSelected:Z

.field private mWidgetMode:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

.field private mWidgetOffDrawable:I

.field private mWidgetOnDrawable:I


# direct methods
.method public constructor <init>(Lcom/google/android/music/menu/MusicMenu;IILjava/lang/String;)V
    .registers 7
    .parameter "menu"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/menu/MusicMenuItem;-><init>(Lcom/google/android/music/menu/MusicMenu;IILjava/lang/String;)V

    .line 35
    sget-object v0, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_NONE:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    iput-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetMode:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    .line 36
    iput-boolean v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mChecked:Z

    .line 37
    iput-boolean v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mCustomWidgetImages:Z

    .line 38
    iput-boolean v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mSelected:Z

    .line 39
    const v0, 0x7f040034

    iput v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mLayoutId:I

    .line 40
    return-void
.end method

.method private refreshWidget()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    if-eqz v0, :cond_22

    .line 120
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetMode:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    sget-object v1, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_NONE:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    if-ne v0, v1, :cond_23

    .line 121
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    invoke-virtual {v0, v2}, Lcom/google/android/music/menu/MusicListMenuItemView;->setWidgetVisible(Z)V

    .line 126
    :goto_10
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    iget-boolean v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mSelected:Z

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicListMenuItemView;->setSelected(Z)V

    .line 127
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mRequestFocus:Z

    if-eqz v0, :cond_22

    .line 128
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicListMenuItemView;->requestFocus()Z

    .line 129
    iput-boolean v2, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mRequestFocus:Z

    .line 132
    :cond_22
    return-void

    .line 123
    :cond_23
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->getWidgetImage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicListMenuItemView;->setWidgetImage(I)V

    .line 124
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicListMenuItemView;->setWidgetVisible(Z)V

    goto :goto_10
.end method


# virtual methods
.method public getCheckboxEnabled()Z
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetMode:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    sget-object v1, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_CHECKBOX:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getChecked()Z
    .registers 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mChecked:Z

    return v0
.end method

.method public getItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .parameter "parent"

    .prologue
    .line 163
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    if-nez v1, :cond_3c

    .line 164
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 165
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/menu/MusicListMenuItemView;

    iput-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    .line 167
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    invoke-virtual {v1, p0}, Lcom/google/android/music/menu/MusicListMenuItemView;->initialize(Lcom/google/android/music/menu/MusicListMenuItem;)V

    .line 168
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/menu/MusicListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/menu/MusicListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/music/menu/MusicListMenuItemView;->setEnabled(Z)V

    .line 171
    invoke-direct {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->refreshWidget()V

    .line 173
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_3c
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    return-object v1
.end method

.method public getSelected()Z
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mSelected:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    return-object v0
.end method

.method public getWidgetImage()I
    .registers 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 140
    iget v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOnDrawable:I

    .line 142
    :goto_8
    return v0

    :cond_9
    iget v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOffDrawable:I

    goto :goto_8
.end method

.method public onInvoke()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 191
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->getCheckboxEnabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 192
    invoke-virtual {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->getChecked()Z

    move-result v1

    if-nez v1, :cond_11

    :goto_d
    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuItem;->setChecked(Z)V

    .line 196
    :cond_10
    :goto_10
    return-void

    .line 192
    :cond_11
    const/4 v0, 0x0

    goto :goto_d

    .line 193
    :cond_13
    iget-object v1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v1}, Lcom/google/android/music/menu/MusicMenu;->getRadioButtonsEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 194
    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuItem;->setChecked(Z)V

    goto :goto_10
.end method

.method public requestFocus()Z
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mRequestFocus:Z

    .line 114
    invoke-direct {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->refreshWidget()V

    .line 115
    return v0
.end method

.method public setCheckboxEnabled(Z)V
    .registers 4
    .parameter "checkbox"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v0}, Lcom/google/android/music/menu/MusicMenu;->getRadioButtonsEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t use radio buttons and checkboxes in the same menu"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_10
    sget-object v0, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_CHECKBOX:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicListMenuItem;->setWidgetMode(Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;)V

    .line 77
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "checked"

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/google/android/music/menu/MusicListMenuItem;->setCheckedInternal(Z)V

    .line 87
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mMusicMenu:Lcom/google/android/music/menu/MusicMenu;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/music/menu/MusicMenu;->onItemChecked(Lcom/google/android/music/menu/MusicMenuItem;Z)V

    .line 88
    return-void
.end method

.method protected setCheckedInternal(Z)V
    .registers 2
    .parameter "checked"

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mChecked:Z

    .line 92
    invoke-direct {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->refreshWidget()V

    .line 93
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/google/android/music/menu/MusicMenuItem;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    if-eqz v0, :cond_c

    .line 185
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mItemView:Lcom/google/android/music/menu/MusicListMenuItemView;

    invoke-virtual {v0, p1}, Lcom/google/android/music/menu/MusicListMenuItemView;->setEnabled(Z)V

    .line 187
    :cond_c
    return-void
.end method

.method public setLayoutId(I)V
    .registers 2
    .parameter "layoutId"

    .prologue
    .line 67
    iput p1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mLayoutId:I

    .line 68
    return-void
.end method

.method public setSelected(Z)V
    .registers 2
    .parameter "selected"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mSelected:Z

    .line 98
    invoke-direct {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->refreshWidget()V

    .line 99
    return-void
.end method

.method public setWidgetDrawables(II)V
    .registers 4
    .parameter "onDrawable"
    .parameter "offDrawable"

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mCustomWidgetImages:Z

    .line 44
    iput p1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOnDrawable:I

    .line 45
    iput p2, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOffDrawable:I

    .line 46
    return-void
.end method

.method protected setWidgetMode(Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;)V
    .registers 4
    .parameter "mode"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetMode:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    .line 50
    iget-boolean v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mCustomWidgetImages:Z

    if-nez v0, :cond_16

    .line 51
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetMode:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    sget-object v1, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_RADIO_BUTTON:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    if-ne v0, v1, :cond_1a

    .line 52
    const v0, 0x7f02008c

    iput v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOnDrawable:I

    .line 53
    const v0, 0x7f02008a

    iput v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOffDrawable:I

    .line 59
    :cond_16
    :goto_16
    invoke-direct {p0}, Lcom/google/android/music/menu/MusicListMenuItem;->refreshWidget()V

    .line 60
    return-void

    .line 54
    :cond_1a
    iget-object v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetMode:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    sget-object v1, Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;->WIDGET_CHECKBOX:Lcom/google/android/music/menu/MusicListMenuItem$WidgetMode;

    if-ne v0, v1, :cond_16

    .line 55
    const v0, 0x7f020085

    iput v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOnDrawable:I

    .line 56
    const v0, 0x7f020084

    iput v0, p0, Lcom/google/android/music/menu/MusicListMenuItem;->mWidgetOffDrawable:I

    goto :goto_16
.end method
