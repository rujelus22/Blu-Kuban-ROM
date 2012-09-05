.class public final Lcom/google/android/apps/plus/fragments/CircleNameResolver;
.super Ljava/lang/Object;
.source "CircleNameResolver.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field private mCircleNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mLoaded:Z

.field private final mLoaderId:I

.field private final mLoaderManager:Landroid/support/v4/app/LoaderManager;

.field private final mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "loaderManager"
    .parameter "account"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/google/android/apps/plus/content/EsAccount;I)V
    .registers 6
    .parameter "context"
    .parameter "loaderManager"
    .parameter "account"
    .parameter "instanceId"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 67
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    .line 69
    iput-object p3, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 70
    add-int/lit16 v0, p4, 0x800

    iput v0, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mLoaderId:I

    .line 71
    return-void
.end method


# virtual methods
.method public declared-synchronized getCircleNameListForPackedIds(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .parameter "packedCircleIds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mLoaded:Z

    if-eqz v4, :cond_10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_3a

    move-result v4

    if-eqz v4, :cond_12

    .line 139
    :cond_10
    monitor-exit p0

    return-object v0

    .line 127
    :cond_12
    const/4 v2, 0x0

    .line 128
    .local v2, offset:I
    :goto_13
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_10

    .line 129
    const/16 v4, 0x7c

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 130
    .local v3, separatorIndex:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_26

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 133
    :cond_26
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mCircleNames:Ljava/util/Map;

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    .local v1, name:Ljava/lang/String;
    if-eqz v1, :cond_37

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_3a

    .line 137
    :cond_37
    add-int/lit8 v2, v3, 0x1

    .line 138
    goto :goto_13

    .line 120
    .end local v0           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #name:Ljava/lang/String;
    .end local v2           #offset:I
    .end local v3           #separatorIndex:I
    :catchall_3a
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getCircleNamesForPackedIds(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 7
    .parameter "packedCircleIds"

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mLoaded:Z

    if-eqz v3, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 88
    :cond_b
    const-string v3, ""
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_55

    .line 110
    :goto_d
    monitor-exit p0

    return-object v3

    .line 91
    :cond_f
    :try_start_f
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 95
    const/4 v1, 0x0

    .line 96
    .local v1, offset:I
    :goto_16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4e

    .line 97
    const/16 v3, 0x7c

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 98
    .local v2, separatorIndex:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_29

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 101
    :cond_29
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mCircleNames:Ljava/util/Map;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_4b

    .line 103
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_46

    .line 104
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_46
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_4b
    add-int/lit8 v1, v2, 0x1

    .line 109
    goto :goto_16

    .line 110
    .end local v0           #name:Ljava/lang/String;
    .end local v2           #separatorIndex:I
    :cond_4e
    iget-object v3, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_53
    .catchall {:try_start_f .. :try_end_53} :catchall_55

    move-result-object v3

    goto :goto_d

    .line 87
    .end local v1           #offset:I
    :catchall_55
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public initLoader()V
    .registers 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mLoaderManager:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mLoaderId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 147
    return-void
.end method

.method public isLoaded()Z
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mLoaded:Z

    return v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 10
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 154
    new-instance v0, Lcom/google/android/apps/plus/fragments/CircleListLoader;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "circle_id"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "circle_name"

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/google/android/apps/plus/fragments/CircleListLoader;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I[Ljava/lang/String;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 7
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    const/4 v3, 0x1

    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_20

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 166
    :cond_e
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_e

    .line 169
    :cond_20
    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mCircleNames:Ljava/util/Map;

    .line 170
    iput-boolean v3, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mLoaded:Z

    .line 171
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 172
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, loader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 180
    return-void
.end method

.method public registerObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/CircleNameResolver;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 184
    return-void
.end method
