.class public abstract Landroid/support/v4/view/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/database/DataSetObservable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/x;->a:Landroid/database/DataSetObservable;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 268
    const/4 v0, -0x1

    return v0
.end method

.method public a(I)Ljava/lang/CharSequence;
    .registers 3
    .parameter

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/view/View;I)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method instantiateItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/x;->a(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/v4/view/x;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 250
    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 159
    return-void
.end method

.method public a(Landroid/view/View;ILjava/lang/Object;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Required method destroyItem was not overridden"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/view/ViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/support/v4/view/x;->a(Landroid/view/View;)V

    .line 96
    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/x;->a(Landroid/view/View;ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/Object;)Z
.end method

.method public b(I)F
    .registers 3
    .parameter

    .prologue
    .line 308
    const/high16 v0, 0x3f80

    return v0
.end method

.method public b()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 239
    const/4 v0, 0x0

    return-object v0
.end method

.method b(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/v4/view/x;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method public b(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 219
    return-void
.end method

.method public b(Landroid/view/View;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    return-void
.end method

.method public b(Landroid/view/ViewGroup;)V
    .registers 2
    .parameter

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Landroid/support/v4/view/x;->b(Landroid/view/View;)V

    .line 149
    return-void
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/x;->b(Landroid/view/View;ILjava/lang/Object;)V

    .line 138
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Landroid/support/v4/view/x;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 277
    return-void
.end method
