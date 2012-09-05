.class public Lcom/android/providers/downloads/ui/DownloadsListTab;
.super Landroid/app/TabActivity;
.source "DownloadsListTab.java"


# instance fields
.field private final ACTION_VIEW_SEC_DOWNLOADS:Ljava/lang/String;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 34
    const-string v0, "android.intent.action.VIEW_SEC_DOWNLOADS"

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadsListTab;->ACTION_VIEW_SEC_DOWNLOADS:Ljava/lang/String;

    return-void
.end method

.method private setCurrentTab()V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadsListTab;->mTabHost:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 122
    return-void
.end method

.method private setupBrowserDownloadsTab()V
    .registers 6

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_SEC_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    const-class v1, Lcom/android/providers/downloads/ui/SecDownloadList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 62
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadsListTab;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "Browser Downloads"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadsListTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadsListTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f02

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadsListTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 68
    return-void
.end method

.method private setupOtherDownlaodsTab()V
    .registers 6

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    const-class v1, Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadsListTab;->mTabHost:Landroid/widget/TabHost;

    const-string v2, "Other Downloads"

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadsListTab;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadsListTab;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadsListTab;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 81
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadsListTab;->requestWindowFeature(I)Z

    .line 43
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadsListTab;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadsListTab;->mTabHost:Landroid/widget/TabHost;

    .line 46
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadsListTab;->setupBrowserDownloadsTab()V

    .line 47
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadsListTab;->setupOtherDownlaodsTab()V

    .line 50
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadsListTab;->setCurrentTab()V

    .line 52
    return-void
.end method
