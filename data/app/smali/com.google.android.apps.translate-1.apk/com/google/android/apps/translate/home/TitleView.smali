.class public Lcom/google/android/apps/translate/home/TitleView;
.super Landroid/widget/LinearLayout;
.source "TitleView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TitleView"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mLanguagePanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attr"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/google/android/apps/translate/home/TitleView;->mActivity:Landroid/app/Activity;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/home/TitleView;)Landroid/app/Activity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/translate/home/TitleView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/home/TitleView;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/apps/translate/home/TitleView;->mLanguagePanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/home/TitleView;Landroid/view/View;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/home/TitleView;->slideUpInputMethodView(Landroid/view/View;)V

    return-void
.end method

.method private hideActionBar()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/apps/translate/home/TitleView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/translate/home/TitleView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    .line 157
    :cond_15
    return-void
.end method

.method private showActionBar()V
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/apps/translate/home/TitleView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_15

    .line 149
    iget-object v0, p0, Lcom/google/android/apps/translate/home/TitleView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 151
    :cond_15
    return-void
.end method

.method private declared-synchronized slideUpInputMethodView(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 160
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_2a

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_b

    .line 184
    :goto_9
    monitor-exit p0

    return-void

    .line 164
    :cond_b
    :try_start_b
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 165
    .local v0, height:I
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    neg-int v5, v0

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 166
    .local v1, slideUp:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 167
    new-instance v2, Lcom/google/android/apps/translate/home/TitleView$3;

    invoke-direct {v2, p0, p1}, Lcom/google/android/apps/translate/home/TitleView$3;-><init>(Lcom/google/android/apps/translate/home/TitleView;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 183
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_2a

    goto :goto_9

    .line 160
    .end local v0           #height:I
    .end local v1           #slideUp:Landroid/view/animation/TranslateAnimation;
    :catchall_2a
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public checkTitleShow()V
    .registers 2

    .prologue
    .line 37
    invoke-static {}, Lcom/google/android/apps/translate/Util;->isHoneycombCompatible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 38
    new-instance v0, Lcom/google/android/apps/translate/home/TitleView$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/home/TitleView$1;-><init>(Lcom/google/android/apps/translate/home/TitleView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/home/TitleView;->post(Ljava/lang/Runnable;)Z

    .line 48
    :cond_e
    return-void
.end method

.method public fixEditingViewVisibility(Lcom/google/android/apps/translate/editor/EditPanelView;I)V
    .registers 6
    .parameter "editPanelView"
    .parameter "delayMillis"

    .prologue
    .line 89
    const-string v0, "TitleView"

    const-string v1, "fixEditingViewVisibility"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/google/android/apps/translate/home/TitleView$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/translate/home/TitleView$2;-><init>(Lcom/google/android/apps/translate/home/TitleView;Lcom/google/android/apps/translate/editor/EditPanelView;)V

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/apps/translate/home/TitleView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    return-void
.end method

.method public hideTitleBar()V
    .registers 3

    .prologue
    .line 55
    const-string v0, "TitleView"

    const-string v1, "hideTitleBar"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/home/TitleView;->setVisibility(I)V

    .line 57
    invoke-static {}, Lcom/google/android/apps/translate/Util;->isHoneycombCompatible()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 58
    invoke-direct {p0}, Lcom/google/android/apps/translate/home/TitleView;->hideActionBar()V

    .line 60
    :cond_15
    return-void
.end method

.method public setLanguagePanel(Landroid/view/View;)V
    .registers 2
    .parameter "languagePanel"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/translate/home/TitleView;->mLanguagePanel:Landroid/view/View;

    .line 52
    return-void
.end method

.method public showTitleBar()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/apps/translate/home/TitleView;->checkTitleShow()V

    .line 64
    invoke-static {}, Lcom/google/android/apps/translate/Util;->isHoneycombCompatible()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 65
    invoke-direct {p0}, Lcom/google/android/apps/translate/home/TitleView;->showActionBar()V

    .line 67
    :cond_d
    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/home/TitleView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/google/android/apps/translate/home/TitleView;->mLanguagePanel:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 69
    iget-object v0, p0, Lcom/google/android/apps/translate/home/TitleView;->mLanguagePanel:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    :cond_19
    return-void
.end method
