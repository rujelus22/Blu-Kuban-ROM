.class public Lcom/google/android/music/menu/ManageMusicMenu;
.super Landroid/widget/RelativeLayout;
.source "ManageMusicMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;


# instance fields
.field private mAvailableOfflineText:Landroid/widget/TextView;

.field private mDoneButton:Landroid/view/View;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mOverfullDialogDisplayed:Z

.field private mOverfullText:Landroid/widget/TextView;

.field private volatile mSpaceAvailableNotified:Z

.field private mSpaceAvailableProgress:Landroid/widget/ProgressBar;

.field private mSpaceAvailableText:Landroid/widget/TextView;

.field private mSpaceAvailableWait:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableNotified:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "c"
    .parameter "a"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableNotified:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/menu/ManageMusicMenu;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/android/music/menu/ManageMusicMenu;->superSetVisibility(I)V

    return-void
.end method

.method private superSetVisibility(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public declared-synchronized onAvailableSpaceChanged(JJZ)V
    .registers 15
    .parameter "totalSpace"
    .parameter "freeSpace"
    .parameter "availabilityTransition"

    .prologue
    const-wide/16 v3, 0x0

    .line 147
    monitor-enter p0

    cmp-long v1, p1, v3

    if-nez v1, :cond_10

    .line 148
    :try_start_7
    const-string v1, "ManageMusicMenu"

    const-string v2, "OfflineMusicManager shouldn\'t call us in that state."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_71

    .line 182
    :goto_e
    monitor-exit p0

    return-void

    .line 151
    :cond_10
    sub-long v1, p1, p3

    long-to-float v1, v1

    long-to-float v2, p1

    div-float v0, v1, v2

    .line 152
    .local v0, percentComplete:F
    :try_start_16
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableProgress:Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 155
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableWait:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 156
    cmp-long v1, p3, v3

    if-gez v1, :cond_74

    .line 159
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00d9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    neg-long v7, p3

    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mAvailableOfflineText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    iget-boolean v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullDialogDisplayed:Z

    if-nez v1, :cond_6d

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullDialogDisplayed:Z

    .line 181
    :cond_6d
    :goto_6d
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableNotified:Z
    :try_end_70
    .catchall {:try_start_16 .. :try_end_70} :catchall_71

    goto :goto_e

    .line 147
    .end local v0           #percentComplete:F
    :catchall_71
    move-exception v1

    monitor-exit p0

    throw v1

    .line 172
    .restart local v0       #percentComplete:F
    :cond_74
    :try_start_74
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00da

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p3, p4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullText:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mAvailableOfflineText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullDialogDisplayed:Z
    :try_end_ac
    .catchall {:try_start_74 .. :try_end_ac} :catchall_71

    goto :goto_6d
.end method

.method public declared-synchronized onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mDoneButton:Landroid/view/View;

    if-ne p1, v0, :cond_e

    .line 132
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_10

    .line 135
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0}, Lcom/google/android/music/OfflineMusicManager;->commitChanges()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_18

    .line 140
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    .line 137
    :cond_10
    :try_start_10
    const-string v0, "ManageMusicMenu"

    const-string v1, "Done clicked, but the offline music manager was null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_18

    goto :goto_e

    .line 131
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 53
    const v0, 0x7f100065

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mDoneButton:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mDoneButton:Landroid/view/View;

    new-instance v1, Lcom/google/android/music/FadingColorDrawable;

    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mDoneButton:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/google/android/music/FadingColorDrawable;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    const v0, 0x7f100069

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableProgress:Landroid/widget/ProgressBar;

    .line 56
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 57
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableProgress:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 58
    const v0, 0x7f10006a

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableWait:Landroid/widget/ProgressBar;

    .line 59
    const v0, 0x7f100068

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableText:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f10006b

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullText:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f100067

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mAvailableOfflineText:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mDoneButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOverfullDialogDisplayed:Z

    .line 64
    return-void
.end method

.method public setOfflineMusicManager(Lcom/google/android/music/OfflineMusicManager;)V
    .registers 3
    .parameter "offlineMusicManager"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_9

    .line 68
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->removeAvailableSpaceChangedListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 70
    :cond_9
    iput-object p1, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 71
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_14

    .line 72
    iget-object v0, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V

    .line 74
    :cond_14
    return-void
.end method

.method public declared-synchronized setVisibility(I)V
    .registers 7
    .parameter "newVisibility"

    .prologue
    const/16 v2, 0x8

    .line 82
    monitor-enter p0

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getVisibility()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_38

    move-result v1

    .line 83
    .local v1, currentVisibility:I
    if-ne p1, v1, :cond_b

    .line 128
    :goto_9
    monitor-exit p0

    return-void

    .line 86
    :cond_b
    if-nez p1, :cond_3b

    .line 87
    :try_start_d
    iget-boolean v2, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableNotified:Z

    if-nez v2, :cond_1e

    .line 88
    iget-object v2, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableWait:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 89
    iget-object v2, p0, Lcom/google/android/music/menu/ManageMusicMenu;->mSpaceAvailableText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050004

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 94
    .local v0, anim:Landroid/view/animation/Animation;
    new-instance v2, Lcom/google/android/music/menu/ManageMusicMenu$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/music/menu/ManageMusicMenu$1;-><init>(Lcom/google/android/music/menu/ManageMusicMenu;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    invoke-direct {p0, p1}, Lcom/google/android/music/menu/ManageMusicMenu;->superSetVisibility(I)V
    :try_end_37
    .catchall {:try_start_d .. :try_end_37} :catchall_38

    goto :goto_9

    .line 82
    .end local v0           #anim:Landroid/view/animation/Animation;
    .end local v1           #currentVisibility:I
    :catchall_38
    move-exception v2

    monitor-exit p0

    throw v2

    .line 108
    .restart local v1       #currentVisibility:I
    :cond_3b
    if-ne p1, v2, :cond_57

    .line 109
    :try_start_3d
    invoke-virtual {p0}, Lcom/google/android/music/menu/ManageMusicMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050005

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 112
    .restart local v0       #anim:Landroid/view/animation/Animation;
    new-instance v2, Lcom/google/android/music/menu/ManageMusicMenu$2;

    invoke-direct {v2, p0, p1}, Lcom/google/android/music/menu/ManageMusicMenu$2;-><init>(Lcom/google/android/music/menu/ManageMusicMenu;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 122
    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/ManageMusicMenu;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/google/android/music/menu/ManageMusicMenu;->superSetVisibility(I)V

    goto :goto_9

    .line 126
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_57
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid visibility: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_70
    .catchall {:try_start_3d .. :try_end_70} :catchall_38
.end method
