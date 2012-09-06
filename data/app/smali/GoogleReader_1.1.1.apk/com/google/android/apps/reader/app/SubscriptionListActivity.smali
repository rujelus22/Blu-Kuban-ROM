.class public Lcom/google/android/apps/reader/app/SubscriptionListActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SubscriptionListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/reader/fragment/StreamFragment$Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/app/SubscriptionListActivity$1;,
        Lcom/google/android/apps/reader/app/SubscriptionListActivity$SubscriptionListObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubscriptionList"


# instance fields
.field private mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

.field private mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

.field private mSubscriptionList:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 221
    return-void
.end method

.method private changeIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 84
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 85
    .local v0, title:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mSubscriptionList:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->changeUri(Landroid/net/Uri;Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->syncFragments()V

    .line 87
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
    .line 114
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 115
    .local v0, fragments:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method private refresh()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mSubscriptionList:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->refresh()V

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    if-eqz v0, :cond_e

    .line 156
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->refresh()V

    .line 158
    :cond_e
    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 206
    const-string v0, "reader_window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    .line 209
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
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 151
    :goto_7
    return-void

    .line 145
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mSubscriptionList:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->showMainScreen()V

    goto :goto_7

    .line 148
    :pswitch_e
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->refresh()V

    goto :goto_7

    .line 143
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
    .line 56
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    new-instance v1, Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-direct {v1, p0}, Lcom/google/android/apps/reader/widget/ReaderWindow;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    .line 58
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->requestCustomTitle()V

    .line 59
    const v1, 0x7f03003a

    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->setContentView(I)V

    .line 60
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    const v2, 0x7f03003c

    invoke-virtual {v1, v2}, Lcom/google/android/apps/reader/widget/ReaderWindow;->setCustomTitleLayout(I)V

    .line 61
    const v1, 0x7f0b0063

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    iput-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mSubscriptionList:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    .line 62
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mSubscriptionList:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    new-instance v2, Lcom/google/android/apps/reader/app/SubscriptionListActivity$SubscriptionListObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/reader/app/SubscriptionListActivity$SubscriptionListObserver;-><init>(Lcom/google/android/apps/reader/app/SubscriptionListActivity;Lcom/google/android/apps/reader/app/SubscriptionListActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 63
    const v1, 0x7f0b0032

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/reader/fragment/StreamFragment;

    iput-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    .line 64
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    if-eqz v1, :cond_4f

    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/StreamFragment;->isInLayout()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 65
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->setObserver(Lcom/google/android/apps/reader/fragment/StreamFragment$Observer;)V

    .line 67
    :cond_4f
    if-nez p1, :cond_58

    .line 68
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 69
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->changeIntent(Landroid/content/Intent;)V

    .line 71
    .end local v0           #intent:Landroid/content/Intent;
    :cond_58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 183
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 184
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    .line 200
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 191
    :sswitch_d
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mSubscriptionList:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->showMainScreen()V

    move v0, v1

    .line 192
    goto :goto_c

    .line 194
    :sswitch_14
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->onSearchRequested()Z

    move v0, v1

    .line 195
    goto :goto_c

    .line 197
    :sswitch_19
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->refresh()V

    move v0, v1

    .line 198
    goto :goto_c

    .line 189
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
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->syncFragments()V

    .line 80
    return-void
.end method

.method public onSearchRequested()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mSubscriptionList:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 163
    if-nez v0, :cond_13

    .line 164
    const-string v0, "SubscriptionList"

    const-string v1, "Cannot search without an account"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 177
    :goto_12
    return v0

    .line 167
    :cond_13
    const/4 v1, 0x0

    .line 169
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 170
    const-string v3, "authAccount"

    iget-object v0, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mSubscriptionList:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getTagId()Ljava/lang/String;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_2d

    .line 173
    const-string v3, "stream_id"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_2d
    invoke-virtual {p0, v1, v5, v2, v4}, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v0, v5

    .line 177
    goto :goto_12
.end method

.method public onStreamChanged()V
    .registers 1

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->syncFragments()V

    .line 219
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "title"
    .parameter "color"

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 123
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 7
    .parameter "fragment"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 128
    invoke-virtual {p2, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, type:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/StreamFragment;->isInLayout()Z

    move-result v1

    if-eqz v1, :cond_2a

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    sget-object v1, Lcom/google/android/apps/reader/fragment/StreamFragment;->SUPPORTED_CONTENT_TYPES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 133
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v1, p2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeIntent(Landroid/content/Intent;)V

    .line 137
    :goto_29
    return-void

    .line 135
    :cond_2a
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_29
.end method

.method syncFragments()V
    .registers 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->isInLayout()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getStreamId()Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_1a

    .line 94
    iget-object v1, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mSubscriptionList:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->highlight(Ljava/lang/String;)V

    .line 110
    :cond_19
    :goto_19
    return-void

    .line 97
    :cond_1a
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mSubscriptionList:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getStreamUri()Landroid/net/Uri;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_19

    .line 99
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mSubscriptionList:Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/SubscriptionListFragment;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_36

    .line 102
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 104
    :cond_36
    iget-object v0, p0, Lcom/google/android/apps/reader/app/SubscriptionListActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeIntent(Landroid/content/Intent;)V

    goto :goto_19
.end method
