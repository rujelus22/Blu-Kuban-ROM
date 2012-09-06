.class public abstract Landroid/support/v4/view/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/database/DataSetObservable;


# virtual methods
.method public abstract a()I
.end method

.method final a(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/v4/view/v;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final b(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/v4/view/v;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method public abstract b()Z
.end method
