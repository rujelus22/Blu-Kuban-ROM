.class public Lcom/google/android/apps/reader/app/StreamActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "StreamActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/reader/fragment/StreamFragment$Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamActivity"


# instance fields
.field private mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

.field private mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private changeIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeIntent(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method private refresh()V
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->refresh()V

    .line 124
    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 174
    const-string v0, "reader_window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    .line 177
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 164
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 165
    invoke-static {p3}, Lcom/google/android/apps/reader/app/ItemActivity;->hasStream(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 168
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/StreamActivity;->finish()V

    .line 170
    :cond_c
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 81
    :goto_7
    return-void

    .line 75
    :pswitch_8
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->showMainScreen()V

    goto :goto_7

    .line 78
    :pswitch_e
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->refresh()V

    goto :goto_7

    .line 73
    :pswitch_data_14
    .packed-switch 0x7f0b0003
        :pswitch_8
        :pswitch_e
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v1, Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-direct {v1, p0}, Lcom/google/android/apps/reader/widget/ReaderWindow;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    .line 50
    iget-object v1, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->requestCustomTitle()V

    .line 51
    const v1, 0x7f03002f

    invoke-virtual {p0, v1}, Lcom/google/android/apps/reader/app/StreamActivity;->setContentView(I)V

    .line 52
    iget-object v1, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    const v2, 0x7f03001e

    invoke-virtual {v1, v2}, Lcom/google/android/apps/reader/widget/ReaderWindow;->setCustomTitleLayout(I)V

    .line 54
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/StreamActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 55
    .local v0, fragments:Landroid/support/v4/app/FragmentManager;
    const v1, 0x7f0b0032

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/reader/fragment/StreamFragment;

    iput-object v1, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    .line 56
    iget-object v1, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->setObserver(Lcom/google/android/apps/reader/fragment/StreamFragment$Observer;)V

    .line 58
    if-nez p1, :cond_3a

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/StreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/app/StreamActivity;->changeIntent(Landroid/content/Intent;)V

    .line 61
    :cond_3a
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 101
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/StreamActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 149
    packed-switch p1, :pswitch_data_1c

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_12
    move v0, v1

    :goto_13
    return v0

    .line 151
    :pswitch_14
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/StreamActivity;->refresh()V

    move v0, v1

    .line 152
    goto :goto_13

    .line 154
    :cond_19
    const/4 v0, 0x0

    goto :goto_13

    .line 149
    nop

    :pswitch_data_1c
    .packed-switch 0x2e
        :pswitch_14
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/StreamActivity;->changeIntent(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 107
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1e

    .line 118
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_c
    return v0

    .line 109
    :sswitch_d
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->showMainScreen()V

    move v0, v1

    .line 110
    goto :goto_c

    .line 112
    :sswitch_14
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/StreamActivity;->onSearchRequested()Z

    move v0, v1

    .line 113
    goto :goto_c

    .line 115
    :sswitch_19
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/StreamActivity;->refresh()V

    move v0, v1

    .line 116
    goto :goto_c

    .line 107
    :sswitch_data_1e
    .sparse-switch
        0x102002c -> :sswitch_d
        0x7f0b0096 -> :sswitch_19
        0x7f0b0097 -> :sswitch_14
    .end sparse-switch
.end method

.method public onSearchRequested()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 129
    if-nez v0, :cond_13

    .line 130
    const-string v0, "StreamActivity"

    const-string v1, "Cannot search without an account"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 144
    :goto_12
    return v0

    .line 133
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/StreamActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 134
    const-string v2, "query"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 137
    const-string v3, "authAccount"

    iget-object v0, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getStreamId()Ljava/lang/String;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_36

    .line 140
    const-string v3, "stream_id"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_36
    invoke-virtual {p0, v1, v5, v2, v4}, Lcom/google/android/apps/reader/app/StreamActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    move v0, v5

    .line 144
    goto :goto_12
.end method

.method public onStreamChanged()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getStreamTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/StreamActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "title"
    .parameter "color"

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 95
    iget-object v0, p0, Lcom/google/android/apps/reader/app/StreamActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 96
    return-void
.end method
