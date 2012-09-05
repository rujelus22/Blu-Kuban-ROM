.class Lcom/google/android/apps/plus/util/QuickActionsMenuItem;
.super Ljava/lang/Object;
.source "QuickActionsMenuItem.java"

# interfaces
.implements Landroid/view/MenuItem;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mGroupId:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIntent:Landroid/content/Intent;

.field private final mItemId:I

.field private final mMenuClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final mOrder:I

.field private mSubMenu:Lcom/google/android/apps/plus/util/QuickActionsSubMenu;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILjava/lang/CharSequence;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .registers 9
    .parameter "context"
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"
    .parameter "menuInfo"
    .parameter "listener"

    .prologue
    const/4 v0, 0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mContext:Landroid/content/Context;

    .line 54
    iput p2, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mGroupId:I

    .line 55
    iput p3, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mItemId:I

    .line 56
    iput p4, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mOrder:I

    .line 57
    iput-object p5, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 58
    iput-object p6, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 59
    iput-boolean v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mEnabled:Z

    .line 60
    iput-boolean v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mVisible:Z

    .line 61
    iput-object p7, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mMenuClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 62
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .registers 2

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method

.method public expandActionView()Z
    .registers 2

    .prologue
    .line 304
    const/4 v0, 0x0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .registers 2

    .prologue
    .line 313
    const/4 v0, 0x0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .registers 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getAlphabeticShortcut()C
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupId()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mGroupId:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mItemId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getOrder()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mOrder:I

    return v0
.end method

.method public bridge synthetic getSubMenu()Landroid/view/SubMenu;
    .registers 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->getSubMenu()Lcom/google/android/apps/plus/util/QuickActionsSubMenu;

    move-result-object v0

    return-object v0
.end method

.method public getSubMenu()Lcom/google/android/apps/plus/util/QuickActionsSubMenu;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mSubMenu:Lcom/google/android/apps/plus/util/QuickActionsSubMenu;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mTitle:Ljava/lang/CharSequence;

    goto :goto_6
.end method

.method public hasSubMenu()Z
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mSubMenu:Lcom/google/android/apps/plus/util/QuickActionsSubMenu;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public invoke()Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 69
    iget-object v3, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 84
    :cond_e
    :goto_e
    return v1

    .line 71
    :cond_f
    iget-object v3, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mMenuClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mMenuClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v3, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 73
    :cond_1b
    iget-object v3, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_2a

    .line 75
    :try_start_1f
    iget-object v3, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_26
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_e

    .line 77
    :catch_27
    move-exception v0

    .local v0, e:Landroid/content/ActivityNotFoundException;
    move v1, v2

    .line 78
    goto :goto_e

    .line 80
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 81
    iget-object v2, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mSubMenu:Lcom/google/android/apps/plus/util/QuickActionsSubMenu;

    invoke-virtual {v2}, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->show()V

    goto :goto_e

    :cond_36
    move v1, v2

    .line 84
    goto :goto_e
.end method

.method public isActionViewExpanded()Z
    .registers 2

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public isCheckable()Z
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mEnabled:Z

    return v0
.end method

.method public isVisible()Z
    .registers 2

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mVisible:Z

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "resource"

    .prologue
    .line 268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .registers 3
    .parameter "v"

    .prologue
    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .registers 2
    .parameter "alphaChar"

    .prologue
    .line 173
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .registers 2
    .parameter "checkable"

    .prologue
    .line 179
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .registers 2
    .parameter "checked"

    .prologue
    .line 185
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .registers 2
    .parameter "enabled"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mEnabled:Z

    .line 191
    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .registers 4
    .parameter "iconRes"

    .prologue
    .line 202
    if-eqz p1, :cond_f

    .line 203
    iget-object v1, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 204
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 208
    .end local v0           #resources:Landroid/content/res/Resources;
    :goto_e
    return-object p0

    .line 206
    :cond_f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_e
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .registers 2
    .parameter "icon"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 197
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .registers 2
    .parameter "intent"

    .prologue
    .line 213
    iput-object p1, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mIntent:Landroid/content/Intent;

    .line 214
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .registers 2
    .parameter "numericChar"

    .prologue
    .line 220
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 339
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .registers 2
    .parameter "menuItemClickListener"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 227
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .registers 3
    .parameter "numericChar"
    .parameter "alphaChar"

    .prologue
    .line 233
    return-object p0
.end method

.method public setShowAsAction(I)V
    .registers 3
    .parameter "actionEnum"

    .prologue
    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method setSubMenu(Lcom/google/android/apps/plus/util/QuickActionsSubMenu;)V
    .registers 2
    .parameter "subMenu"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mSubMenu:Lcom/google/android/apps/plus/util/QuickActionsSubMenu;

    .line 66
    return-void
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "title"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2
    .parameter "title"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mTitle:Ljava/lang/CharSequence;

    .line 239
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 2
    .parameter "title"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 250
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .registers 2
    .parameter "visible"

    .prologue
    .line 255
    iput-boolean p1, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mVisible:Z

    .line 256
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
