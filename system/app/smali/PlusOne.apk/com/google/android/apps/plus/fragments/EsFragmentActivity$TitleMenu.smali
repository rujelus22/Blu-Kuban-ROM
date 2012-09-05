.class Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;
.super Ljava/lang/Object;
.source "EsFragmentActivity.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TitleMenu"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;->mItems:Ljava/util/ArrayList;

    .line 62
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 5
    .parameter "titleRes"

    .prologue
    .line 249
    new-instance v0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;-><init>(Landroid/content/Context;II)V

    .line 250
    .local v0, item:Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 7
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 229
    new-instance v0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p4}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;-><init>(Landroid/content/Context;II)V

    .line 230
    .local v0, item:Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 7
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 239
    new-instance v0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p4}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 240
    .local v0, item:Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 5
    .parameter "title"

    .prologue
    .line 259
    new-instance v0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;)V

    .line 260
    .local v0, item:Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
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
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 3
    .parameter "titleRes"

    .prologue
    .line 204
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "titleRes"

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 6
    .parameter "groupId"
    .parameter "itemId"
    .parameter "order"
    .parameter "title"

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3
    .parameter "title"

    .prologue
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    return-void
.end method

.method public close()V
    .registers 1

    .prologue
    .line 173
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 5
    .parameter "id"

    .prologue
    .line 160
    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;

    .line 161
    .local v1, item:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 165
    .end local v1           #item:Landroid/view/MenuItem;
    :goto_18
    return-object v1

    :cond_19
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3
    .parameter "index"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public performIdentifierAction(II)Z
    .registers 4
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"
    .parameter "flags"

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public removeGroup(I)V
    .registers 2
    .parameter "groupId"

    .prologue
    .line 113
    return-void
.end method

.method public removeItem(I)V
    .registers 2
    .parameter "id"

    .prologue
    .line 106
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 4
    .parameter "group"
    .parameter "checkable"
    .parameter "exclusive"

    .prologue
    .line 99
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 3
    .parameter "group"
    .parameter "enabled"

    .prologue
    .line 92
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 3
    .parameter "group"
    .parameter "visible"

    .prologue
    .line 85
    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 2
    .parameter "isQwerty"

    .prologue
    .line 78
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
