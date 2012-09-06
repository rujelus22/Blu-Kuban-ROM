.class public abstract Lcom/twitter/android/provider/g;
.super Landroid/database/CursorWrapper;


# instance fields
.field protected final a:Lcom/twitter/android/provider/i;

.field protected final b:I

.field protected c:Ljava/util/List;

.field protected d:I

.field protected e:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 3

    const/16 v0, 0x190

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/provider/g;-><init>(Landroid/database/Cursor;I)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/android/provider/g;->d:I

    new-instance v0, Lcom/twitter/android/provider/i;

    invoke-direct {v0, p0, p1}, Lcom/twitter/android/provider/i;-><init>(Lcom/twitter/android/provider/g;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/twitter/android/provider/g;->a:Lcom/twitter/android/provider/i;

    iput-object p1, p0, Lcom/twitter/android/provider/g;->e:Landroid/database/Cursor;

    iput p2, p0, Lcom/twitter/android/provider/g;->b:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/provider/g;->c:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/twitter/android/provider/g;->c:Ljava/util/List;

    iget v1, p0, Lcom/twitter/android/provider/g;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/provider/g;->c:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/provider/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPosition()I
    .registers 2

    iget v0, p0, Lcom/twitter/android/provider/g;->d:I

    return v0
.end method

.method public moveToFirst()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twitter/android/provider/g;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .registers 2

    iget-object v0, p0, Lcom/twitter/android/provider/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/provider/g;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .registers 2

    iget v0, p0, Lcom/twitter/android/provider/g;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/provider/g;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/twitter/android/provider/g;->getCount()I

    move-result v1

    if-gez p1, :cond_b

    const/4 v1, -0x1

    iput v1, p0, Lcom/twitter/android/provider/g;->d:I

    :goto_a
    return v0

    :cond_b
    if-lt p1, v1, :cond_10

    iput v1, p0, Lcom/twitter/android/provider/g;->d:I

    goto :goto_a

    :cond_10
    iput p1, p0, Lcom/twitter/android/provider/g;->d:I

    const/4 v0, 0x1

    goto :goto_a
.end method

.method public moveToPrevious()Z
    .registers 2

    iget v0, p0, Lcom/twitter/android/provider/g;->d:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/provider/g;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/provider/g;->a:Lcom/twitter/android/provider/i;

    invoke-virtual {v0, p1}, Lcom/twitter/android/provider/i;->a(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public requery()Z
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/provider/g;->a:Lcom/twitter/android/provider/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/android/provider/i;->a(Z)V

    iget-object v1, p0, Lcom/twitter/android/provider/g;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    invoke-virtual {p0}, Lcom/twitter/android/provider/g;->a()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/twitter/android/provider/i;->a(Z)V

    invoke-virtual {v0}, Lcom/twitter/android/provider/i;->notifyChanged()V

    return v1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/provider/g;->a:Lcom/twitter/android/provider/i;

    invoke-virtual {v0, p1}, Lcom/twitter/android/provider/i;->b(Landroid/database/DataSetObserver;)V

    return-void
.end method
