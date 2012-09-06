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
    .line 491
    invoke-direct {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;-><init>()V

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/MenuItem;

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;

    .line 448
    new-instance v0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleClickListener;-><init>(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;Lcom/google/android/apps/plus/fragments/EsFragmentActivity$1;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mTitleClickListener:Landroid/view/View$OnClickListener;

    .line 492
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)[Landroid/view/MenuItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mHideTitleBar:Z

    return v0
.end method

.method private clearTitleButtons()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 832
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton1(Landroid/view/MenuItem;)V

    .line 833
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton2(Landroid/view/MenuItem;)V

    .line 834
    invoke-direct {p0, v0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton3(Landroid/view/MenuItem;)V

    .line 835
    return-void
.end method

.method private getVisibleItem(Landroid/view/Menu;I)Landroid/view/MenuItem;
    .registers 6
    .parameter "menu"
    .parameter "index"

    .prologue
    .line 846
    const/4 v1, 0x0

    .line 847
    .local v1, visibleItemIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 848
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 849
    if-ne v1, p2, :cond_19

    .line 850
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 857
    :goto_18
    return-object v2

    .line 853
    :cond_19
    add-int/lit8 v1, v1, 0x1

    .line 847
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 857
    :cond_1e
    const/4 v2, 0x0

    goto :goto_18
.end method

.method private setupTitleButton1(Landroid/view/MenuItem;)V
    .registers 5
    .parameter "menuItem"

    .prologue
    const/4 v2, 0x0

    .line 770
    const v1, 0x7f090274

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 772
    .local v0, button:Landroid/widget/ImageButton;
    if-eqz p1, :cond_2e

    .line 773
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 774
    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 775
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 776
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 777
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 782
    :goto_29
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;

    aput-object p1, v1, v2

    .line 784
    return-void

    .line 779
    :cond_2e
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_29
.end method

.method private setupTitleButton2(Landroid/view/MenuItem;)V
    .registers 5
    .parameter "menuItem"

    .prologue
    .line 792
    const v1, 0x7f090278

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 794
    .local v0, button:Landroid/widget/ImageButton;
    if-eqz p1, :cond_2f

    .line 795
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 796
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 797
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 798
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 804
    :goto_29
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 805
    return-void

    .line 801
    :cond_2f
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_29
.end method

.method private setupTitleButton3(Landroid/view/MenuItem;)V
    .registers 5
    .parameter "menuItem"

    .prologue
    .line 813
    const v1, 0x7f090279

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 815
    .local v0, button:Landroid/widget/ImageButton;
    if-eqz p1, :cond_2f

    .line 816
    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 817
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 818
    invoke-interface {p1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 819
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 820
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 825
    :goto_29
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mMenuItems:[Landroid/view/MenuItem;

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 826
    return-void

    .line 822
    :cond_2f
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_29
.end method


# virtual methods
.method public createTitlebarButtons(I)V
    .registers 8
    .parameter "menuResId"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 672
    invoke-direct {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->clearTitleButtons()V

    .line 674
    new-instance v1, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;

    invoke-direct {v1, p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$TitleMenu;-><init>(Landroid/content/Context;)V

    .line 675
    .local v1, menu:Landroid/view/Menu;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 679
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onPrepareTitlebarButtons(Landroid/view/Menu;)V

    .line 681
    const/4 v2, 0x0

    .line 682
    .local v2, visibleMenuCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_16
    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 683
    invoke-interface {v1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 684
    add-int/lit8 v2, v2, 0x1

    .line 682
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 688
    :cond_2b
    packed-switch v2, :pswitch_data_7c

    .line 712
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

    .line 717
    :goto_4c
    :pswitch_4c
    return-void

    .line 694
    :pswitch_4d
    invoke-direct {p0, v1, v4}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getVisibleItem(Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton3(Landroid/view/MenuItem;)V

    goto :goto_4c

    .line 699
    :pswitch_55
    invoke-direct {p0, v1, v4}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getVisibleItem(Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton2(Landroid/view/MenuItem;)V

    .line 700
    invoke-direct {p0, v1, v5}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getVisibleItem(Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton3(Landroid/view/MenuItem;)V

    goto :goto_4c

    .line 705
    :pswitch_64
    invoke-direct {p0, v1, v4}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getVisibleItem(Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton1(Landroid/view/MenuItem;)V

    .line 706
    invoke-direct {p0, v1, v5}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getVisibleItem(Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton2(Landroid/view/MenuItem;)V

    .line 707
    const/4 v3, 0x2

    invoke-direct {p0, v1, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getVisibleItem(Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->setupTitleButton3(Landroid/view/MenuItem;)V

    goto :goto_4c

    .line 688
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
    .registers 6
    .parameter "account"

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 749
    .local v0, activityIntent:Landroid/content/Intent;
    if-eqz v0, :cond_2c

    .line 750
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 751
    .local v1, extras:Landroid/os/Bundle;
    if-eqz v1, :cond_2c

    const-string v3, "notif_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string v3, "notif_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 753
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/phone/Intents;->getHostNavigationActivityIntent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Landroid/content/Intent;

    move-result-object v2

    .line 754
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 755
    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 756
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->finish()V

    .line 762
    .end local v1           #extras:Landroid/os/Bundle;
    .end local v2           #intent:Landroid/content/Intent;
    :goto_2b
    return-void

    .line 761
    :cond_2c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->onBackPressed()V

    goto :goto_2b
.end method

.method protected hideTitlebar(Z)V
    .registers 7
    .parameter "showAnimation"

    .prologue
    const/4 v4, 0x1

    .line 598
    const v3, 0x7f090270

    invoke-virtual {p0, v3}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 600
    .local v2, titleLayout:Landroid/view/View;
    iget-boolean v3, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mHideTitleBar:Z

    if-ne v3, v4, :cond_d

    .line 633
    :goto_c
    return-void

    .line 603
    :cond_d
    iput-boolean v4, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mHideTitleBar:Z

    .line 605
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 606
    .local v0, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_18

    .line 607
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 610
    :cond_18
    if-eqz p1, :cond_2d

    .line 611
    const v3, 0x7f040006

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 613
    .local v1, titleAnimation:Landroid/view/animation/Animation;
    new-instance v3, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$1;

    invoke-direct {v3, p0, v2}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity$1;-><init>(Lcom/google/android/apps/plus/fragments/EsFragmentActivity;Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 629
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c

    .line 631
    .end local v1           #titleAnimation:Landroid/view/animation/Animation;
    :cond_2d
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c
.end method

.method protected isIntentAccountActive()Z
    .registers 4

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/content/EsAccount;

    .line 503
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

    .line 516
    if-eqz p1, :cond_36

    .line 518
    invoke-static {p0}, Lcom/google/android/apps/plus/service/EsService;->getActiveAccount(Landroid/content/Context;)Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/plus/content/EsAccount;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 519
    const-string v1, "EsFragmentActivity"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 520
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

    .line 528
    :cond_36
    :goto_36
    return v0

    .line 525
    :cond_37
    const/4 v0, 0x1

    goto :goto_36
.end method

.method protected onPrepareTitlebarButtons(Landroid/view/Menu;)V
    .registers 2
    .parameter "menu"

    .prologue
    .line 733
    return-void
.end method

.method protected onTitlebarLabelClick()V
    .registers 1

    .prologue
    .line 739
    return-void
.end method

.method protected setTitlebarSubtitle(Ljava/lang/String;)V
    .registers 4
    .parameter "subtitle"

    .prologue
    .line 654
    const v1, 0x7f090276

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 656
    .local v0, textView:Landroid/widget/TextView;
    if-nez p1, :cond_11

    .line 657
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 664
    :goto_10
    return-void

    .line 659
    :cond_11
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 662
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_10
.end method

.method protected setTitlebarTitle(Ljava/lang/String;)V
    .registers 4
    .parameter "title"

    .prologue
    .line 641
    const v1, 0x7f090275

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 643
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 645
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 646
    return-void
.end method

.method public shouldShowAndroidActionBar()Z
    .registers 3

    .prologue
    .line 723
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected showTitlebar(Z)V
    .registers 3
    .parameter "enableUp"

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->showTitlebar(ZZ)V

    .line 539
    return-void
.end method

.method protected showTitlebar(ZZ)V
    .registers 10
    .parameter "showAnimation"
    .parameter "enableUp"

    .prologue
    const/4 v5, 0x0

    .line 548
    const v4, 0x7f090270

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 550
    .local v2, titleLayout:Landroid/view/View;
    iget-boolean v4, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mHideTitleBar:Z

    if-nez v4, :cond_13

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_13

    .line 583
    :goto_12
    return-void

    .line 553
    :cond_13
    iput-boolean v5, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mHideTitleBar:Z

    .line 555
    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 556
    .local v0, currentAnimation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_1e

    .line 557
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 560
    :cond_1e
    if-eqz p1, :cond_2a

    .line 561
    const v4, 0x7f040004

    invoke-static {p0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 563
    .local v1, titleAnimation:Landroid/view/animation/Animation;
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 566
    .end local v1           #titleAnimation:Landroid/view/animation/Animation;
    :cond_2a
    const v4, 0x7f090272

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz p2, :cond_53

    move v4, v5

    :goto_34
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 569
    const v4, 0x7f090271

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 570
    .local v3, touchView:Landroid/view/View;
    if-eqz p2, :cond_56

    .line 571
    iget-object v4, p0, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->mTitleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    const v4, 0x7f08045b

    invoke-virtual {p0, v4}, Lcom/google/android/apps/plus/fragments/EsFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 582
    :goto_4f
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    .line 566
    .end local v3           #touchView:Landroid/view/View;
    :cond_53
    const/16 v4, 0x8

    goto :goto_34

    .line 579
    .restart local v3       #touchView:Landroid/view/View;
    :cond_56
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4f
.end method
