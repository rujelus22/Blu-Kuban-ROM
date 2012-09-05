.class public Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;
.super Landroid/app/Activity;
.source "MusicSettingsMusicMenuReorderActivity.java"


# instance fields
.field private mLayout:Landroid/widget/RelativeLayout;

.field private mListView:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;)Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->mListView:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    return-object v0
.end method

.method private initButtonListener()V
    .registers 4

    .prologue
    .line 43
    const v2, 0x7f0c00cd

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 44
    .local v1, done:Landroid/widget/Button;
    const v2, 0x7f0c00ce

    invoke-virtual {p0, v2}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 46
    .local v0, cancel:Landroid/widget/Button;
    new-instance v2, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity$1;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    new-instance v2, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity$2;-><init>(Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method private initListView()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 35
    new-instance v1, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->mListView:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    .line 36
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 38
    .local v0, containerParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->mListView:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object v1, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->mListView:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 40
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->mListView:Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;

    invoke-virtual {v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderListView;->forceCancelDragging()V

    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 25
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->setVolumeControlStream(I)V

    .line 27
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->setContentView(I)V

    .line 28
    const v0, 0x7f0c00ca

    invoke-virtual {p0, v0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->mLayout:Landroid/widget/RelativeLayout;

    .line 29
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->initListView()V

    .line 30
    invoke-direct {p0}, Lcom/sec/android/app/music/common/settings/MusicSettingsMusicMenuReorderActivity;->initButtonListener()V

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method
