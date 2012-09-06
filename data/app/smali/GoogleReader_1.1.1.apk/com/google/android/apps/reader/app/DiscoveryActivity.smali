.class public Lcom/google/android/apps/reader/app/DiscoveryActivity;
.super Landroid/app/TabActivity;
.source "DiscoveryActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DiscoveryActivity"

.field private static final TAG_BROWSE:Ljava/lang/String; = "browse"

.field private static final TAG_SEARCH:Ljava/lang/String; = "search"

.field private static final TAG_SOCIAL:Ljava/lang/String; = "social"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method

.method private createIntent(Ljava/lang/Class;)Landroid/content/Intent;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/DiscoveryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 83
    return-object v0
.end method

.method private newTabSpec(Ljava/lang/String;ILjava/lang/Class;)Landroid/widget/TabHost$TabSpec;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)",
            "Landroid/widget/TabHost$TabSpec;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/DiscoveryActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/DiscoveryActivity;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    .line 73
    invoke-virtual {p0, p2}, Lcom/google/android/apps/reader/app/DiscoveryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/apps/reader/widget/TabIndicator;->set(Landroid/widget/TabWidget;Landroid/widget/TabHost$TabSpec;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    .line 74
    invoke-direct {p0, p3}, Lcom/google/android/apps/reader/app/DiscoveryActivity;->createIntent(Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    .line 76
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const-string v0, "search"

    const v1, 0x7f0d0010

    const-class v2, Lcom/google/android/apps/reader/app/SubscribeActivity;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/reader/app/DiscoveryActivity;->newTabSpec(Ljava/lang/String;ILjava/lang/Class;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 58
    const-string v1, "social"

    const v2, 0x7f0d0011

    const-class v3, Lcom/google/android/apps/reader/app/SocialActivity;

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/apps/reader/app/DiscoveryActivity;->newTabSpec(Ljava/lang/String;ILjava/lang/Class;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    .line 60
    const-string v2, "browse"

    const v3, 0x7f0d000f

    const-class v4, Lcom/google/android/apps/reader/app/BundleListActivity;

    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/apps/reader/app/DiscoveryActivity;->newTabSpec(Ljava/lang/String;ILjava/lang/Class;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/DiscoveryActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v3

    .line 64
    invoke-virtual {v3, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 65
    invoke-virtual {v3, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 66
    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 67
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1e

    .line 94
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_b
    return v1

    .line 90
    :pswitch_c
    invoke-virtual {p0}, Lcom/google/android/apps/reader/app/DiscoveryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/reader/provider/ReaderContract$Accounts;->getAccount(Landroid/net/Uri;)Lcom/google/android/accounts/Account;

    move-result-object v0

    .line 91
    .local v0, account:Lcom/google/android/accounts/Account;
    invoke-static {p0, v0}, Lcom/google/android/apps/reader/fragment/MainScreen;->show(Landroid/content/Context;Lcom/google/android/accounts/Account;)V

    .line 92
    const/4 v1, 0x1

    goto :goto_b

    .line 88
    nop

    :pswitch_data_1e
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
