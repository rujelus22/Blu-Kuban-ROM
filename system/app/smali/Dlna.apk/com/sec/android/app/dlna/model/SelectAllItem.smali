.class public Lcom/sec/android/app/dlna/model/SelectAllItem;
.super Lcom/sec/android/app/dlna/model/PlaylistItem;
.source "SelectAllItem.java"


# instance fields
.field parent:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .parameter "list"

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/dlna/model/PlaylistItem;-><init>(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;)V

    .line 10
    iput-object v0, p0, Lcom/sec/android/app/dlna/model/SelectAllItem;->parent:Ljava/util/List;

    .line 14
    iput-object p1, p0, Lcom/sec/android/app/dlna/model/SelectAllItem;->parent:Ljava/util/List;

    .line 15
    return-void
.end method


# virtual methods
.method public setCheckAllItems(Z)V
    .registers 5
    .parameter "flag"

    .prologue
    .line 18
    iget-object v2, p0, Lcom/sec/android/app/dlna/model/SelectAllItem;->parent:Ljava/util/List;

    if-nez v2, :cond_5

    .line 24
    :cond_4
    return-void

    .line 20
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/dlna/model/SelectAllItem;->parent:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 21
    .local v1, o:Ljava/lang/Object;
    instance-of v2, v1, Lcom/sec/android/app/dlna/model/PlaylistItem;

    if-eqz v2, :cond_b

    .line 22
    check-cast v1, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .end local v1           #o:Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setChecked(Z)V

    goto :goto_b
.end method

.method public setChecked(Z)V
    .registers 8
    .parameter "flag"

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setChecked(Z)V

    .line 28
    iget-object v4, p0, Lcom/sec/android/app/dlna/model/SelectAllItem;->parent:Ljava/util/List;

    if-nez v4, :cond_8

    .line 55
    :cond_7
    return-void

    .line 31
    :cond_8
    const/4 v0, 0x1

    .line 33
    .local v0, bAllChecked:Z
    iget-object v4, p0, Lcom/sec/android/app/dlna/model/SelectAllItem;->parent:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 38
    iget-object v4, p0, Lcom/sec/android/app/dlna/model/SelectAllItem;->parent:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 39
    .local v3, o:Ljava/lang/Object;
    instance-of v4, v3, Lcom/sec/android/app/dlna/model/PlaylistItem;

    if-eqz v4, :cond_17

    .line 40
    check-cast v3, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .end local v3           #o:Ljava/lang/Object;
    invoke-virtual {v3}, Lcom/sec/android/app/dlna/model/PlaylistItem;->isChecked()Z

    move-result v4

    if-nez v4, :cond_17

    .line 41
    const/4 v0, 0x0

    .line 47
    :cond_2e
    iget-object v4, p0, Lcom/sec/android/app/dlna/model/SelectAllItem;->parent:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_34
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 48
    .local v2, item:Ljava/lang/Object;
    instance-of v4, v2, Lcom/sec/android/app/dlna/model/PlaylistItem;

    if-eqz v4, :cond_34

    move-object v4, v2

    .line 49
    check-cast v4, Lcom/sec/android/app/dlna/model/PlaylistItem;

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_34

    .line 50
    check-cast v2, Lcom/sec/android/app/dlna/model/PlaylistItem;

    .end local v2           #item:Ljava/lang/Object;
    if-nez v0, :cond_55

    const/4 v4, 0x1

    :goto_51
    invoke-virtual {v2, v4}, Lcom/sec/android/app/dlna/model/PlaylistItem;->setChecked(Z)V

    goto :goto_34

    :cond_55
    const/4 v4, 0x0

    goto :goto_51
.end method
