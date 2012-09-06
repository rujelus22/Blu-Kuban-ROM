.class public Lcom/google/android/apps/reader/app/ItemActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ItemActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/apps/reader/fragment/ItemFragment$Observer;
.implements Lcom/google/android/apps/reader/widget/ItemViewFactory$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/reader/app/ItemActivity$1;,
        Lcom/google/android/apps/reader/app/ItemActivity$DataObserver;
    }
.end annotation


# static fields
.field private static final EXTRA_STREAM:Ljava/lang/String; = "com.google.reader.result.extra.STREAM"

.field private static final KEY_TITLE:Ljava/lang/String; = "reader:title"


# instance fields
.field private mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

.field private mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

.field private mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 283
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/reader/app/ItemActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/ItemActivity;->handleItemChanged()V

    return-void
.end method

.method private changeIntent(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    .line 111
    const-string v5, "com.google.reader.intent.action.VIEW_ITEM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 113
    .local v4, streamUri:Landroid/net/Uri;
    const-string v5, "item_id"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 114
    .local v1, itemId:J
    invoke-static {v4}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 115
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/reader/provider/ReaderContract$Items;->itemUri(Lcom/google/android/accounts/Account;J)Landroid/net/Uri;

    move-result-object v3

    .line 116
    .local v3, itemUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/apps/reader/fragment/ItemFragment;->changeUri(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 122
    .end local v0           #account:Lcom/google/android/accounts/Account;
    .end local v1           #itemId:J
    :goto_25
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mTitle:Ljava/lang/CharSequence;

    .line 123
    iget-object v5, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mTitle:Ljava/lang/CharSequence;

    if-eqz v5, :cond_36

    .line 124
    iget-object v5, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Lcom/google/android/apps/reader/app/ItemActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    :cond_36
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/ItemActivity;->syncFragments()V

    .line 127
    return-void

    .line 118
    .end local v3           #itemUri:Landroid/net/Uri;
    .end local v4           #streamUri:Landroid/net/Uri;
    :cond_3a
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 119
    .restart local v3       #itemUri:Landroid/net/Uri;
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 120
    .restart local v4       #streamUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v5, v3, v4}, Lcom/google/android/apps/reader/fragment/ItemFragment;->changeUri(Landroid/net/Uri;Landroid/net/Uri;)V

    goto :goto_25
.end method

.method private getAccount()Lcom/google/android/accounts/Account;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private getStreamId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getStreamId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleItemChanged()V
    .registers 1

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/ItemActivity;->updateResult()V

    .line 193
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/ItemActivity;->updateHighlight()V

    .line 194
    return-void
.end method

.method public static hasStream(Landroid/content/Intent;)Z
    .registers 3
    .parameter "result"

    .prologue
    const/4 v1, 0x0

    .line 271
    if-eqz p0, :cond_d

    const-string v0, "com.google.reader.result.extra.STREAM"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c
.end method

.method private syncFragments()V
    .registers 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/StreamFragment;->isInLayout()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getItemsUri()Landroid/net/Uri;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_33

    .line 138
    iget-object v1, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v1}, Lcom/google/android/apps/reader/fragment/StreamFragment;->getItemsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 140
    const-string v0, "android.intent.extra.TITLE"

    iget-object v2, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/reader/fragment/StreamFragment;->changeIntent(Landroid/content/Intent;)V

    .line 147
    :cond_33
    return-void
.end method

.method private updateHighlight()V
    .registers 5

    .prologue
    .line 221
    iget-object v2, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->isInLayout()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 222
    iget-object v2, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getItemId()J

    move-result-wide v0

    .line 223
    .local v0, item:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1d

    .line 224
    iget-object v2, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/reader/fragment/StreamFragment;->highlight(J)V

    .line 227
    .end local v0           #item:J
    :cond_1d
    return-void
.end method

.method private updateResult()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->getItemUri()Landroid/net/Uri;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_2a

    .line 208
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 209
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 210
    const-string v0, "com.google.reader.result.extra.STREAM"

    iget-object v2, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->isInLayout()Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x1

    :goto_20
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/reader/app/ItemActivity;->setResult(ILandroid/content/Intent;)V

    .line 215
    :goto_27
    return-void

    :cond_28
    move v2, v3

    .line 210
    goto :goto_20

    .line 213
    :cond_2a
    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/ItemActivity;->setResult(I)V

    goto :goto_27
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "name"

    .prologue
    .line 276
    const-string v0, "reader_window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 277
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    .line 279
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_1a

    .line 164
    :goto_7
    return-void

    .line 155
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->showMainScreen()V

    goto :goto_7

    .line 158
    :sswitch_e
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->send()V

    goto :goto_7

    .line 161
    :sswitch_14
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->moveToNext()Z

    goto :goto_7

    .line 153
    :sswitch_data_1a
    .sparse-switch
        0x7f0b0003 -> :sswitch_8
        0x7f0b0006 -> :sswitch_e
        0x7f0b0039 -> :sswitch_14
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    new-instance v3, Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-direct {v3, p0}, Lcom/google/android/apps/reader/widget/ReaderWindow;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    .line 70
    iget-object v3, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/widget/ReaderWindow;->requestCustomTitle()V

    .line 71
    const v3, 0x7f030019

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/ItemActivity;->setContentView(I)V

    .line 72
    iget-object v3, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    const v4, 0x7f030020

    invoke-virtual {v3, v4}, Lcom/google/android/apps/reader/widget/ReaderWindow;->setCustomTitleLayout(I)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/ItemActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 74
    .local v0, fragments:Landroid/support/v4/app/FragmentManager;
    const v3, 0x7f0b0038

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/reader/fragment/ItemFragment;

    iput-object v3, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    .line 75
    iget-object v3, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v3, p0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->setObserver(Lcom/google/android/apps/reader/fragment/ItemFragment$Observer;)V

    .line 76
    new-instance v2, Lcom/google/android/apps/reader/app/ItemActivity$DataObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/apps/reader/app/ItemActivity$DataObserver;-><init>(Lcom/google/android/apps/reader/app/ItemActivity;Lcom/google/android/apps/reader/app/ItemActivity$1;)V

    .line 77
    .local v2, observer:Landroid/database/DataSetObserver;
    iget-object v3, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/reader/fragment/ItemFragment;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 78
    iget-object v4, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    const v3, 0x7f0b0008

    invoke-virtual {p0, v3}, Lcom/google/android/apps/reader/app/ItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Lcom/google/android/apps/reader/fragment/ItemFragment;->setStarToggle(Landroid/widget/CheckBox;)V

    .line 79
    const v3, 0x7f0b0032

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/google/android/apps/reader/fragment/StreamFragment;

    iput-object v3, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    .line 80
    iget-object v3, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    if-eqz v3, :cond_66

    iget-object v3, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v3}, Lcom/google/android/apps/reader/fragment/StreamFragment;->isInLayout()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 81
    iget-object v3, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mStream:Lcom/google/android/apps/reader/fragment/StreamFragment;

    invoke-virtual {v3, v2}, Lcom/google/android/apps/reader/fragment/StreamFragment;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 83
    :cond_66
    if-nez p1, :cond_6f

    .line 84
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/ItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 85
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/google/android/apps/reader/app/ItemActivity;->changeIntent(Landroid/content/Intent;)V

    .line 87
    .end local v1           #intent:Landroid/content/Intent;
    :cond_6f
    return-void
