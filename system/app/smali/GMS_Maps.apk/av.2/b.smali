.class public Lav/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field private final a:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lav/b;->a:Ljava/util/Vector;

    .line 42
    return-void
.end method


# virtual methods
.method public a()[Lav/c;
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lav/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lav/c;

    .line 46
    iget-object v1, p0, Lav/b;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lav/c;

    return-object v0
.end method

.method public add(I)Landroid/view/MenuItem;
    .registers 3
    .parameter

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v0, Lav/c;

    invoke-direct {v0, p1, p2, p3, p4}, Lav/c;-><init>(IIILjava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lav/b;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 53
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3
    .parameter

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 3
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3
    .parameter

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lav/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 84
    return-void
.end method

.method public close()V
    .registers 1

    .prologue
    .line 150
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 5
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lav/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lav/c;

    .line 59
    invoke-virtual {v0}, Lav/c;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_6

    .line 63
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lav/b;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public hasVisibleItems()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 73
    iget-object v1, p0, Lav/b;->a:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public performIdentifierAction(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public removeGroup(I)V
    .registers 2
    .parameter

    .prologue
    .line 134
    return-void
.end method

.method public removeItem(I)V
    .registers 2
    .parameter

    .prologue
    .line 130
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 146
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 142
    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 2
    .parameter

    .prologue
    .line 169
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lav/b;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
