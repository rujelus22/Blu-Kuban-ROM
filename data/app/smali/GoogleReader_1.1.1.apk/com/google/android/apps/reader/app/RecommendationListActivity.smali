.class public Lcom/google/android/apps/reader/app/RecommendationListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "RecommendationListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/reader/fragment/StreamFragment$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/app/RecommendationListActivity$1;,
        Lcom/google/android/apps/reader/app/RecommendationListActivity$RecommendationObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RecommendationList"


# instance fields
.field private mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

.field private mRecommendationList:Lcom/google/android/apps/reader/fragment/RecommendationListFragment;

.field private mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 217
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/reader/app/RecommendationListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->syncFragments()V

    return-void
.end method

.method private changeIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 82
    .local v0, recommendationsUri:Landroid/net/Uri;
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 83
    .local v1, streamUri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mRecommendationList:Lcom/google/android/apps/reader/fragment/RecommendationListFragment;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->changeUri(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 84
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->syncFragments()V

    .line 85
    return-void
.end method

.method private findFragmentById(I)Landroid/support/v4/app/Fragment;
    .registers 4
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/Fragment;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 111
    .local v0, fragments:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method private refresh()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mRecommendationList:Lcom/google/android/apps/reader/fragment/RecommendationListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->refresh()V

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    if-eqz v0, :cond_e

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->refresh()V

    .line 154
    :cond_e
    return-void
.end method

.method private syncFragments()V
    .registers 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->isInLayout()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getStreamId()Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_1a

    .line 92
    iget-object v1, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mRecommendationList:Lcom/google/android/apps/reader/fragment/RecommendationListFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->highlight(Ljava/lang/String;)V

    .line 106
    :cond_19
    :goto_19
    return-void

    .line 95
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mRecommendationList:Lcom/google/android/apps/reader/fragment/RecommendationListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->getStreamUri()Landroid/net/Uri;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_19

    .line 97
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 98
    const-string v0, "android.intent.extra.TITLE"

    const v2, 0x7f0d001f

    invoke-virtual {p0, v2}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeIntent(Landroid/content/Intent;)V

    goto :goto_19
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 202
    const-string v0, "reader_window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    .line 205
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 147
    :goto_7
    return-void

    .line 141
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mRecommendationList:Lcom/google/android/apps/reader/fragment/RecommendationListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->showMainScreen()V

    goto :goto_7

    .line 144
    :pswitch_e
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->refresh()V

    goto :goto_7

    .line 139
    :pswitch_data_12
    .packed-switch 0x7f0b0003
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v1, Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-direct {v1, p0}, Lcom/google/android/apps/reader/widget/ReaderWindow;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    .line 56
    iget-object v1, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->requestCustomTitle()V

    .line 57
    const v1, 0x7f03002c

    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->setContentView(I)V

    .line 58
    iget-object v1, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    const v2, 0x7f03002d

    invoke-virtual {v1, v2}, Lcom/google/android/apps/reader/widget/ReaderWindow;->setCustomTitleLayout(I)V

    .line 59
    const v1, 0x7f0b0058

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;

    iput-object v1, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mRecommendationList:Lcom/google/android/apps/reader/fragment/RecommendationListFragment;

    .line 60
    iget-object v1, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mRecommendationList:Lcom/google/android/apps/reader/fragment/RecommendationListFragment;

    new-instance v2, Lcom/google/android/apps/reader/app/RecommendationListActivity$RecommendationObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/reader/app/RecommendationListActivity$RecommendationObserver;-><init>(Lcom/google/android/apps/reader/app/RecommendationListActivity;Lcom/google/android/apps/reader/app/RecommendationListActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 61
    const v1, 0x7f0b0032

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/reader/fragment/StreamFragment;

    iput-object v1, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    .line 62
    iget-object v1, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/StreamFragment;->isInLayout()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 63
    iget-object v1, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->setObserver(Lcom/google/android/apps/reader/fragment/StreamFragment$Observer;)V

    .line 65
    :cond_4f
    if-nez p1, :cond_58

    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 67
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->changeIntent(Landroid/content/Intent;)V

    .line 69
    .end local v0           #intent:Landroid/content/Intent;
    :cond_58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 179
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 185
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    .line 196
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 187
    :sswitch_d
    iget-object v0, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mRecommendationList:Lcom/google/android/apps/reader/fragment/RecommendationListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->showMainScreen()V

    move v0, v1

    .line 188
    goto :goto_c

    .line 190
    :sswitch_14
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->onSearchRequested()Z

    move v0, v1

    .line 191
    goto :goto_c

    .line 193
    :sswitch_19
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->refresh()V

    move v0, v1

    .line 194
    goto :goto_c

    .line 185
    :sswitch_data_1e
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0b0096 -> :sswitch_19
        0x7f0b0097 -> :sswitch_14
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 77
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->syncFragments()V

    .line 78
    return-void
.end method

.method public onSearchRequested()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mRecommendationList:Lcom/google/android/apps/reader/fragment/RecommendationListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 159
    if-nez v0, :cond_13

    .line 160
    const-string v0, "RecommendationList"

    const-string v1, "Cannot search without an account"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 173
    :goto_12
    return v0

    .line 163
    :cond_13
    const/4 v1, 0x0

    .line 165
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 166
    const-string v3, "authAccount"

    iget-object v0, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mRecommendationList:Lcom/google/android/apps/reader/fragment/RecommendationListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/RecommendationListFragment;->getStreamId()Ljava/lang/String;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_2d

    .line 169
    const-string v3, "stream_id"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_2d
    invoke-virtual {p0, v1, v5, v2, v4}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v0, v5

    .line 173
    goto :goto_12
.end method

.method public onStreamChanged()V
    .registers 1

    .prologue
    .line 214
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/RecommendationListActivity;->syncFragments()V

    .line 215
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "title"
    .parameter "color"

    .prologue
    .line 116
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 7
    .parameter "fragment"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 124
    invoke-virtual {p2, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, type:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/StreamFragment;->isInLayout()Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Streams;->CONTENT_ITEM_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    sget-object v1, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 129
    :cond_2c
    iget-object v1, p0, Lcom/google/android/apps/reader/app/RecommendationListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeIntent(Landroid/content/Intent;)V

    .line 133
    :goto_31
    return-void

    .line 131
    :cond_32
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_31
.end method
