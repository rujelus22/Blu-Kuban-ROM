.class Lcom/android/launcher2/FolderInfo;
.super Lcom/android/launcher2/ItemInfo;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/FolderInfo$FolderListener;
    }
.end annotation


# instance fields
.field contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/FolderInfo$FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field opened:Z

.field title:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderInfo;->listeners:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/FolderInfo;->itemType:I

    .line 47
    return-void
.end method


# virtual methods
.method public add(Lcom/android/launcher2/ShortcutInfo;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/android/launcher2/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 57
    iget-object v1, p0, Lcom/android/launcher2/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/android/launcher2/FolderInfo$FolderListener;->onAdd(Lcom/android/launcher2/ShortcutInfo;)V

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 59
    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher2/FolderInfo;->itemsChanged()V

    .line 60
    return-void
.end method

.method addListener(Lcom/android/launcher2/FolderInfo$FolderListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/launcher2/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method itemsChanged()V
    .registers 3

    .prologue
    .line 99
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 100
    iget-object v1, p0, Lcom/android/launcher2/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderInfo$FolderListener;

    invoke-interface {v1}, Lcom/android/launcher2/FolderInfo$FolderListener;->onItemsChanged()V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    :cond_17
    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .registers 4
    .parameter "values"

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 85
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public remove(Lcom/android/launcher2/ShortcutInfo;)V
    .registers 4
    .parameter "item"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/launcher2/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 69
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6
    iget-object v1, p0, Lcom/android/launcher2/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 70
    iget-object v1, p0, Lcom/android/launcher2/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/android/launcher2/FolderInfo$FolderListener;->onRemove(Lcom/android/launcher2/ShortcutInfo;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 72
    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher2/FolderInfo;->itemsChanged()V

    .line 73
    return-void
.end method

.method removeListener(Lcom/android/launcher2/FolderInfo$FolderListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/launcher2/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 94
    iget-object v0, p0, Lcom/android/launcher2/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    :cond_d
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "title"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 77
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v1, p0, Lcom/android/launcher2/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 78
    iget-object v1, p0, Lcom/android/launcher2/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lcom/android/launcher2/FolderInfo$FolderListener;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 80
    :cond_19
    return-void
.end method

.method unbind()V
    .registers 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/android/launcher2/ItemInfo;->unbind()V

    .line 107
    iget-object v0, p0, Lcom/android/launcher2/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 108
    return-void
.end method
