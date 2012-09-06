.class public final Lcom/twitter/android/provider/k;
.super Lcom/twitter/android/provider/g;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/twitter/android/provider/g;-><init>(Landroid/database/Cursor;I)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 11

    const/4 v9, 0x2

    iget-object v1, p0, Lcom/twitter/android/provider/k;->e:Landroid/database/Cursor;

    if-eqz v1, :cond_43

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v3, p0, Lcom/twitter/android/provider/k;->b:I

    const/4 v0, 0x0

    :goto_d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_40

    if-ge v0, v3, :cond_40

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    const/16 v5, 0xb

    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_36

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    :cond_25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_33

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-eqz v7, :cond_25

    :cond_33
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    :cond_36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_40
    iput-object v2, p0, Lcom/twitter/android/provider/k;->c:Ljava/util/List;

    :goto_42
    return-void

    :cond_43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/provider/k;->c:Ljava/util/List;

    goto :goto_42
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 11

    const/16 v9, 0xb

    const/4 v8, 0x2

    iget-object v2, p0, Lcom/twitter/android/provider/k;->e:Landroid/database/Cursor;

    invoke-interface {v2, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_d
    return-object v0

    :cond_e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/twitter/android/provider/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    :cond_26
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_3b

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_26

    :cond_3b
    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v0, "conn_names"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object v0, v1

    goto :goto_d
.end method

.method public final moveToPosition(I)Z
    .registers 4

    invoke-super {p0, p1}, Lcom/twitter/android/provider/g;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/twitter/android/provider/k;->e:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/twitter/android/provider/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
