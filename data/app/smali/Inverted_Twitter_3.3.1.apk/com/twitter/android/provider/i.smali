.class public final Lcom/twitter/android/provider/i;
.super Landroid/database/DataSetObservable;


# instance fields
.field final synthetic a:Lcom/twitter/android/provider/g;

.field private final b:Landroid/database/DataSetObserver;

.field private final c:Landroid/database/Cursor;

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Lcom/twitter/android/provider/g;Landroid/database/Cursor;)V
    .registers 5

    iput-object p1, p0, Lcom/twitter/android/provider/i;->a:Lcom/twitter/android/provider/g;

    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    new-instance v0, Lcom/twitter/android/provider/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/android/provider/j;-><init>(Lcom/twitter/android/provider/i;Lcom/twitter/android/provider/h;)V

    iput-object v0, p0, Lcom/twitter/android/provider/i;->b:Landroid/database/DataSetObserver;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/provider/i;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/provider/i;->e:I

    iput-object p2, p0, Lcom/twitter/android/provider/i;->c:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/DataSetObserver;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    iget v0, p0, Lcom/twitter/android/provider/i;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/twitter/android/provider/i;->e:I

    iget v0, p0, Lcom/twitter/android/provider/i;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/twitter/android/provider/i;->c:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/twitter/android/provider/i;->b:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_15
    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/twitter/android/provider/i;->d:Z

    return-void
.end method

.method public final b(Landroid/database/DataSetObserver;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    iget v0, p0, Lcom/twitter/android/provider/i;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/twitter/android/provider/i;->e:I

    iget v0, p0, Lcom/twitter/android/provider/i;->e:I

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/twitter/android/provider/i;->c:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/twitter/android/provider/i;->b:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_14
    return-void
.end method

.method public final notifyChanged()V
    .registers 2

    iget-boolean v0, p0, Lcom/twitter/android/provider/i;->d:Z

    if-eqz v0, :cond_7

    invoke-super {p0}, Landroid/database/DataSetObservable;->notifyChanged()V

    :cond_7
    return-void
.end method

.method public final synthetic registerObserver(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/database/DataSetObserver;

    invoke-virtual {p0, p1}, Lcom/twitter/android/provider/i;->a(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public final synthetic unregisterObserver(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/database/DataSetObserver;

    invoke-virtual {p0, p1}, Lcom/twitter/android/provider/i;->b(Landroid/database/DataSetObserver;)V

    return-void
.end method