.end method

.method public onItemChanged()V
    .registers 1

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/ItemActivity;->handleItemChanged()V

    .line 189
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/reader/fragment/ItemFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/apps/reader/app/ItemActivity;->changeIntent(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 168
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 173
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 170
    :pswitch_c
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->showMainScreen()V

    .line 171
    const/4 v0, 0x1

    goto :goto_b

    .line 168
    nop

    :pswitch_data_14
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mItem:Lcom/google/android/apps/reader/fragment/ItemFragment;

    invoke-virtual {v0}, Lcom/google/android/apps/reader/fragment/ItemFragment;->updateProgress()V

    .line 182
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 98
    const-string v0, "reader:title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mTitle:Ljava/lang/CharSequence;

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_14

    .line 100
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/reader/app/ItemActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    :cond_14
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/ItemActivity;->syncFragments()V

    .line 103
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    const-string v0, "reader:title"

    iget-object v1, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method public onSearchRequested()Z
    .registers 9

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/ItemActivity;->getAccount()Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 248
    .local v0, account:Lcom/google/android/accounts/Account;
    if-eqz v0, :cond_25

    .line 249
    const/4 v3, 0x0

    .line 250
    .local v3, initialQuery:Ljava/lang/String;
    const/4 v4, 0x0

    .line 251
    .local v4, selectInitialQuery:Z
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v1, appSearchData:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 253
    .local v2, globalSearch:Z
    const-string v6, "authAccount"

    iget-object v7, v0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-direct {p0}, Lcom/google/android/apps/reader/app/ItemActivity;->getStreamId()Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, streamId:Ljava/lang/String;
    if-eqz v5, :cond_20

    .line 256
    const-string v6, "stream_id"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_20
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/google/android/apps/reader/app/ItemActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 259
    const/4 v6, 0x1

    .line 261
    .end local v1           #appSearchData:Landroid/os/Bundle;
    .end local v2           #globalSearch:Z
    .end local v3           #initialQuery:Ljava/lang/String;
    .end local v4           #selectInitialQuery:Z
    .end local v5           #streamId:Ljava/lang/String;
    :goto_24
    return v6

    :cond_25
    const/4 v6, 0x0

    goto :goto_24
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "title"
    .parameter "color"

    .prologue
    .line 231
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 233
    iget-object v0, p0, Lcom/google/android/apps/reader/app/ItemActivity;->mReaderWindow:Lcom/google/android/apps/reader/widget/ReaderWindow;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/reader/widget/ReaderWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 234
    return-void
.end method
