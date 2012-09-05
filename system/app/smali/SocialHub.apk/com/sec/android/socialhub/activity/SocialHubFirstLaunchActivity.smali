.class public Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;
.super Landroid/app/Activity;
.source "SocialHubFirstLaunchActivity.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field public static isLaunchedAlready:Z

.field public static is_same_package:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "SocialHubFirstLaunchActivity"

    sput-object v0, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->isLaunchedAlready:Z

    .line 28
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->is_same_package:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->rememberAlwaysShow()V

    return-void
.end method

.method private rememberAlwaysShow()V
    .registers 1

    .prologue
    .line 155
    return-void
.end method


# virtual methods
.method public isSamePackage()Z
    .registers 5

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 123
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 125
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 127
    .local v2, ret:Ljava/lang/Boolean;
    if-eqz v0, :cond_17

    .line 129
    const-string v3, "pacakge"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #ret:Ljava/lang/Boolean;
    check-cast v2, Ljava/lang/Boolean;

    .line 132
    .restart local v2       #ret:Ljava/lang/Boolean;
    :cond_17
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v10, 0x1

    sput-boolean v10, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->isLaunchedAlready:Z

    .line 37
    const v10, 0x7f030013

    invoke-virtual {p0, v10}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080005

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 40
    const v10, 0x7f0b0041

    invoke-virtual {p0, v10}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 41
    .local v8, mListview:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 42
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f030014

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 44
    .local v7, mLayout:Landroid/widget/LinearLayout;
    invoke-static {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/SevenIMAccounts;->isExistPackage(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_45

    .line 46
    const v10, 0x7f0b004a

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 47
    .local v6, mChattingLayout:Landroid/widget/LinearLayout;
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 50
    .end local v6           #mChattingLayout:Landroid/widget/LinearLayout;
    :cond_45
    invoke-static {p0}, Lcom/sec/android/socialhub/unifiedinbox/account/CombinedAccounts;->isExistPackage(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_5c

    .line 52
    const v10, 0x7f0b0049

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 53
    .local v3, email:Landroid/widget/TextView;
    if-eqz v3, :cond_5c

    .line 55
    const v10, 0x7f08009d

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(I)V

    .line 59
    .end local v3           #email:Landroid/widget/TextView;
    :cond_5c
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v7, v10, v11}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 60
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 62
    const v10, 0x7f0b0026

    invoke-virtual {p0, v10}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 63
    .local v0, buttonLeft:Landroid/widget/Button;
    const v10, 0x7f0b0027

    invoke-virtual {p0, v10}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 64
    .local v2, buttonRight:Landroid/widget/Button;
    const v10, 0x7f0b0042

    invoke-virtual {p0, v10}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 66
    .local v1, buttonOK:Landroid/widget/Button;
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setSelected(Z)V

    .line 67
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setSelected(Z)V

    .line 70
    const v10, 0x7f0b0052

    invoke-virtual {p0, v10}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/socialhub/view/LinkTextView;

    .line 71
    .local v9, tvWeb:Lcom/sec/android/socialhub/view/LinkTextView;
    invoke-virtual {v9}, Lcom/sec/android/socialhub/view/LinkTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/android/socialhub/view/LinkTextView;->setTextWithLink(Ljava/lang/CharSequence;)V

    .line 73
    new-instance v10, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$1;

    invoke-direct {v10, p0}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$1;-><init>(Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;)V

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    new-instance v10, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$2;

    invoke-direct {v10, p0}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$2;-><init>(Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;)V

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    new-instance v10, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$3;

    invoke-direct {v10, p0}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity$3;-><init>(Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;)V

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/socialhub/activity/SocialHubFirstLaunchActivity;->isSamePackage()Z

    move-result v5

    .line 103
    .local v5, is_same_package:Z
    if-nez v5, :cond_cf

    .line 105
    const/16 v10, 0x8

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 106
    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 108
    const v10, 0x7f08001c

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setText(I)V

    .line 117
    :goto_ce
    return-void

    .line 112
    :cond_cf
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_ce
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 138
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 142
    return-void
.end method
