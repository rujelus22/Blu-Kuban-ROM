.class Lcom/google/android/apps/plus/util/QuickActionsContextMenu;
.super Landroid/app/Dialog;
.source "QuickActionsContextMenu.java"

# interfaces
.implements Landroid/view/ContextMenu;


# instance fields
.field private final mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/plus/util/QuickActionsMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftAligned:Z

.field private final mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mShowAbove:Z

.field private mVertical:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/MenuItem$OnMenuItemClickListener;ZZZ)V
    .registers 11
    .parameter "context"
    .parameter "contextMenuInfo"
    .parameter "onMenuItemClickListener"
    .parameter "leftAligned"
    .parameter "showAbove"
    .parameter "vertical"

    .prologue
    .line 59
    const v2, 0x7f0f004e

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 60
    iput-boolean p4, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mLeftAligned:Z

    .line 61
    iput-boolean p6, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mVertical:Z

    .line 62
    iput-boolean p5, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mShowAbove:Z

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mItems:Ljava/util/List;

    .line 64
    iput-object p2, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 65
    iput-object p3, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 67
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 68
    .local v1, window:Landroid/view/Window;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 69
    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 73
    if-eqz p4, :cond_37

    .line 74
    if-eqz p5, :cond_33

    .line 76
    const v0, 0x7f02014f

    .line 90
    .local v0, backgroundResId:I
    :goto_2b
    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 92
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->setCanceledOnTouchOutside(Z)V

    .line 93
    return-void

    .line 79
    .end local v0           #backgroundResId:I
    :cond_33
    const v0, 0x7f02014d

    .restart local v0       #backgroundResId:I
    goto :goto_2b

    .line 82
    .end local v0           #backgroundResId:I
    :cond_37
    if-eqz p5, :cond_3d

    .line 84
    const v0, 0x7f020150

    .restart local v0       #backgroundResId:I
    goto :goto_2b

    .line 87
    .end local v0           #backgroundResId:I
    :cond_3d
    const v0, 0x7f02014e

    .restart local v0       #backgroundResId:I
    goto :goto_2b
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "titleRes"

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 7
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 178
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->add(IIILjava/lang/CharSequence;)Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->add(IIILjava/lang/CharSequence;)Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 167
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->add(IIILjava/lang/CharSequence;)Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Lcom/google/android/apps/plus/util/QuickActionsMenuItem;
    .registers 13
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 184
    .local v1, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 185
    .local v6, info:Landroid/view/ContextMenu$ContextMenuInfo;
    iget-object v7, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 186
    .local v7, listener:Landroid/view/MenuItem$OnMenuItemClickListener;
    new-instance v0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;-><init>(Landroid/content/Context;IIILjava/lang/CharSequence;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 188
    .local v0, item:Lcom/google/android/apps/plus/util/QuickActionsMenuItem;
    iget-object v2, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 10
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "caller"
    .parameter "specifics"
    .parameter "intent"
    .parameter "flags"
    .parameter "outSpecificItems"

    .prologue
    .line 195
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 3
    .parameter "titleRes"

    .prologue
    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 7
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 221
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    return-object v1
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 10
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 211
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->add(IIILjava/lang/CharSequence;)Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    move-result-object v1

    .line 212
    .local v1, item:Lcom/google/android/apps/plus/util/QuickActionsMenuItem;
    new-instance v2, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;

    iget-object v3, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iget-object v4, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/util/QuickActionsMenuItem;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 214
    .local v2, subMenu:Lcom/google/android/apps/plus/util/QuickActionsSubMenu;
    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->setSubMenu(Lcom/google/android/apps/plus/util/QuickActionsSubMenu;)V

    .line 215
    return-object v2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 227
    return-void
.end method

.method public clearHeader()V
    .registers 1

    .prologue
    .line 316
    return-void
.end method

.method public close()V
    .registers 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->dismiss()V

    .line 232
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 7
    .parameter "id"

    .prologue
    .line 236
    iget-object v4, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    .line 237
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    if-ne p1, v4, :cond_19

    .line 247
    .end local v1           #item:Landroid/view/MenuItem;
    :goto_18
    return-object v1

    .line 239
    .restart local v1       #item:Landroid/view/MenuItem;
    :cond_19
    invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 240
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    .line 241
    .local v3, subMenu:Landroid/view/SubMenu;
    invoke-interface {v3, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 242
    .local v2, subItem:Landroid/view/MenuItem;
    if-eqz v2, :cond_6

    move-object v1, v2

    .line 243
    goto :goto_18

    .line 247
    .end local v1           #item:Landroid/view/MenuItem;
    .end local v2           #subItem:Landroid/view/MenuItem;
    .end local v3           #subMenu:Landroid/view/SubMenu;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .registers 4

    .prologue
    .line 257
    iget-object v2, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    .line 258
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 259
    const/4 v2, 0x1

    .line 262
    .end local v1           #item:Landroid/view/MenuItem;
    :goto_19
    return v2

    :cond_1a
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 16
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 111
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 113
    iget-boolean v10, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mVertical:Z

    if-eqz v10, :cond_84

    const v8, 0x7f030087

    .line 115
    .local v8, layoutResource:I
    :goto_c
    invoke-virtual {p0, v8}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->setContentView(I)V

    .line 117
    iget-boolean v10, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mVertical:Z

    if-eqz v10, :cond_88

    const v7, 0x7f03008a

    .line 119
    .local v7, itemResourceId:I
    :goto_16
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 120
    .local v2, context:Landroid/content/Context;
    const v10, 0x7f0d015e

    invoke-virtual {p0, v10}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 121
    .local v1, buttons:Landroid/view/ViewGroup;
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 122
    .local v5, inflater:Landroid/view/LayoutInflater;
    iget-object v10, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    .line 123
    .local v6, item:Lcom/google/android/apps/plus/util/QuickActionsMenuItem;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->isVisible()Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 124
    iget-boolean v10, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mVertical:Z

    if-nez v10, :cond_50

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-eqz v10, :cond_50

    .line 125
    const v10, 0x7f030088

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 127
    :cond_50
    invoke-virtual {v5, v7, v1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 129
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v6}, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    .line 130
    .local v9, title:Ljava/lang/CharSequence;
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v6}, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 133
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_6e

    .line 134
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v4, v12, v12, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    :cond_6e
    invoke-virtual {v0, v4, v13, v13, v13}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 137
    invoke-virtual {v6}, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->isEnabled()Z

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 138
    new-instance v10, Lcom/google/android/apps/plus/util/QuickActionsContextMenu$1;

    invoke-direct {v10, p0, v6}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu$1;-><init>(Lcom/google/android/apps/plus/util/QuickActionsContextMenu;Lcom/google/android/apps/plus/util/QuickActionsMenuItem;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2d

    .line 113
    .end local v0           #button:Landroid/widget/Button;
    .end local v1           #buttons:Landroid/view/ViewGroup;
    .end local v2           #context:Landroid/content/Context;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #item:Lcom/google/android/apps/plus/util/QuickActionsMenuItem;
    .end local v7           #itemResourceId:I
    .end local v8           #layoutResource:I
    .end local v9           #title:Ljava/lang/CharSequence;
    :cond_84
    const v8, 0x7f030086

    goto :goto_c

    .line 117
    .restart local v8       #layoutResource:I
    :cond_88
    const v7, 0x7f030089

    goto :goto_16

    .line 148
    .restart local v1       #buttons:Landroid/view/ViewGroup;
    .restart local v2       #context:Landroid/content/Context;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #inflater:Landroid/view/LayoutInflater;
    .restart local v7       #itemResourceId:I
    :cond_8c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 152
    invoke-super {p0, p1}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 161
    :goto_7
    return v0

    .line 155
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_12

    .line 158
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->dismiss()V

    goto :goto_7

    .line 161
    :cond_12
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public performIdentifierAction(II)Z
    .registers 4
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public removeGroup(I)V
    .registers 3
    .parameter "groupId"

    .prologue
    .line 282
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeItem(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mItems:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 5
    .parameter "group"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setGroupEnabled(IZ)V
    .registers 4
    .parameter "group"
    .parameter "enabled"

    .prologue
    .line 297
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setGroupVisible(IZ)V
    .registers 4
    .parameter "group"
    .parameter "visible"

    .prologue
    .line 302
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setHeaderIcon(I)Landroid/view/ContextMenu;
    .registers 2
    .parameter "iconRes"

    .prologue
    .line 327
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/ContextMenu;
    .registers 2
    .parameter "icon"

    .prologue
    .line 321
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/ContextMenu;
    .registers 2
    .parameter "titleRes"

    .prologue
    .line 339
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    .registers 2
    .parameter "title"

    .prologue
    .line 333
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;
    .registers 2
    .parameter "view"

    .prologue
    .line 345
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .registers 2
    .parameter "isQwerty"

    .prologue
    .line 307
    return-void
.end method

.method showAnchoredAt(II)V
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 97
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 99
    .local v0, attributes:Landroid/view/WindowManager$LayoutParams;
    iget-boolean v2, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mShowAbove:Z

    if-eqz v2, :cond_25

    const/16 v2, 0x50

    :goto_e
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 100
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 102
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-boolean v2, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mLeftAligned:Z

    if-eqz v2, :cond_28

    const/4 v2, 0x3

    :goto_19
    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 103
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 105
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->show()V

    .line 107
    return-void

    .line 99
    :cond_25
    const/16 v2, 0x30

    goto :goto_e

    .line 102
    :cond_28
    const/4 v2, 0x5

    goto :goto_19
.end method

.method public size()I
    .registers 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsContextMenu;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
