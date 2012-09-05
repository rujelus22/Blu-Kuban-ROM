.class public Lcom/android/browser/ComboViewActivity;
.super Landroid/app/Activity;
.source "ComboViewActivity.java"

# interfaces
.implements Lcom/android/browser/CombinedBookmarksCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ComboViewActivity$2;,
        Lcom/android/browser/ComboViewActivity$TabsAdapter;
    }
.end annotation


# instance fields
.field private final delayBrightnessReset:I

.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mTabsAdapter:Lcom/android/browser/ComboViewActivity$TabsAdapter;

.field private mViewPager:Lcom/android/browser/BookmarkViewPager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/ComboViewActivity;->delayBrightnessReset:I

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ComboViewActivity;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/browser/ComboViewActivity;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 143
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0, v6}, Lcom/android/browser/ComboViewActivity;->setResult(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 63
    const-string v1, "combo_args"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 64
    const-string v2, "initial_view"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_a0

    invoke-static {v0}, Lcom/android/browser/UI$ComboViews;->valueOf(Ljava/lang/String;)Lcom/android/browser/UI$ComboViews;

    move-result-object v0

    .line 68
    :goto_24
    new-instance v2, Lcom/android/browser/BookmarkViewPager;

    invoke-direct {v2, p0}, Lcom/android/browser/BookmarkViewPager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Lcom/android/browser/BookmarkViewPager;

    .line 69
    iget-object v2, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Lcom/android/browser/BookmarkViewPager;

    const v3, 0x7f0d0003

    invoke-virtual {v2, v3}, Lcom/android/browser/BookmarkViewPager;->setId(I)V

    .line 70
    iget-object v2, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Lcom/android/browser/BookmarkViewPager;

    invoke-virtual {p0, v2}, Lcom/android/browser/ComboViewActivity;->setContentView(Landroid/view/View;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    .line 73
    invoke-virtual {v2, v8}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 74
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 75
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 77
    invoke-virtual {v2, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 83
    :goto_4c
    new-instance v3, Lcom/android/browser/ComboViewActivity$TabsAdapter;

    iget-object v4, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Lcom/android/browser/BookmarkViewPager;

    invoke-direct {v3, p0, v4}, Lcom/android/browser/ComboViewActivity$TabsAdapter;-><init>(Landroid/app/Activity;Lcom/android/browser/BookmarkViewPager;)V

    iput-object v3, p0, Lcom/android/browser/ComboViewActivity;->mTabsAdapter:Lcom/android/browser/ComboViewActivity$TabsAdapter;

    .line 84
    iget-object v3, p0, Lcom/android/browser/ComboViewActivity;->mTabsAdapter:Lcom/android/browser/ComboViewActivity$TabsAdapter;

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0c0006

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    const-class v5, Lcom/android/browser/BrowserBookmarksPage;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/browser/ComboViewActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 86
    iget-object v3, p0, Lcom/android/browser/ComboViewActivity;->mTabsAdapter:Lcom/android/browser/ComboViewActivity$TabsAdapter;

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0c0008

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    const-class v5, Lcom/android/browser/BrowserHistoryPage;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/browser/ComboViewActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 88
    iget-object v3, p0, Lcom/android/browser/ComboViewActivity;->mTabsAdapter:Lcom/android/browser/ComboViewActivity$TabsAdapter;

    invoke-virtual {v2}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v4

    const v5, 0x7f0c0009

    invoke-virtual {v4, v5}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v4

    const-class v5, Lcom/android/browser/BrowserSnapshotPage;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/browser/ComboViewActivity$TabsAdapter;->addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 91
    if-eqz p1, :cond_a7

    .line 92
    const-string v0, "tab"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 108
    :goto_96
    iput-object p0, p0, Lcom/android/browser/ComboViewActivity;->mActivity:Landroid/app/Activity;

    .line 109
    new-instance v0, Lcom/android/browser/ComboViewActivity$1;

    invoke-direct {v0, p0}, Lcom/android/browser/ComboViewActivity$1;-><init>(Lcom/android/browser/ComboViewActivity;)V

    iput-object v0, p0, Lcom/android/browser/ComboViewActivity;->mHandler:Landroid/os/Handler;

    .line 122
    return-void

    .line 65
    :cond_a0
    sget-object v0, Lcom/android/browser/UI$ComboViews;->Bookmarks:Lcom/android/browser/UI$ComboViews;

    goto :goto_24

    .line 79
    :cond_a3
    invoke-virtual {v2, v6}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_4c

    .line 95
    :cond_a7
    sget-object v1, Lcom/android/browser/ComboViewActivity$2;->$SwitchMap$com$android$browser$UI$ComboViews:[I

    invoke-virtual {v0}, Lcom/android/browser/UI$ComboViews;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_c6

    goto :goto_96

    .line 97
    :pswitch_b3
    iget-object v0, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Lcom/android/browser/BookmarkViewPager;

    invoke-virtual {v0, v6}, Lcom/android/browser/BookmarkViewPager;->setCurrentItem(I)V

    goto :goto_96

    .line 100
    :pswitch_b9
    iget-object v0, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Lcom/android/browser/BookmarkViewPager;

    invoke-virtual {v0, v7}, Lcom/android/browser/BookmarkViewPager;->setCurrentItem(I)V

    goto :goto_96

    .line 103
    :pswitch_bf
    iget-object v0, p0, Lcom/android/browser/ComboViewActivity;->mViewPager:Lcom/android/browser/BookmarkViewPager;

    invoke-virtual {v0, v8}, Lcom/android/browser/BookmarkViewPager;->setCurrentItem(I)V

    goto :goto_96

    .line 95
    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_b9
        :pswitch_bf
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 182
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 183
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->finish()V

    .line 184
    const/4 v0, 0x1

    .line 195
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_d
.end method

.method protected onResume()V
    .registers 5

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 128
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 129
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 130
    iget-object v1, p0, Lcom/android/browser/ComboViewActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x384

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 131
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    const-string v0, "tab"

    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 138
    return-void
.end method

.method public varargs openInNewTab([Ljava/lang/String;)V
    .registers 4
    .parameter "urls"

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v0, i:Landroid/content/Intent;
    const-string v1, "open_all"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/ComboViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->finish()V

    .line 158
    return-void
.end method

.method public openSnapshot(J)V
    .registers 5
    .parameter "id"

    .prologue
    .line 167
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 168
    .local v0, i:Landroid/content/Intent;
    const-string v1, "snapshot_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 169
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/ComboViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->finish()V

    .line 171
    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 148
    .local v0, i:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/ComboViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/browser/ComboViewActivity;->finish()V

    .line 150
    return-void
.end method
