.class Lcom/google/android/apps/plus/util/QuickActionsSubMenu;
.super Ljava/lang/Object;
.source "QuickActionsSubMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/SubMenu;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mHeaderTitle:Ljava/lang/CharSequence;

.field private final mItem:Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

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

.field private final mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/util/QuickActionsMenuItem;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/MenuItem$OnMenuItemClickListener;)V
    .registers 6
    .parameter "context"
    .parameter "item"
    .parameter "contextMenuInfo"
    .parameter "onMenuItemClickListener"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mItem:Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    .line 49
    iput-object p3, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 50
    iput-object p4, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mItems:Ljava/util/List;

    .line 52
    return-void
.end method

.method private createListAdapter(Ljava/util/List;)Landroid/widget/ListAdapter;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Landroid/widget/ListAdapter;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, items:Ljava/util/List;,"Ljava/util/List<TT;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mContext:Landroid/content/Context;

    const v2, 0x1090003

    const v3, 0x1020014

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-object v0
.end method

.method private getItem(Landroid/content/DialogInterface;I)Ljava/lang/Object;
    .registers 6
    .parameter "dialog"
    .parameter "which"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/DialogInterface;",
            "I)TT;"
        }
    .end annotation

    .prologue
    .line 85
    move-object v1, p1

    check-cast v1, Landroid/app/AlertDialog;

    .line 86
    .local v1, alert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 87
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static visible(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/view/MenuItem;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, allItems:Ljava/util/List;,"Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    .line 281
    .local v2, visibleCount:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 282
    .local v1, item:Landroid/view/MenuItem;,"TT;"
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 283
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 286
    .end local v1           #item:Landroid/view/MenuItem;,"TT;"
    :cond_1a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v2, v4, :cond_21

    .line 295
    .end local p0           #allItems:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :goto_20
    return-object p0

    .line 289
    .restart local p0       #allItems:Ljava/util/List;,"Ljava/util/List<TT;>;"
    :cond_21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 290
    .local v3, visibleItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    .line 291
    .restart local v1       #item:Landroid/view/MenuItem;,"TT;"
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 292
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .end local v1           #item:Landroid/view/MenuItem;,"TT;"
    :cond_40
    move-object p0, v3

    .line 295
    goto :goto_20
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "titleRes"

    .prologue
    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 13
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 134
    new-instance v0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    iget-object v1, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    iget-object v7, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;-><init>(Landroid/content/Context;IIILjava/lang/CharSequence;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/view/MenuItem$OnMenuItemClickListener;)V

    .line 136
    .local v0, item:Lcom/google/android/apps/plus/util/QuickActionsMenuItem;
    iget-object v1, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3
    .parameter "title"

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

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
    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 3
    .parameter "titleRes"

    .prologue
    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 6
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3
    .parameter "title"

    .prologue
    .line 163
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 184
    return-void
.end method

.method public clearHeader()V
    .registers 2

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 99
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 188
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 5
    .parameter "id"

    .prologue
    .line 193
    iget-object v2, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    .line 194
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne p1, v2, :cond_6

    .line 198
    .end local v1           #item:Landroid/view/MenuItem;
    :goto_18
    return-object v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public bridge synthetic getItem()Landroid/view/MenuItem;
    .registers 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->getItem()Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->getItem(I)Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Lcom/google/android/apps/plus/util/QuickActionsMenuItem;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mItem:Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    return-object v0
.end method

.method public getItem(I)Lcom/google/android/apps/plus/util/QuickActionsMenuItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .registers 4

    .prologue
    .line 208
    iget-object v2, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mItems:Ljava/util/List;

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

    .line 209
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 210
    const/4 v2, 0x1

    .line 213
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
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->getItem(Landroid/content/DialogInterface;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;

    .line 93
    .local v0, item:Lcom/google/android/apps/plus/util/QuickActionsMenuItem;
    invoke-virtual {v0}, Lcom/google/android/apps/plus/util/QuickActionsMenuItem;->invoke()Z

    .line 94
    return-void
.end method

.method public performIdentifierAction(II)Z
    .registers 4
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public removeGroup(I)V
    .registers 3
    .parameter "groupId"

    .prologue
    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeItem(I)V
    .registers 4
    .parameter "id"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mItems:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 239
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 5
    .parameter "group"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    .line 243
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setGroupEnabled(IZ)V
    .registers 4
    .parameter "group"
    .parameter "enabled"

    .prologue
    .line 248
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setGroupVisible(IZ)V
    .registers 4
    .parameter "group"
    .parameter "visible"

    .prologue
    .line 253
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .registers 3
    .parameter "iconRes"

    .prologue
    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3
    .parameter "icon"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .registers 3
    .parameter "titleRes"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 2
    .parameter "title"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 119
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .registers 3
    .parameter "view"

    .prologue
    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .registers 3
    .parameter "iconRes"

    .prologue
    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .registers 3
    .parameter "icon"

    .prologue
    .line 268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setQwertyMode(Z)V
    .registers 3
    .parameter "isQwerty"

    .prologue
    .line 258
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public show()V
    .registers 6

    .prologue
    .line 59
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mItems:Ljava/util/List;

    invoke-static {v4}, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->visible(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->createListAdapter(Ljava/util/List;)Landroid/widget/ListAdapter;

    move-result-object v0

    .line 62
    .local v0, adapter:Landroid/widget/ListAdapter;
    move-object v3, p0

    .line 63
    .local v3, listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    const v4, 0x106000d

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 69
    iget-object v4, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mHeaderTitle:Ljava/lang/CharSequence;

    if-eqz v4, :cond_24

    .line 70
    iget-object v4, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mHeaderTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    :cond_24
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 74
    .local v2, d:Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 76
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/apps/plus/util/QuickActionsSubMenu;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
