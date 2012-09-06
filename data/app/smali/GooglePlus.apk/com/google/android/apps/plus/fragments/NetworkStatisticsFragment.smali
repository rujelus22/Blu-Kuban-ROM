.class public Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;
.super Lcom/google/android/apps/plus/fragments/EsFragment;
.source "NetworkStatisticsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment$NetworkStatisticsQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/apps/plus/fragments/EsFragment;",
        "Landroid/content/DialogInterface$OnClickListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field protected static final sSortColumns:[Ljava/lang/String;

.field protected static final sValueColumns:[[I


# instance fields
.field protected mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field protected mBarGraphView:Lcom/google/android/apps/plus/views/BarGraphView;

.field protected mPendingViewType:I

.field protected mViewType:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 63
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment$NetworkStatisticsQuery;->PROJECTION:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment$NetworkStatisticsQuery;->PROJECTION:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment$NetworkStatisticsQuery;->PROJECTION:[Ljava/lang/String;

    aget-object v1, v1, v6

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment$NetworkStatisticsQuery;->PROJECTION:[Ljava/lang/String;

    aget-object v1, v1, v7

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment$NetworkStatisticsQuery;->PROJECTION:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment$NetworkStatisticsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment$NetworkStatisticsQuery;->PROJECTION:[Ljava/lang/String;

    aget-object v1, v1, v8

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment$NetworkStatisticsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment$NetworkStatisticsQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->sSortColumns:[Ljava/lang/String;

    .line 83
    const/4 v0, 0x7

    new-array v0, v0, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_be

    aput-object v1, v0, v4

    new-array v1, v5, [I

    aput v6, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [I

    aput v7, v1, v4

    aput-object v1, v0, v6

    new-array v1, v6, [I

    fill-array-data v1, :array_c6

    aput-object v1, v0, v7

    new-array v1, v5, [I

    aput v8, v1, v4

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v5, [I

    const/4 v3, 0x5

    aput v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [I

    const/4 v3, 0x6

    aput v3, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->sValueColumns:[[I

    return-void

    nop

    :array_be
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_c6
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mViewType:I

    .line 43
    return-void
.end method


# virtual methods
.method protected isEmpty()Z
    .registers 2

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialogInterface"
    .parameter "i"

    .prologue
    .line 210
    packed-switch p2, :pswitch_data_2a

    .line 227
    iput p2, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mPendingViewType:I

    .line 231
    :goto_5
    return-void

    .line 212
    :pswitch_6
    iget v0, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mPendingViewType:I

    iget v1, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mViewType:I

    if-eq v0, v1, :cond_22

    .line 213
    iget v0, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mPendingViewType:I

    iput v0, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mViewType:I

    .line 214
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 215
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->updateTitle(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)V

    .line 217
    :cond_22
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_5

    .line 222
    :pswitch_26
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_5

    .line 210
    :pswitch_data_2a
    .packed-switch -0x2
        :pswitch_26
        :pswitch_6
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    if-eqz p1, :cond_19

    .line 106
    const-string v1, "view_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 107
    const-string v1, "view_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mViewType:I

    .line 108
    iget v1, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mViewType:I

    iput v1, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mPendingViewType:I

    .line 112
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 113
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/content/EsAccount;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 115
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->setHasOptionsMenu(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 118
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .registers 11
    .parameter "i"
    .parameter "bundle"
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
    const/4 v4, 0x0

    .line 143
    packed-switch p1, :pswitch_data_34

    move-object v0, v4

    .line 152
    :goto_5
    return-object v0

    .line 145
    :pswitch_6
    sget-object v0, Lcom/google/android/apps/plus/content/EsProvider;->NETWORK_DATA_STATS_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/content/EsProvider;->appendAccountParameter(Landroid/net/Uri;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/net/Uri;

    move-result-object v2

    .line 147
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Lcom/google/android/apps/plus/phone/EsCursorLoader;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v3, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment$NetworkStatisticsQuery;->PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->sSortColumns:[Ljava/lang/String;

    iget v7, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mViewType:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DESC"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/plus/phone/EsCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 143
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .parameter "inflater"
    .parameter "root"
    .parameter "savedInstanceState"

    .prologue
    .line 122
    const v1, 0x7f03006c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, view:Landroid/view/View;
    const v1, 0x7f090161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/plus/views/BarGraphView;

    iput-object v1, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mBarGraphView:Lcom/google/android/apps/plus/views/BarGraphView;

    .line 126
    return-object v0
.end method

.method public onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .registers 13
    .parameter
    .parameter "cursor"
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
    .line 159
    .local p1, cursorLoader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 160
    .local v0, count:I
    new-array v3, v0, [Lcom/google/android/apps/plus/views/BarGraphView$RowInfo;

    .line 162
    .local v3, rowInfos:[Lcom/google/android/apps/plus/views/BarGraphView$RowInfo;
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 163
    const/4 v1, 0x0

    .local v1, i:I
    :goto_a
    if-ge v1, v0, :cond_48

    .line 164
    new-instance v5, Lcom/google/android/apps/plus/views/BarGraphView$RowInfo;

    invoke-direct {v5}, Lcom/google/android/apps/plus/views/BarGraphView$RowInfo;-><init>()V

    aput-object v5, v3, v1

    .line 165
    aget-object v5, v3, v1

    const/4 v6, 0x1

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/google/android/apps/plus/views/BarGraphView$RowInfo;->mLabel:Ljava/lang/String;

    .line 166
    aget-object v5, v3, v1

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Lcom/google/android/apps/plus/views/BarGraphView$RowInfo;->mValue:J

    .line 167
    const/4 v2, 0x0

    .local v2, j:I
    sget-object v5, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->sValueColumns:[[I

    iget v6, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mViewType:I

    aget-object v5, v5, v6

    array-length v4, v5

    .local v4, size:I
    :goto_2a
    if-ge v2, v4, :cond_42

    .line 168
    aget-object v5, v3, v1

    iget-wide v6, v5, Lcom/google/android/apps/plus/views/BarGraphView$RowInfo;->mValue:J

    sget-object v8, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->sValueColumns:[[I

    iget v9, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mViewType:I

    aget-object v8, v8, v9

    aget v8, v8, v2

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, v5, Lcom/google/android/apps/plus/views/BarGraphView$RowInfo;->mValue:J

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 170
    :cond_42
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 173
    .end local v2           #j:I
    .end local v4           #size:I
    :cond_48
    iget-object v5, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mBarGraphView:Lcom/google/android/apps/plus/views/BarGraphView;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mViewType:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v3, v6}, Lcom/google/android/apps/plus/views/BarGraphView;->update([Lcom/google/android/apps/plus/views/BarGraphView$RowInfo;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->onLoadFinished(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .registers 2
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
    .local p1, cursorLoader:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)V
    .registers 6
    .parameter "item"

    .prologue
    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_4a

    .line 206
    :goto_7
    return-void

    .line 189
    :pswitch_8
    iget v1, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mViewType:I

    iput v1, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mPendingViewType:I

    .line 190
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0803c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 192
    const v1, 0x7f070006

    iget v2, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mViewType:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 193
    const v1, 0x7f080209

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    const v1, 0x7f08020a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_7

    .line 201
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_37
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/content/EsNetworkData;->resetStatsData(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_7

    .line 187
    :pswitch_data_4a
    .packed-switch 0x7f0902f4
        :pswitch_8
        :pswitch_37
    .end packed-switch
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/google/android/apps/plus/fragments/EsFragment;->onResume()V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->updateTitle(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)V

    .line 139
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    const-string v0, "view_type"

    iget v1, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mViewType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    return-void
.end method

.method protected updateTitle(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)V
    .registers 6
    .parameter "activity"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 235
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f070006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 236
    .local v1, types:[Ljava/lang/CharSequence;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_19

    .line 237
    iget v2, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mViewType:I

    aget-object v2, v1, v2

    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 241
    :goto_18
    return-void

    .line 239
    :cond_19
    iget v2, p0, Lcom/google/android/apps/plus/fragments/NetworkStatisticsFragment;->mViewType:I

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setTitlebarTitle(Ljava/lang/String;)V

    goto :goto_18
.end method
