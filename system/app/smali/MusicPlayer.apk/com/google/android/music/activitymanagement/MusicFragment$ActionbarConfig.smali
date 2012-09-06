.class public Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;
.super Ljava/lang/Object;
.source "MusicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/activitymanagement/MusicFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionbarConfig"
.end annotation


# instance fields
.field private mCurrentVisibilities:I

.field private mDefaultSearchString:Ljava/lang/String;

.field private mSearchFieldTextWatcher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mSplitActionBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSplitActionBar:Z

    .line 491
    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mDefaultSearchString:Ljava/lang/String;

    .line 493
    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSearchFieldTextWatcher:Ljava/lang/ref/WeakReference;

    .line 496
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->reset()V

    .line 497
    return-void
.end method


# virtual methods
.method public clearDefaultSearchString()V
    .registers 2

    .prologue
    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mDefaultSearchString:Ljava/lang/String;

    .line 542
    return-void
.end method

.method public getDefaultSearchString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mDefaultSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchFieldTextWatcher()Landroid/text/TextWatcher;
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSearchFieldTextWatcher:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    .line 550
    const/4 v0, 0x0

    .line 552
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSearchFieldTextWatcher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextWatcher;

    goto :goto_5
.end method

.method public hide(I)V
    .registers 4
    .parameter "view"

    .prologue
    .line 509
    iget v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mCurrentVisibilities:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mCurrentVisibilities:I

    .line 510
    return-void
.end method

.method public isSplitActionBar()Z
    .registers 2

    .prologue
    .line 525
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSplitActionBar:Z

    return v0
.end method

.method public isVisible(I)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 517
    iget v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mCurrentVisibilities:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 500
    const/16 v0, 0x346d

    iput v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mCurrentVisibilities:I

    .line 503
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSplitActionBar:Z

    .line 504
    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mDefaultSearchString:Ljava/lang/String;

    .line 505
    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSearchFieldTextWatcher:Ljava/lang/ref/WeakReference;

    .line 506
    return-void
.end method

.method public setDefaultSearchString(Ljava/lang/String;)V
    .registers 2
    .parameter "str"

    .prologue
    .line 537
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mDefaultSearchString:Ljava/lang/String;

    .line 538
    return-void
.end method

.method public setSearchFieldTextChangeListener(Landroid/text/TextWatcher;)V
    .registers 3
    .parameter "watcher"

    .prologue
    .line 545
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSearchFieldTextWatcher:Ljava/lang/ref/WeakReference;

    .line 546
    return-void
.end method

.method public show(I)V
    .registers 3
    .parameter "view"

    .prologue
    .line 513
    iget v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mCurrentVisibilities:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mCurrentVisibilities:I

    .line 514
    return-void
.end method
