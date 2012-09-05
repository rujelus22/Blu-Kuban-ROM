.class public abstract Lcom/google/android/apps/plus/fragments/EsFragmentActivity;
.super Lcom/google/android/apps/plus/analytics/InstrumentedActivity;
.source "EsFragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;,
        Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenuItem;,
        Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;
    }
.end annotation


# instance fields
.field private mHideTitleBar:Z

.field private final mMenuItems:[Landroid/view/MenuItem;

.field private final mTitleClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 680
    invoke-direct {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;-><init>()V

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/MenuItem;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;

    .line 642
    new-instance v0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;-><init>(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;Lcom/google/android/apps/plus/fragments/EsFragmentActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mTitleClickListener:Landroid/view/View$OnClickListener;

    .line 681
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)[Landroid/view/MenuItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mHideTitleBar:Z

    return v0
.end method

.method private clearTitleButtons()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1038
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton1(Landroid/view/MenuItem;)V

    .line 1039
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton2(Landroid/view/MenuItem;)V

    .line 1040
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton3(Landroid/view/MenuItem;)V

    .line 1041
    return-void
.end method

.method private getVisibleItem(Landroid/view/Menu;I)Landroid/view/MenuItem;
    .registers 6
    .parameter "menu"
    .parameter "index"

    .prologue
    .line 1052
    const/4 v1, 0x0

    .line 1053
    .local v1, visibleItemIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 1054
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1055
    if-ne v1, p2, :cond_19

    .line 1056
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1063
    :goto_18
    return-object v2

    .line 1059
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 1053
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1063
    :cond_1e
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private setupTitleButton1(Landroid/view/MenuItem;)V
    .registers 5
    .parameter "menuItem"

    .prologue
    const/4 v2, 0x0

    .line 979
    const v1, 0x7f0d018b

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 981
    .local v0, button:Landroid/widget/ImageButton;
    if-eqz p1, :cond_27

    .line 982
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 983
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 984
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 985
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 990
    :goto_22
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;

    aput-object p1, v1, v2

    .line 992
    return-void

    .line 987
    :cond_27
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_22
.end method

.method private setupTitleButton2(Landroid/view/MenuItem;)V
    .registers 5
    .parameter "menuItem"

    .prologue
    .line 1000
    const v1, 0x7f0d018f

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1002
    .local v0, button:Landroid/widget/ImageButton;
    if-eqz p1, :cond_28

    .line 1003
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1004
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1005
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1006
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1011
    :goto_22
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 1012
    return-void

    .line 1008
    :cond_28
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_22
.end method

.method private setupTitleButton3(Landroid/view/MenuItem;)V
    .registers 5
    .parameter "menuItem"

    .prologue
    .line 1020
    const v1, 0x7f0d0190

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1022
    .local v0, button:Landroid/widget/ImageButton;
    if-eqz p1, :cond_28

    .line 1023
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1024
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1025
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1026
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1031
    :goto_22
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 1032
    return-void

    .line 1028
    :cond_28
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_22
.end method


# virtual methods
.method public createTitlebarButtons(I)V
    .registers 8
    .parameter "menuResId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 870
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->clearTitleButtons()V

    .line 872
    new-instance v1, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;-><init>(Landroid/content/Context;)V

    .line 873
    .local v1, menu:Landroid/view/Menu;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 877
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPrepareTitlebarButtons(Landroid/view/Menu;)V

    .line 879
    const/4 v2, 0x0

    .line 880
    .local v2, visibleMenuCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 881
    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 882
    add-int/lit8 v2, v2, 0x1

    .line 880
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 886
    :cond_2b
    packed-switch v2, :pswitch_data_7c

    .line 910
    const-string v3, "EsFragmentActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Maximum title buttons is 3. You have "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " visible menu items"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :goto_4c
    :pswitch_4c
    return-void

    .line 892
    :pswitch_4d
    invoke-direct {p0, v1, v4}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getVisibleItem(Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton3(Landroid/view/MenuItem;)V

    goto :goto_4c

    .line 897
    :pswitch_55
    invoke-direct {p0, v1, v4}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getVisibleItem(Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton2(Landroid/view/MenuItem;)V

    .line 898
    invoke-direct {p0, v1, v5}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getVisibleItem(Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton3(Landroid/view/MenuItem;)V

    goto :goto_4c

    .line 903
    :pswitch_64
    invoke-direct {p0, v1, v4}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getVisibleItem(Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton1(Landroid/view/MenuItem;)V

    .line 904
    invoke-direct {p0, v1, v5}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getVisibleItem(Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton2(Landroid/view/MenuItem;)V

    .line 905
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getVisibleItem(Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton3(Landroid/view/MenuItem;)V

    goto :goto_4c

    .line 886
    nop

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_4d
        :pswitch_55
        :pswitch_64
    .end packed-switch
.end method

.method protected goHome(Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "account"

    .prologue
    .line 963
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 971
    :goto_6
    return-void

    .line 967
    :cond_7
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getHomeActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v0

    .line 968
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 969
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 970
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->finish()V

    goto :goto_6
.end method

.method protected goHomeToDestination(Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 6
    .parameter "account"

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 940
    .local v0, activityIntent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 942
    .local v2, intent:Landroid/content/Intent;
    if-eqz v0, :cond_2e

    .line 943
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 944
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_2e

    const-string v3, "notif_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string v3, "notif_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 946
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getNotificationsIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v2

    .line 947
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 948
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 949
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->finish()V

    .line 950
    const/4 v3, 0x1

    .line 954
    .end local v1           #extras:Landroid/os/Bundle;
    :goto_2d
    return v3

    :cond_2e
    const/4 v3, 0x0

    goto :goto_2d
.end method

.method protected hideTitlebar(Z)V
    .registers 7
    .parameter "showAnimation"

    .prologue
    const/4 v4, 0x1

    .line 779
    const v3, 0x7f0d0187

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 781
    .local v2, titleLayout:Landroid/view/View;
    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mHideTitleBar:Z

    if-ne v3, v4, :cond_d

    .line 823
    :goto_c
    return-void

    .line 784
    :cond_d
    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mHideTitleBar:Z

    .line 786
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 787
    .local v0, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_18

    .line 788
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 791
    :cond_18
    if-eqz p1, :cond_2d

    .line 792
    const v3, 0x7f040003

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 794
    .local v1, titleAnimation:Landroid/view/animation/Animation;
    new-instance v3, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$1;

    invoke-direct {v3, p0, v2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$1;-><init>(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 819
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c

    .line 821
    .end local v1           #titleAnimation:Landroid/view/animation/Animation;
    :cond_2d
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c
.end method

.method protected isIntentAccountActive()Z
    .registers 4

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 692
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->isIntentAccountActive(Lcom/google/android/apps/plus/content/EsAccount;)Z

    move-result v1

    return v1
.end method

.method protected isIntentAccountActive(Lcom/google/android/apps/plus/content/EsAccount;)Z
    .registers 6
    .parameter "account"

    .prologue
    const/4 v0, 0x0

    .line 705
    if-eqz p1, :cond_36

    .line 707
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 708
    const-string v1, "EsFragmentActivity"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 709
    const-string v1, "EsFragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity finished because it is associated with a signed-out account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    :cond_36
    :goto_36
    return v0

    .line 714
    :cond_37
    const/4 v0, 0x1

    goto :goto_36
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 924
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 930
    return-void
.end method

.method protected setTitlebarSubtitle(Ljava/lang/String;)V
    .registers 4
    .parameter "subtitle"

    .prologue
    .line 854
    const v1, 0x7f0d018d

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 856
    .local v0, textView:Landroid/widget/TextView;
    if-nez p1, :cond_11

    .line 857
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 862
    :goto_10
    return-void

    .line 859
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 860
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10
.end method

.method protected setTitlebarTitle(ILjava/lang/String;)V
    .registers 10
    .parameter "imageId"
    .parameter "title"

    .prologue
    const/4 v6, 0x0

    .line 832
    const v5, 0x7f0d018c

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 834
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    if-eqz p1, :cond_2d

    .line 837
    const v5, 0x7f0d018a

    invoke-virtual {p0, v5}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 838
    .local v0, imageView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 839
    .local v1, resources:Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 840
    .local v4, titleDrawable:Landroid/graphics/drawable/Drawable;
    const v5, 0x7f0c0001

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 842
    .local v2, size:I
    invoke-virtual {v4, v6, v6, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 844
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 846
    .end local v0           #imageView:Landroid/widget/ImageView;
    .end local v1           #resources:Landroid/content/res/Resources;
    .end local v2           #size:I
    .end local v4           #titleDrawable:Landroid/graphics/drawable/Drawable;
    :cond_2d
    return-void
.end method

.method protected showTitlebar(Z)V
    .registers 3
    .parameter "enableUp"

    .prologue
    .line 727
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->showTitlebar(ZZ)V

    .line 728
    return-void
.end method

.method protected showTitlebar(ZZ)V
    .registers 10
    .parameter "showAnimation"
    .parameter "enableUp"

    .prologue
    const/4 v5, 0x0

    .line 737
    const v4, 0x7f0d0187

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 739
    .local v2, titleLayout:Landroid/view/View;
    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mHideTitleBar:Z

    if-nez v4, :cond_13

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_13

    .line 764
    :goto_12
    return-void

    .line 742
    :cond_13
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mHideTitleBar:Z

    .line 744
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 745
    .local v0, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_1e

    .line 746
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 749
    :cond_1e
    if-eqz p1, :cond_2a

    .line 750
    const v4, 0x7f040002

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 752
    .local v1, titleAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 755
    .end local v1           #titleAnimation:Landroid/view/animation/Animation;
    :cond_2a
    const v4, 0x7f0d0189

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz p2, :cond_49

    move v4, v5

    :goto_34
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 758
    if-eqz p2, :cond_45

    .line 759
    const v4, 0x7f0d0188

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 760
    .local v3, touchView:Landroid/view/View;
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    .end local v3           #touchView:Landroid/view/View;
    :cond_45
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    .line 755
    :cond_49
    const/16 v4, 0x8

    goto :goto_34
.end method
