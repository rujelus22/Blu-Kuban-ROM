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

    .line 498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSplitActionBar:Z

    .line 494
    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mDefaultSearchString:Ljava/lang/String;

    .line 496
    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSearchFieldTextWatcher:Ljava/lang/ref/WeakReference;

    .line 499
    invoke-virtual {p0}, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->reset()V

    .line 500
    return-void
.end method


# virtual methods
.method public clearDefaultSearchString()V
    .registers 2

    .prologue
    .line 543
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mDefaultSearchString:Ljava/lang/String;

    .line 544
    return-void
.end method

.method public getDefaultSearchString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mDefaultSearchString:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchFieldTextWatcher()Landroid/text/TextWatcher;
    .registers 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSearchFieldTextWatcher:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_6

    .line 552
    const/4 v0, 0x0

    .line 554
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
    .line 511
    iget v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mCurrentVisibilities:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mCurrentVisibilities:I

    .line 512
    return-void
.end method

.method public isSplitActionBar()Z
    .registers 2

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSplitActionBar:Z

    return v0
.end method

.method public isVisible(I)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 519
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

    .line 503
    const/16 v0, 0x46d

    iput v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mCurrentVisibilities:I

    .line 505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSplitActionBar:Z

    .line 506
    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mDefaultSearchString:Ljava/lang/String;

    .line 507
    iput-object v1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSearchFieldTextWatcher:Ljava/lang/ref/WeakReference;

    .line 508
    return-void
.end method

.method public setDefaultSearchString(Ljava/lang/String;)V
    .registers 2
    .parameter "str"

    .prologue
    .line 539
    iput-object p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mDefaultSearchString:Ljava/lang/String;

    .line 540
    return-void
.end method

.method public setSearchFieldTextChangeListener(Landroid/text/TextWatcher;)V
    .registers 3
    .parameter "watcher"

    .prologue
    .line 547
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSearchFieldTextWatcher:Ljava/lang/ref/WeakReference;

    .line 548
    return-void
.end method

.method public setSplitActionBar(Z)V
    .registers 2
    .parameter "splitActionBar"

    .prologue
    .line 531
    iput-boolean p1, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mSplitActionBar:Z

    .line 532
    return-void
.end method

.method public show(I)V
    .registers 3
    .parameter "view"

    .prologue
    .line 515
    iget v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mCurrentVisibilities:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/music/activitymanagement/MusicFragment$ActionbarConfig;->mCurrentVisibilities:I

    .line 516
    return-void
.end method
