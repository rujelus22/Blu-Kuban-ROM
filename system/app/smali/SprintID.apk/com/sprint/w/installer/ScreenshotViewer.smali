.class public Lcom/sprint/w/installer/ScreenshotViewer;
.super Landroid/app/Activity;
.source "ScreenshotViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;
    }
.end annotation


# static fields
.field public static final EXTRAS_INDX:Ljava/lang/String; = "INDX"

.field public static final EXTRAS_URLS:Ljava/lang/String; = "URLS"


# instance fields
.field mChildCnt:I

.field mFadeInLeft:Landroid/view/animation/Animation;

.field mFadeInRight:Landroid/view/animation/Animation;

.field mFadeOutLeft:Landroid/view/animation/Animation;

.field mFadeOutRight:Landroid/view/animation/Animation;

.field mInTransition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field mIndx:I

.field mLeft:Landroid/view/View$OnClickListener;

.field mNav_left:Landroid/widget/ImageView;

.field mNav_right:Landroid/widget/ImageView;

.field mRight:Landroid/view/View$OnClickListener;

.field mScreenListener:Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;

.field mUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWorkspace:Lcom/sprint/w/installer/widget/Workspace;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mIndx:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mInTransition:Ljava/util/List;

    .line 92
    new-instance v0, Lcom/sprint/w/installer/ScreenshotViewer$2;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/ScreenshotViewer$2;-><init>(Lcom/sprint/w/installer/ScreenshotViewer;)V

    iput-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mScreenListener:Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;

    .line 158
    new-instance v0, Lcom/sprint/w/installer/ScreenshotViewer$3;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/ScreenshotViewer$3;-><init>(Lcom/sprint/w/installer/ScreenshotViewer;)V

    iput-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mLeft:Landroid/view/View$OnClickListener;

    .line 168
    new-instance v0, Lcom/sprint/w/installer/ScreenshotViewer$4;

    invoke-direct {v0, p0}, Lcom/sprint/w/installer/ScreenshotViewer$4;-><init>(Lcom/sprint/w/installer/ScreenshotViewer;)V

    iput-object v0, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mRight:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14
    .parameter "savedInstanceState"

    .prologue
    const v6, 0x7f040001

    const/high16 v11, 0x7f04

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0, v9}, Lcom/sprint/w/installer/ScreenshotViewer;->requestWindowFeature(I)Z

    .line 47
    const v5, 0x7f030023

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/ScreenshotViewer;->setContentView(I)V

    .line 48
    const v5, 0x7f0c005f

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/ScreenshotViewer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sprint/w/installer/widget/Workspace;

    iput-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mWorkspace:Lcom/sprint/w/installer/widget/Workspace;

    .line 50
    const v5, 0x7f0c0060

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/ScreenshotViewer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_left:Landroid/widget/ImageView;

    .line 51
    const v5, 0x7f0c0061

    invoke-virtual {p0, v5}, Lcom/sprint/w/installer/ScreenshotViewer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_right:Landroid/widget/ImageView;

    .line 53
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeOutLeft:Landroid/view/animation/Animation;

    .line 54
    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeOutRight:Landroid/view/animation/Animation;

    .line 55
    iget-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeOutLeft:Landroid/view/animation/Animation;

    new-instance v6, Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;

    iget-object v7, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_left:Landroid/widget/ImageView;

    invoke-direct {v6, p0, v7, v10}, Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;-><init>(Lcom/sprint/w/installer/ScreenshotViewer;Landroid/view/View;I)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 56
    iget-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeOutRight:Landroid/view/animation/Animation;

    new-instance v6, Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;

    iget-object v7, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_right:Landroid/widget/ImageView;

    invoke-direct {v6, p0, v7, v10}, Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;-><init>(Lcom/sprint/w/installer/ScreenshotViewer;Landroid/view/View;I)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 58
    invoke-static {p0, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeInLeft:Landroid/view/animation/Animation;

    .line 59
    invoke-static {p0, v11}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeInRight:Landroid/view/animation/Animation;

    .line 60
    iget-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeInLeft:Landroid/view/animation/Animation;

    new-instance v6, Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;

    iget-object v7, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_left:Landroid/widget/ImageView;

    invoke-direct {v6, p0, v7, v8}, Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;-><init>(Lcom/sprint/w/installer/ScreenshotViewer;Landroid/view/View;I)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 61
    iget-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mFadeInRight:Landroid/view/animation/Animation;

    new-instance v6, Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;

    iget-object v7, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_right:Landroid/widget/ImageView;

    invoke-direct {v6, p0, v7, v8}, Lcom/sprint/w/installer/ScreenshotViewer$ViewAnimationListener;-><init>(Lcom/sprint/w/installer/ScreenshotViewer;Landroid/view/View;I)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/sprint/w/installer/ScreenshotViewer;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "URLS"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mUrl:Ljava/util/ArrayList;

    .line 65
    iget-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mUrl:Ljava/util/ArrayList;

    if-eqz v5, :cond_fc

    .line 66
    iget-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_right:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mRight:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mNav_left:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mLeft:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mUrl:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_a7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 70
    .local v3, url:Ljava/lang/String;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030022

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 71
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0c005d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 72
    .local v1, img:Landroid/widget/ImageView;
    new-instance v2, Lcom/sprint/w/installer/ScreenshotViewer$1;

    invoke-direct {v2, p0, v4, v1}, Lcom/sprint/w/installer/ScreenshotViewer$1;-><init>(Lcom/sprint/w/installer/ScreenshotViewer;Landroid/view/View;Landroid/widget/ImageView;)V

    .line 81
    .local v2, runnable:Ljava/lang/Runnable;
    invoke-static {v1, v3, v2}, Lcom/sprint/w/installer/util/UrlImageViewHelper;->setUrlDrawable(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 82
    iget-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mWorkspace:Lcom/sprint/w/installer/widget/Workspace;

    invoke-virtual {v5, v4}, Lcom/sprint/w/installer/widget/Workspace;->addView(Landroid/view/View;)V

    goto :goto_a7

    .line 85
    .end local v1           #img:Landroid/widget/ImageView;
    .end local v2           #runnable:Ljava/lang/Runnable;
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #view:Landroid/view/View;
    :cond_d6
    iget-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mWorkspace:Lcom/sprint/w/installer/widget/Workspace;

    invoke-virtual {v5}, Lcom/sprint/w/installer/widget/Workspace;->getChildCount()I

    move-result v5

    iput v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mChildCnt:I

    .line 86
    invoke-virtual {p0}, Lcom/sprint/w/installer/ScreenshotViewer;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "INDX"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mIndx:I

    .line 87
    iget-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mWorkspace:Lcom/sprint/w/installer/widget/Workspace;

    iget v6, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mIndx:I

    invoke-virtual {v5, v6}, Lcom/sprint/w/installer/widget/Workspace;->setCurrentScreen(I)V

    .line 88
    iget-object v5, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mWorkspace:Lcom/sprint/w/installer/widget/Workspace;

    iget-object v6, p0, Lcom/sprint/w/installer/ScreenshotViewer;->mScreenListener:Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;

    invoke-virtual {v5, v6, v9}, Lcom/sprint/w/installer/widget/Workspace;->setOnScreenChangeListener(Lcom/sprint/w/installer/widget/Workspace$OnScreenChangeListener;Z)V

    .line 90
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_fc
    return-void
.end method
