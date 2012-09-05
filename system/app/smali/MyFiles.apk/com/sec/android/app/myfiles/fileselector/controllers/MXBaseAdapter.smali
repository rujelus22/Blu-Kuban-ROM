.class public abstract Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "MXBaseAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field mObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/database/DataSetObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;->mObservers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .registers 3
    .parameter "arg0"

    .prologue
    .line 20
    const/4 v0, -0x1

    return v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 26
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 4

    .prologue
    .line 40
    iget-object v2, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 42
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/database/DataSetObserver;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/DataSetObserver;

    .line 48
    .local v1, observer:Landroid/database/DataSetObserver;
    invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V

    goto :goto_6

    .line 52
    .end local v1           #observer:Landroid/database/DataSetObserver;
    :cond_16
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_d
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/controllers/MXBaseAdapter;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method
