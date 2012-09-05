.class public Lcom/sec/android/app/twlauncher/Search;
.super Landroid/widget/LinearLayout;
.source "Search.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/Search$FromParentOriginAnimation;,
        Lcom/sec/android/app/twlauncher/Search$ToParentOriginAnimation;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAppSearchData:Landroid/os/Bundle;

.field private mGlobalSearch:Z

.field private mInitialQuery:Ljava/lang/String;

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mMorphAnimation:Landroid/view/animation/Animation;

.field private mSearchText:Landroid/widget/TextView;

.field private mSelectInitialQuery:Z

.field private mUnmorphAnimation:Landroid/view/animation/Animation;

.field private mVoiceButton:Landroid/widget/ImageButton;

.field private mVoiceSearchIntent:Landroid/content/Intent;

.field private mWidgetTopOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const-string v2, "SearchWidget"

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Search;->TAG:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 99
    .local v1, scale:F
    const/high16 v2, 0x4110

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/Search;->mWidgetTopOffset:I

    .line 101
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 103
    .local v0, interpolator:Landroid/view/animation/Interpolator;
    new-instance v2, Lcom/sec/android/app/twlauncher/Search$ToParentOriginAnimation;

    invoke-direct {v2, p0, v6}, Lcom/sec/android/app/twlauncher/Search$ToParentOriginAnimation;-><init>(Lcom/sec/android/app/twlauncher/Search;Lcom/sec/android/app/twlauncher/Search$1;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    .line 106
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 108
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 109
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 110
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    new-instance v3, Lcom/sec/android/app/twlauncher/Search$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/Search$1;-><init>(Lcom/sec/android/app/twlauncher/Search;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 143
    new-instance v2, Lcom/sec/android/app/twlauncher/Search$FromParentOriginAnimation;

    invoke-direct {v2, p0, v6}, Lcom/sec/android/app/twlauncher/Search$FromParentOriginAnimation;-><init>(Lcom/sec/android/app/twlauncher/Search;Lcom/sec/android/app/twlauncher/Search$1;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Search;->mUnmorphAnimation:Landroid/view/animation/Animation;

    .line 145
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search;->mUnmorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 148
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search;->mUnmorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 149
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search;->mUnmorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 150
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search;->mUnmorphAnimation:Landroid/view/animation/Animation;

    new-instance v3, Lcom/sec/android/app/twlauncher/Search$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/Search$2;-><init>(Lcom/sec/android/app/twlauncher/Search;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 162
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.speech.action.WEB_SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Search;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 163
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search;->mVoiceSearchIntent:Landroid/content/Intent;

    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v4, "web_search"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/Search;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Search;->showSearchDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/Search;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/Search;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Search;->getWidgetTop()I

    move-result v0

    return v0
.end method

.method private configureVoiceSearchButton()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 355
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Search;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 356
    .local v0, pm:Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Search;->mVoiceSearchIntent:Landroid/content/Intent;

    const/high16 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 357
    .local v1, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_1c

    const/4 v2, 0x1

    .line 360
    .local v2, voiceSearchVisible:Z
    :goto_14
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Search;->mVoiceButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_1e

    :goto_18
    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 361
    return-void

    .end local v2           #voiceSearchVisible:Z
    :cond_1c
    move v2, v3

    .line 357
    goto :goto_14

    .line 360
    .restart local v2       #voiceSearchVisible:Z
    :cond_1e
    const/16 v3, 0x8

    goto :goto_18
.end method

.method private getAnimationDuration()I
    .registers 3

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Search;->getWidgetTop()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getWidgetTop()I
    .registers 3

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Search;->getTop()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Search;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/twlauncher/Search;->mWidgetTopOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method private isAtTop()Z
    .registers 2

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Search;->getWidgetTop()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private showSearchDialog()V
    .registers 6

    .prologue
    .line 236
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Search;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Search;->mInitialQuery:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Search;->mSelectInitialQuery:Z

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Search;->mAppSearchData:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Search;->mGlobalSearch:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->showSearchDialog(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 238
    return-void
.end method

.method private startVoiceSearch()V
    .registers 4

    .prologue
    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Search;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search;->mVoiceSearchIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    .line 186
    :goto_9
    return-void

    .line 181
    :catch_a
    move-exception v0

    .line 184
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v1, "SearchWidget"

    const-string v2, "Could not find voice search activity"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method


# virtual methods
.method public clearAnimation()V
    .registers 4

    .prologue
    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Search;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 275
    .local v0, animation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_26

    .line 276
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 277
    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v0}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 278
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Search;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 279
    .local v1, parent:Landroid/view/View;
    if-eqz v1, :cond_26

    .line 280
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 285
    .end local v1           #parent:Landroid/view/View;
    :cond_26
    :goto_26
    return-void

    .line 282
    :cond_27
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Search;->invalidate()V

    goto :goto_26
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Search;->mVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 172
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Search;->startVoiceSearch()V

    .line 176
    :goto_b
    return-void

    .line 174
    :cond_c
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Search;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->onSearchRequested()Z

    goto :goto_b
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 343
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 344
    return-void
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 318
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 320
    const v1, 0x7f060054

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Search;->mSearchText:Landroid/widget/TextView;

    .line 321
    const v1, 0x7f060055

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Search;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Search;->mVoiceButton:Landroid/widget/ImageButton;

    .line 323
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Search;->mSearchText:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Search;->mSearchText:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Search;->mVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    invoke-virtual {p0, p0}, Lcom/sec/android/app/twlauncher/Search;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Search;->mSearchText:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Search;->mVoiceButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 334
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Search;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 336
    .local v0, googlePlaceholder:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Search;->mSearchText:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 338
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Search;->configureVoiceSearchButton()V

    .line 339
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 288
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_21

    const/16 v0, 0x13

    if-eq p2, v0, :cond_21

    const/16 v0, 0x14

    if-eq p2, v0, :cond_21

    const/16 v0, 0x15

    if-eq p2, v0, :cond_21

    const/16 v0, 0x16

    if-eq p2, v0, :cond_21

    const/16 v0, 0x17

    if-eq p2, v0, :cond_21

    .line 295
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    .line 304
    :cond_21
    const/4 v0, 0x0

    :goto_22
    return v0

    .line 297
    :pswitch_23
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Search;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/twlauncher/Launcher;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_22

    .line 299
    :pswitch_2a
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Search;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    invoke-virtual {v0, p2, v1, p3}, Lcom/sec/android/app/twlauncher/Launcher;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_22

    .line 301
    :pswitch_35
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Search;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/app/twlauncher/Launcher;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_22

    .line 295
    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_23
        :pswitch_35
        :pswitch_2a
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .parameter "v"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Search;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .registers 2
    .parameter "launcher"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Search;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 369
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .registers 4
    .parameter "query"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Search;->mSearchText:Landroid/widget/TextView;

    sget-object v1, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 195
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 9
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Search;->mInitialQuery:Ljava/lang/String;

    .line 204
    iput-boolean p2, p0, Lcom/sec/android/app/twlauncher/Search;->mSelectInitialQuery:Z

    .line 205
    iput-object p3, p0, Lcom/sec/android/app/twlauncher/Search;->mAppSearchData:Landroid/os/Bundle;

    .line 206
    iput-boolean p4, p0, Lcom/sec/android/app/twlauncher/Search;->mGlobalSearch:Z

    .line 208
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Search;->isAtTop()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 209
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Search;->showSearchDialog()V

    .line 230
    :cond_11
    :goto_11
    return-void

    .line 218
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Search;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_34

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Search;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 221
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    .line 225
    .end local v0           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_34
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Search;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    if-eq v1, v2, :cond_11

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Search;->getAnimationDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Search;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_11
.end method

.method public stopSearch(Z)V
    .registers 5
    .parameter "animate"

    .prologue
    .line 246
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Search;->setQuery(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Search;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Search;->mMorphAnimation:Landroid/view/animation/Animation;

    if-ne v0, v1, :cond_24

    .line 250
    if-eqz p1, :cond_25

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Search;->isAtTop()Z

    move-result v0

    if-nez v0, :cond_25

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Search;->mUnmorphAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Search;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Search;->mUnmorphAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Search;->startAnimation(Landroid/view/animation/Animation;)V

    .line 257
    :cond_24
    :goto_24
    return-void

    .line 254
    :cond_25
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Search;->clearAnimation()V

    goto :goto_24
.end method
