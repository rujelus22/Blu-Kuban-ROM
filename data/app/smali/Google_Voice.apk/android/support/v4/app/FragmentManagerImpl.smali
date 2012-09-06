.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator; = null

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator; = null

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator; = null

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator; = null

#the value of this static final field might be set in the static constructor
.field static final HONEYCOMB:Z = false

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mActivity:Landroid/support/v4/app/FragmentActivity;

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAvailIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpActions:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x4020

    const/high16 v3, 0x3fc0

    .line 348
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    .line 351
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    .line 627
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 628
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 629
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 630
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 347
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 382
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 383
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 385
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method private checkStateLoss()V
    .registers 4

    .prologue
    .line 1159
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    if-eqz v0, :cond_c

    .line 1160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1163
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 1164
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1167
    :cond_2b
    return-void
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .registers 6
    .parameter "context"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 650
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 651
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 652
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 653
    return-object v0
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .registers 16
    .parameter "context"
    .parameter "startScale"
    .parameter "endScale"
    .parameter "startAlpha"
    .parameter "endAlpha"

    .prologue
    .line 636
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 637
    .local v10, set:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    const/4 v7, 0x1

    const/high16 v8, 0x3f00

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 639
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 640
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 641
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 642
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 643
    .local v9, alpha:Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 644
    const-wide/16 v1, 0xdc

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 645
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 646
    return-object v10
.end method

.method public static reverseTransit(I)I
    .registers 2
    .parameter "transit"

    .prologue
    .line 1790
    const/4 v0, 0x0

    .line 1791
    .local v0, rev:I
    sparse-switch p0, :sswitch_data_e

    .line 1802
    :goto_4
    return v0

    .line 1793
    :sswitch_5
    const/16 v0, 0x2002

    .line 1794
    goto :goto_4

    .line 1796
    :sswitch_8
    const/16 v0, 0x1001

    .line 1797
    goto :goto_4

    .line 1799
    :sswitch_b
    const/16 v0, 0x1003

    goto :goto_4

    .line 1791
    :sswitch_data_e
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_b
        0x2002 -> :sswitch_8
    .end sparse-switch
.end method

.method public static transitToStyleIndex(IZ)I
    .registers 3
    .parameter "transit"
    .parameter "enter"

    .prologue
    .line 1814
    const/4 v0, -0x1

    .line 1815
    .local v0, animAttr:I
    sparse-switch p0, :sswitch_data_18

    .line 1826
    :goto_4
    return v0

    .line 1817
    :sswitch_5
    if-eqz p1, :cond_9

    const/4 v0, 0x1

    .line 1818
    :goto_8
    goto :goto_4

    .line 1817
    :cond_9
    const/4 v0, 0x2

    goto :goto_8

    .line 1820
    :sswitch_b
    if-eqz p1, :cond_f

    const/4 v0, 0x3

    .line 1821
    :goto_e
    goto :goto_4

    .line 1820
    :cond_f
    const/4 v0, 0x4

    goto :goto_e

    .line 1823
    :sswitch_11
    if-eqz p1, :cond_15

    const/4 v0, 0x5

    :goto_14
    goto :goto_4

    :cond_15
    const/4 v0, 0x6

    goto :goto_14

    .line 1815
    nop

    :sswitch_data_18
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_11
        0x2002 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
    .registers 3
    .parameter "state"

    .prologue
    .line 1293
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1296
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1298
    return-void
.end method

.method public addFragment(Landroid/support/v4/app/Fragment;Z)V
    .registers 7
    .parameter "fragment"
    .parameter "moveToStateNow"

    .prologue
    const/4 v3, 0x1

    .line 1036
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1039
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V

    .line 1041
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_30

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_30
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1043
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1044
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3b

    .line 1045
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1047
    :cond_3b
    if-eqz p2, :cond_40

    .line 1048
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    .line 1050
    :cond_40
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 468
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 471
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    return-void
.end method

.method public allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
    .registers 7
    .parameter "bse"

    .prologue
    .line 1189
    monitor-enter p0

    .line 1190
    :try_start_1
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4c

    .line 1191
    :cond_d
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v2, :cond_18

    .line 1192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1194
    :cond_18
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1195
    .local v0, index:I
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_44

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_44
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    monitor-exit p0

    move v1, v0

    .line 1203
    .end local v0           #index:I
    .local v1, index:I
    :goto_4b
    return v1

    .line 1200
    .end local v1           #index:I
    :cond_4c
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1201
    .restart local v0       #index:I
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_86

    const-string v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding back stack index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_86
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1203
    monitor-exit p0

    move v1, v0

    .end local v0           #index:I
    .restart local v1       #index:I
    goto :goto_4b

    .line 1205
    .end local v1           #index:I
    :catchall_8e
    move-exception v2

    monitor-exit p0
    :try_end_90
    .catchall {:try_start_1 .. :try_end_90} :catchall_8e

    throw v2
.end method

.method public attachActivity(Landroid/support/v4/app/FragmentActivity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 1625
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1626
    :cond_a
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 1627
    return-void
.end method

.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    .registers 2

    .prologue
    .line 394
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method public dispatchActivityCreated()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1639
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1640
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1641
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 1684
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    .line 1685
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1686
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1687
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1a

    .line 1688
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1685
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1692
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_1d
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 1765
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_26

    .line 1766
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 1767
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1768
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_23

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_23

    .line 1769
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1770
    const/4 v2, 0x1

    .line 1775
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :goto_22
    return v2

    .line 1766
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    .restart local v1       #i:I
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1775
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_26
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public dispatchCreate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1634
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1635
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1636
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1706
    const/4 v3, 0x0

    .line 1707
    .local v3, show:Z
    const/4 v2, 0x0

    .line 1708
    .local v2, newMenus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v4, :cond_32

    .line 1709
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_32

    .line 1710
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1711
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2f

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v4, :cond_2f

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_2f

    .line 1712
    const/4 v3, 0x1

    .line 1713
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1714
    if-nez v2, :cond_2c

    .line 1715
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #newMenus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1717
    .restart local v2       #newMenus:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_2c
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1709
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1722
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_32
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v4, :cond_55

    .line 1723
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_37
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_55

    .line 1724
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1725
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_4f

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 1726
    :cond_4f
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 1723
    :cond_52
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 1731
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_55
    iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 1733
    return v3
.end method

.method public dispatchDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1678
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    .line 1679
    invoke-virtual {p0, v1, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1680
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 1681
    return-void
.end method

.method public dispatchLowMemory()V
    .registers 4

    .prologue
    .line 1695
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    .line 1696
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1697
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1698
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1a

    .line 1699
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 1696
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1703
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_1d
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 1751
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_2a

    .line 1752
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 1753
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1754
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_27

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_27

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_27

    .line 1755
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1756
    const/4 v2, 0x1

    .line 1761
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :goto_26
    return v2

    .line 1752
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    .restart local v1       #i:I
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1761
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_2a
    const/4 v2, 0x0

    goto :goto_26
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    .line 1779
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_25

    .line 1780
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_25

    .line 1781
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1782
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_22

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_22

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_22

    .line 1783
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1780
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1787
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_25
    return-void
.end method

.method public dispatchPause()V
    .registers 3

    .prologue
    .line 1654
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1655
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    .line 1737
    const/4 v2, 0x0

    .line 1738
    .local v2, show:Z
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v3, :cond_27

    .line 1739
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_27

    .line 1740
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1741
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_24

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_24

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_24

    .line 1742
    const/4 v2, 0x1

    .line 1743
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1739
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1747
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_27
    return v2
.end method

.method public dispatchReallyStop(Z)V
    .registers 5
    .parameter "retaining"

    .prologue
    .line 1667
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    .line 1668
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1669
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1670
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1a

    .line 1671
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performReallyStop(Z)V

    .line 1668
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1675
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_1d
    return-void
.end method

.method public dispatchResume()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1649
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1650
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1651
    return-void
.end method

.method public dispatchStart()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1644
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1645
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1646
    return-void
.end method

.method public dispatchStop()V
    .registers 3

    .prologue
    .line 1661
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1663
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1664
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 521
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 524
    .local v4, innerPrefix:Ljava/lang/String;
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v6, :cond_5d

    .line 525
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 526
    .local v0, N:I
    if-lez v0, :cond_5d

    .line 527
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 528
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 529
    const-string v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 530
    const/4 v3, 0x0

    .local v3, i:I
    :goto_38
    if-ge v3, v0, :cond_5d

    .line 531
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 532
    .local v2, f:Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 533
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 534
    if-eqz v2, :cond_5a

    .line 535
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 530
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 541
    .end local v0           #N:I
    .end local v2           #f:Landroid/support/v4/app/Fragment;
    .end local v3           #i:I
    :cond_5d
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v6, :cond_96

    .line 542
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 543
    .restart local v0       #N:I
    if-lez v0, :cond_96

    .line 544
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_72
    if-ge v3, v0, :cond_96

    .line 546
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 547
    .restart local v2       #f:Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 548
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 553
    .end local v0           #N:I
    .end local v2           #f:Landroid/support/v4/app/Fragment;
    .end local v3           #i:I
    :cond_96
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v6, :cond_cf

    .line 554
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 555
    .restart local v0       #N:I
    if-lez v0, :cond_cf

    .line 556
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_ab
    if-ge v3, v0, :cond_cf

    .line 558
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 559
    .restart local v2       #f:Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 560
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    add-int/lit8 v3, v3, 0x1

    goto :goto_ab

    .line 565
    .end local v0           #N:I
    .end local v2           #f:Landroid/support/v4/app/Fragment;
    .end local v3           #i:I
    :cond_cf
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_10b

    .line 566
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 567
    .restart local v0       #N:I
    if-lez v0, :cond_10b

    .line 568
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_e4
    if-ge v3, v0, :cond_10b

    .line 570
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 571
    .local v1, bs:Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 572
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 569
    add-int/lit8 v3, v3, 0x1

    goto :goto_e4

    .line 578
    .end local v0           #N:I
    .end local v1           #bs:Landroid/support/v4/app/BackStackRecord;
    .end local v3           #i:I
    :cond_10b
    monitor-enter p0

    .line 579
    :try_start_10c
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_141

    .line 580
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 581
    .restart local v0       #N:I
    if-lez v0, :cond_141

    .line 582
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_121
    if-ge v3, v0, :cond_141

    .line 584
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 585
    .restart local v1       #bs:Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 586
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 583
    add-int/lit8 v3, v3, 0x1

    goto :goto_121

    .line 591
    .end local v0           #N:I
    .end local v1           #bs:Landroid/support/v4/app/BackStackRecord;
    .end local v3           #i:I
    :cond_141
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_162

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_162

    .line 592
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 593
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 595
    :cond_162
    monitor-exit p0
    :try_end_163
    .catchall {:try_start_10c .. :try_end_163} :catchall_198

    .line 597
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_19b

    .line 598
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 599
    .restart local v0       #N:I
    if-lez v0, :cond_19b

    .line 600
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 601
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_178
    if-ge v3, v0, :cond_19b

    .line 602
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 603
    .local v5, r:Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 604
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 601
    add-int/lit8 v3, v3, 0x1

    goto :goto_178

    .line 595
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v5           #r:Ljava/lang/Runnable;
    :catchall_198
    move-exception v6

    :try_start_199
    monitor-exit p0
    :try_end_19a
    .catchall {:try_start_199 .. :try_end_19a} :catchall_198

    throw v6

    .line 609
    :cond_19b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "FragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 611
    const-string v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 612
    const-string v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 613
    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v6, :cond_1d5

    .line 614
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 615
    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 617
    :cond_1d5
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v6, :cond_1e6

    .line 618
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 619
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    :cond_1e6
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_207

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_207

    .line 622
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mAvailIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 623
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    :cond_207
    return-void
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .registers 5
    .parameter "action"
    .parameter "allowStateLoss"

    .prologue
    .line 1170
    if-nez p2, :cond_5

    .line 1171
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1173
    :cond_5
    monitor-enter p0

    .line 1174
    :try_start_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_15

    .line 1175
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1185
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v0

    .line 1177
    :cond_15
    :try_start_15
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_20

    .line 1178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1180
    :cond_20
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 1182
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1183
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1185
    :cond_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_15 .. :try_end_41} :catchall_12

    .line 1186
    return-void
.end method

.method public execPendingActions()Z
    .registers 6

    .prologue
    .line 1248
    iget-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v3, :cond_c

    .line 1249
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Recursive entry to executePendingTransactions"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1252
    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_22

    .line 1253
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Must be called from main thread of process"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1256
    :cond_22
    const/4 v0, 0x0

    .line 1261
    .local v0, didSomething:Z
    :goto_23
    monitor-enter p0

    .line 1262
    :try_start_24
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_30

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_32

    .line 1263
    :cond_30
    monitor-exit p0

    return v0

    .line 1266
    :cond_32
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1267
    .local v2, numActions:I
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    if-eqz v3, :cond_41

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    array-length v3, v3

    if-ge v3, v2, :cond_45

    .line 1268
    :cond_41
    new-array v3, v2, [Ljava/lang/Runnable;

    iput-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    .line 1270
    :cond_45
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1271
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1272
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1273
    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_24 .. :try_end_5b} :catchall_6b

    .line 1275
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1276
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5f
    if-ge v1, v2, :cond_6e

    .line 1277
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1276
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 1273
    .end local v1           #i:I
    .end local v2           #numActions:I
    :catchall_6b
    move-exception v3

    :try_start_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    throw v3

    .line 1279
    .restart local v1       #i:I
    .restart local v2       #numActions:I
    :cond_6e
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1280
    const/4 v0, 0x1

    .line 1281
    goto :goto_23
.end method

.method public executePendingTransactions()Z
    .registers 2

    .prologue
    .line 399
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
    .registers 5
    .parameter "id"

    .prologue
    .line 1107
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_3b

    .line 1109
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_c
    if-ltz v1, :cond_20

    .line 1110
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1111
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1d

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_1d

    .line 1123
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_1c
    :goto_1c
    return-object v0

    .line 1109
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    .restart local v1       #i:I
    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 1116
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :cond_20
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_28
    if-ltz v1, :cond_3b

    .line 1117
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1118
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_38

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_1c

    .line 1116
    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 1123
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_3b
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 5
    .parameter "tag"

    .prologue
    .line 1127
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_45

    if-eqz p1, :cond_45

    .line 1129
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_e
    if-ltz v1, :cond_26

    .line 1130
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1131
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_23

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1143
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_22
    :goto_22
    return-object v0

    .line 1129
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    .restart local v1       #i:I
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1136
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :cond_26
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_2e
    if-ltz v1, :cond_45

    .line 1137
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1138
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_42

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1136
    :cond_42
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    .line 1143
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_45
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 5
    .parameter "who"

    .prologue
    .line 1147
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_26

    if-eqz p1, :cond_26

    .line 1148
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_e
    if-ltz v1, :cond_26

    .line 1149
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1150
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_23

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1155
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :goto_22
    return-object v0

    .line 1148
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    .restart local v1       #i:I
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1155
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_26
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public freeBackStackIndex(I)V
    .registers 5
    .parameter "index"

    .prologue
    .line 1234
    monitor-enter p0

    .line 1235
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1236
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 1237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1239
    :cond_12
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_2e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    monitor-exit p0

    .line 1242
    return-void

    .line 1241
    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .registers 3
    .parameter "index"

    .prologue
    .line 463
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    return-object v0
.end method

.method public getBackStackEntryCount()I
    .registers 2

    .prologue
    .line 458
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 8
    .parameter "bundle"
    .parameter "key"

    .prologue
    const/4 v2, -0x1

    .line 492
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 493
    .local v1, index:I
    if-ne v1, v2, :cond_9

    .line 494
    const/4 v0, 0x0

    .line 505
    :cond_8
    return-object v0

    .line 496
    :cond_9
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_34

    .line 497
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragement no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 500
    :cond_34
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 501
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_8

    .line 502
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragement no longer exists for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;II)V
    .registers 9
    .parameter "fragment"
    .parameter "transition"
    .parameter "transitionStyle"

    .prologue
    const/4 v4, 0x1

    .line 1069
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1d

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_1d
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v1, :cond_46

    .line 1071
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1072
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_39

    .line 1073
    invoke-virtual {p0, p1, p2, v4, p3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1075
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_32

    .line 1076
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1078
    :cond_32
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_39
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_43

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_43

    .line 1081
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1083
    :cond_43
    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1085
    :cond_46
    return-void
.end method

.method loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .registers 14
    .parameter "fragment"
    .parameter "transit"
    .parameter "enter"
    .parameter "transitionStyle"

    .prologue
    const v8, 0x3f79999a

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    .line 658
    iget v4, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {p1, p2, p3, v4}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 660
    .local v1, animObj:Landroid/view/animation/Animation;
    if-eqz v1, :cond_10

    .line 712
    .end local v1           #animObj:Landroid/view/animation/Animation;
    :goto_f
    return-object v1

    .line 664
    .restart local v1       #animObj:Landroid/view/animation/Animation;
    :cond_10
    iget v4, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    if-eqz v4, :cond_20

    .line 665
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v5, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 666
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_20

    move-object v1, v0

    .line 667
    goto :goto_f

    .line 671
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_20
    if-nez p2, :cond_24

    move-object v1, v3

    .line 672
    goto :goto_f

    .line 675
    :cond_24
    invoke-static {p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v2

    .line 676
    .local v2, styleIndex:I
    if-gez v2, :cond_2c

    move-object v1, v3

    .line 677
    goto :goto_f

    .line 680
    :cond_2c
    packed-switch v2, :pswitch_data_7a

    .line 695
    if-nez p4, :cond_45

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v4, :cond_45

    .line 696
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget p4, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 698
    :cond_45
    if-nez p4, :cond_78

    move-object v1, v3

    .line 699
    goto :goto_f

    .line 682
    :pswitch_49
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/high16 v4, 0x3f90

    invoke-static {v3, v4, v6, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_f

    .line 684
    :pswitch_52
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v6, v8, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_f

    .line 686
    :pswitch_59
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v8, v6, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_f

    .line 688
    :pswitch_60
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v4, 0x3f89999a

    invoke-static {v3, v6, v4, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_f

    .line 690
    :pswitch_6a
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_f

    .line 692
    :pswitch_71
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_f

    :cond_78
    move-object v1, v3

    .line 712
    goto :goto_f

    .line 680
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_49
        :pswitch_52
        :pswitch_59
        :pswitch_60
        :pswitch_6a
        :pswitch_71
    .end packed-switch
.end method

.method makeActive(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "f"

    .prologue
    .line 1003
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_5

    .line 1018
    :goto_4
    return-void

    .line 1007
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2b

    .line 1008
    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    .line 1009
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1011
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setIndex(I)V

    .line 1012
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1015
    :cond_2b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setIndex(I)V

    .line 1016
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method makeInactive(Landroid/support/v4/app/Fragment;)V
    .registers 5
    .parameter "f"

    .prologue
    .line 1021
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_5

    .line 1033
    :goto_4
    return-void

    .line 1025
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_23

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_23
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1027
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_36

    .line 1028
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1030
    :cond_36
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1031
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->invalidateSupportFragmentIndex(I)V

    .line 1032
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->clearIndex()V

    goto :goto_4
.end method

.method moveToState(IIIZ)V
    .registers 9
    .parameter "newState"
    .parameter "transit"
    .parameter "transitStyle"
    .parameter "always"

    .prologue
    .line 978
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v2, :cond_e

    if-eqz p1, :cond_e

    .line 979
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No activity"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 982
    :cond_e
    if-nez p4, :cond_15

    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-ne v2, p1, :cond_15

    .line 1000
    :cond_14
    :goto_14
    return-void

    .line 986
    :cond_15
    iput p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 987
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_14

    .line 988
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 989
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 990
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_31

    .line 991
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;III)V

    .line 988
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 995
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :cond_34
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_14

    .line 996
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 997
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_14
.end method

.method moveToState(IZ)V
    .registers 4
    .parameter "newState"
    .parameter "always"

    .prologue
    const/4 v0, 0x0

    .line 974
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 975
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "f"

    .prologue
    const/4 v1, 0x0

    .line 970
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;III)V

    .line 971
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;III)V
    .registers 12
    .parameter "f"
    .parameter "newState"
    .parameter "transit"
    .parameter "transitionStyle"

    .prologue
    .line 717
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v4, :cond_8

    const/4 v4, 0x1

    if-le p2, v4, :cond_8

    .line 718
    const/4 p2, 0x1

    .line 721
    :cond_8
    iget v4, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v4, p2, :cond_276

    .line 725
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v4, :cond_15

    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v4, :cond_15

    .line 967
    :goto_14
    return-void

    .line 728
    :cond_15
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v4, :cond_23

    .line 733
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 734
    iget v4, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v4, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;III)V

    .line 736
    :cond_23
    iget v4, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v4, :pswitch_data_446

    .line 966
    :cond_28
    :goto_28
    iput p2, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_14

    .line 738
    :pswitch_2b
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_47

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_47
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v4, :cond_6e

    .line 740
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:view_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 742
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:target_state"

    invoke-virtual {p0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 744
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_6e

    .line 745
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:target_req_state"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p1, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 749
    :cond_6e
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 750
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 751
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 752
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 753
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v4, :cond_a3

    .line 754
    new-instance v4, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onAttach()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 757
    :cond_a3
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4, p1}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 759
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v4, :cond_d7

    .line 760
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 761
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 762
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v4, :cond_d7

    .line 763
    new-instance v4, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onCreate()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 767
    :cond_d7
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 768
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v4, :cond_10b

    .line 772
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v5, v6}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 774
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_16c

    .line 775
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 776
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 777
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->restoreViewState()V

    .line 778
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_10b

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 784
    :cond_10b
    :goto_10b
    :pswitch_10b
    const/4 v4, 0x1

    if-le p2, v4, :cond_1e3

    .line 785
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_12a

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto CONTENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_12a
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v4, :cond_1b1

    .line 787
    const/4 v1, 0x0

    .line 788
    .local v1, container:Landroid/view/ViewGroup;
    iget v4, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eqz v4, :cond_170

    .line 789
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v5, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #container:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 790
    .restart local v1       #container:Landroid/view/ViewGroup;
    if-nez v1, :cond_170

    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mRestored:Z

    if-nez v4, :cond_170

    .line 791
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No view found for id 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 780
    .end local v1           #container:Landroid/view/ViewGroup;
    :cond_16c
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_10b

    .line 796
    .restart local v1       #container:Landroid/view/ViewGroup;
    :cond_170
    iput-object v1, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 797
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v1, v5}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 799
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_1dc

    .line 800
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 801
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 802
    if-eqz v1, :cond_1a6

    .line 803
    const/4 v4, 0x1

    invoke-virtual {p0, p1, p3, v4, p4}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 805
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_19e

    .line 806
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 808
    :cond_19e
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 809
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->restoreViewState()V

    .line 811
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_1a6
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_1b1

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 817
    .end local v1           #container:Landroid/view/ViewGroup;
    :cond_1b1
    :goto_1b1
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 818
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 819
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v4, :cond_1e0

    .line 820
    new-instance v4, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onActivityCreated()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 813
    .restart local v1       #container:Landroid/view/ViewGroup;
    :cond_1dc
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_1b1

    .line 823
    .end local v1           #container:Landroid/view/ViewGroup;
    :cond_1e0
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 826
    :cond_1e3
    :pswitch_1e3
    const/4 v4, 0x2

    if-le p2, v4, :cond_22b

    .line 827
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_202

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto STARTED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_202
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 829
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 830
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v4, :cond_22b

    .line 831
    new-instance v4, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onStart()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 836
    :cond_22b
    :pswitch_22b
    const/4 v4, 0x3

    if-le p2, v4, :cond_28

    .line 837
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_24a

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveto RESUMED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_24a
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 839
    const/4 v4, 0x1

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 840
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 841
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v4, :cond_28

    .line 842
    new-instance v4, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onResume()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 847
    :cond_276
    iget v4, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le v4, p2, :cond_28

    .line 848
    iget v4, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v4, :pswitch_data_452

    goto/16 :goto_28

    .line 921
    :cond_281
    :goto_281
    :pswitch_281
    const/4 v4, 0x1

    if-ge p2, v4, :cond_28

    .line 922
    iget-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v4, :cond_294

    .line 923
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v4, :cond_294

    .line 930
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 931
    .local v3, v:Landroid/view/View;
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 932
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 935
    .end local v3           #v:Landroid/view/View;
    :cond_294
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v4, :cond_3c8

    .line 940
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    goto/16 :goto_28

    .line 850
    :pswitch_29c
    const/4 v4, 0x4

    if-ge p2, v4, :cond_2e7

    .line 851
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_2bb

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom RESUMED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_2bb
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 853
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 854
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v4, :cond_2e4

    .line 855
    new-instance v4, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onPause()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 858
    :cond_2e4
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 861
    :cond_2e7
    :pswitch_2e7
    const/4 v4, 0x3

    if-ge p2, v4, :cond_32f

    .line 862
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_306

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom STARTED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :cond_306
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 864
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStop()V

    .line 865
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v4, :cond_32f

    .line 866
    new-instance v4, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onStop()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 871
    :cond_32f
    :pswitch_32f
    const/4 v4, 0x2

    if-ge p2, v4, :cond_281

    .line 872
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_34e

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom CONTENT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_34e
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_361

    .line 876
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_361

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v4, :cond_361

    .line 877
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    .line 880
    :cond_361
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 881
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 882
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v4, :cond_38a

    .line 883
    new-instance v4, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onDestroyView()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 886
    :cond_38a
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_3bd

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_3bd

    .line 887
    const/4 v0, 0x0

    .line 888
    .restart local v0       #anim:Landroid/view/animation/Animation;
    iget v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lez v4, :cond_3a0

    iget-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v4, :cond_3a0

    .line 889
    const/4 v4, 0x0

    invoke-virtual {p0, p1, p3, v4, p4}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 892
    :cond_3a0
    if-eqz v0, :cond_3b6

    .line 893
    move-object v2, p1

    .line 894
    .local v2, fragment:Landroid/support/v4/app/Fragment;
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 895
    iput p2, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 896
    new-instance v4, Landroid/support/v4/app/FragmentManagerImpl$5;

    invoke-direct {v4, p0, v2}, Landroid/support/v4/app/FragmentManagerImpl$5;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 912
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 914
    .end local v2           #fragment:Landroid/support/v4/app/Fragment;
    :cond_3b6
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v5, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 916
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_3bd
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 917
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 918
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto/16 :goto_281

    .line 942
    :cond_3c8
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_3e4

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "movefrom CREATED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_3e4
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v4, :cond_411

    .line 944
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 945
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 946
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v4, :cond_411

    .line 947
    new-instance v4, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onDestroy()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 952
    :cond_411
    const/4 v4, 0x0

    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 953
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 954
    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v4, :cond_43a

    .line 955
    new-instance v4, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onDetach()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 958
    :cond_43a
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    .line 959
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 960
    const/4 v4, 0x0

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    goto/16 :goto_28

    .line 736
    nop

    :pswitch_data_446
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_10b
        :pswitch_1e3
        :pswitch_22b
    .end packed-switch

    .line 848
    :pswitch_data_452
    .packed-switch 0x1
        :pswitch_281
        :pswitch_32f
        :pswitch_2e7
        :pswitch_29c
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .registers 2

    .prologue
    .line 1630
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1631
    return-void
.end method

.method public popBackStack()V
    .registers 3

    .prologue
    .line 404
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 409
    return-void
.end method

.method public popBackStack(II)V
    .registers 6
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 436
    if-gez p1, :cond_1b

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_1b
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$4;-><init>(Landroid/support/v4/app/FragmentManagerImpl;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 444
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .registers 5
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 420
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$3;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 425
    return-void
.end method

.method public popBackStackImmediate()Z
    .registers 5

    .prologue
    .line 413
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 414
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 415
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .registers 6
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 448
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 449
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 450
    if-gez p1, :cond_21

    .line 451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_21
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .registers 5
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 429
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 430
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 431
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .registers 16
    .parameter "handler"
    .parameter "name"
    .parameter "id"
    .parameter "flags"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1301
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v6, :cond_7

    .line 1360
    :cond_6
    :goto_6
    return v9

    .line 1304
    :cond_7
    if-nez p2, :cond_29

    if-gez p3, :cond_29

    and-int/lit8 v6, p4, 0x1

    if-nez v6, :cond_29

    .line 1305
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 1306
    .local v4, last:I
    if-ltz v4, :cond_6

    .line 1309
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 1310
    .local v1, bss:Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {v1, v8}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(Z)V

    .line 1311
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    .end local v1           #bss:Landroid/support/v4/app/BackStackRecord;
    .end local v4           #last:I
    :goto_27
    move v9, v8

    .line 1360
    goto :goto_6

    .line 1313
    :cond_29
    const/4 v3, -0x1

    .line 1314
    .local v3, index:I
    if-nez p2, :cond_2e

    if-ltz p3, :cond_7c

    .line 1317
    :cond_2e
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .line 1318
    :goto_36
    if-ltz v3, :cond_4c

    .line 1319
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 1320
    .restart local v1       #bss:Landroid/support/v4/app/BackStackRecord;
    if-eqz p2, :cond_73

    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1328
    .end local v1           #bss:Landroid/support/v4/app/BackStackRecord;
    :cond_4c
    if-ltz v3, :cond_6

    .line 1331
    and-int/lit8 v6, p4, 0x1

    if-eqz v6, :cond_7c

    .line 1332
    add-int/lit8 v3, v3, -0x1

    .line 1334
    :goto_54
    if-ltz v3, :cond_7c

    .line 1335
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 1336
    .restart local v1       #bss:Landroid/support/v4/app/BackStackRecord;
    if-eqz p2, :cond_6a

    invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_70

    :cond_6a
    if-ltz p3, :cond_7c

    iget v6, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ne p3, v6, :cond_7c

    .line 1338
    :cond_70
    add-int/lit8 v3, v3, -0x1

    .line 1339
    goto :goto_54

    .line 1323
    :cond_73
    if-ltz p3, :cond_79

    iget v6, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-eq p3, v6, :cond_4c

    .line 1326
    :cond_79
    add-int/lit8 v3, v3, -0x1

    .line 1327
    goto :goto_36

    .line 1345
    .end local v1           #bss:Landroid/support/v4/app/BackStackRecord;
    :cond_7c
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v3, v6, :cond_6

    .line 1348
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1350
    .local v5, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/BackStackRecord;>;"
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_93
    if-le v2, v3, :cond_a1

    .line 1351
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1350
    add-int/lit8 v2, v2, -0x1

    goto :goto_93

    .line 1353
    :cond_a1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 1354
    .local v0, LAST:I
    const/4 v2, 0x0

    :goto_a8
    if-gt v2, v0, :cond_db

    .line 1355
    sget-boolean v6, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_ca

    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Popping back stack state: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_ca
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/BackStackRecord;

    if-ne v2, v0, :cond_d9

    move v7, v8

    :goto_d3
    invoke-virtual {v6, v7}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(Z)V

    .line 1354
    add-int/lit8 v2, v2, 0x1

    goto :goto_a8

    :cond_d9
    move v7, v9

    .line 1356
    goto :goto_d3

    .line 1358
    :cond_db
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    goto/16 :goto_27
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .registers 7
    .parameter "bundle"
    .parameter "key"
    .parameter "fragment"

    .prologue
    .line 483
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_23

    .line 484
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_23
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 488
    return-void
.end method

.method public removeFragment(Landroid/support/v4/app/Fragment;II)V
    .registers 10
    .parameter "fragment"
    .parameter "transition"
    .parameter "transitionStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1053
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2a

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nesting="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_2a
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1055
    iget v3, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    if-gtz v3, :cond_49

    move v0, v1

    .line 1056
    .local v0, inactive:Z
    :goto_34
    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_3a

    .line 1057
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1059
    :cond_3a
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1060
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1061
    if-eqz v0, :cond_4b

    :goto_40
    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;III)V

    .line 1063
    if-eqz v0, :cond_48

    .line 1064
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeInactive(Landroid/support/v4/app/Fragment;)V

    .line 1066
    :cond_48
    return-void

    .end local v0           #inactive:Z
    :cond_49
    move v0, v2

    .line 1055
    goto :goto_34

    .restart local v0       #inactive:Z
    :cond_4b
    move v2, v1

    .line 1061
    goto :goto_40
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 476
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 477
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 479
    :cond_9
    return-void
.end method

.method reportBackStackChanged()V
    .registers 3

    .prologue
    .line 1285
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    .line 1286
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1287
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 1286
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1290
    .end local v0           #i:I
    :cond_1b
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .registers 13
    .parameter "state"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, nonConfig:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1522
    if-nez p1, :cond_5

    .line 1622
    :cond_4
    :goto_4
    return-void

    :cond_5
    move-object v2, p1

    .line 1523
    check-cast v2, Landroid/support/v4/app/FragmentManagerState;

    .line 1524
    .local v2, fms:Landroid/support/v4/app/FragmentManagerState;
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    if-eqz v5, :cond_4

    .line 1528
    if-eqz p2, :cond_63

    .line 1529
    const/4 v4, 0x0

    .local v4, i:I
    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_63

    .line 1530
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1531
    .local v1, f:Landroid/support/v4/app/Fragment;
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_37

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: re-attaching retained "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    :cond_37
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    iget v6, v1, Landroid/support/v4/app/Fragment;->mIndex:I

    aget-object v3, v5, v6

    .line 1533
    .local v3, fs:Landroid/support/v4/app/FragmentState;
    iput-object v1, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 1534
    iput-object v8, v1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1535
    iput v9, v1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 1536
    iput-boolean v9, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 1537
    iput-boolean v9, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1538
    iget-object v5, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v5, :cond_60

    .line 1539
    iget-object v5, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1540
    iget-object v5, v3, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v6, "android:view_state"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v5

    iput-object v5, v1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1529
    :cond_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1548
    .end local v1           #f:Landroid/support/v4/app/Fragment;
    .end local v3           #fs:Landroid/support/v4/app/FragmentState;
    .end local v4           #i:I
    :cond_63
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1549
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v5, :cond_76

    .line 1550
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1552
    :cond_76
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_77
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v5, v5

    if-ge v4, v5, :cond_110

    .line 1553
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    aget-object v3, v5, v4

    .line 1554
    .restart local v3       #fs:Landroid/support/v4/app/FragmentState;
    if-eqz v3, :cond_b8

    .line 1555
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3, v5}, Landroid/support/v4/app/FragmentState;->instantiate(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 1556
    .restart local v1       #f:Landroid/support/v4/app/Fragment;
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_ae

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: adding #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    :cond_ae
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1561
    iput-object v8, v3, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 1552
    .end local v1           #f:Landroid/support/v4/app/Fragment;
    :goto_b5
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 1563
    :cond_b8
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_da

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: adding #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": (null)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    :cond_da
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1565
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v5, :cond_ea

    .line 1566
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1568
    :cond_ea
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_106

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: adding avail #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_106
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b5

    .line 1574
    .end local v3           #fs:Landroid/support/v4/app/FragmentState;
    :cond_110
    if-eqz p2, :cond_167

    .line 1575
    const/4 v4, 0x0

    :goto_113
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_167

    .line 1576
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1577
    .restart local v1       #f:Landroid/support/v4/app/Fragment;
    iget-object v5, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_13d

    .line 1578
    iget-object v5, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mIndex:I

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_140

    .line 1579
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v6, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    iput-object v5, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1575
    :cond_13d
    :goto_13d
    add-int/lit8 v4, v4, 0x1

    goto :goto_113

    .line 1581
    :cond_140
    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Re-attaching retained fragment "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " target no longer exists: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iput-object v8, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    goto :goto_13d

    .line 1590
    .end local v1           #f:Landroid/support/v4/app/Fragment;
    :cond_167
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    if-eqz v5, :cond_1db

    .line 1591
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1592
    const/4 v4, 0x0

    :goto_176
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v5, v5

    if-ge v4, v5, :cond_1dd

    .line 1593
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1594
    .restart local v1       #f:Landroid/support/v4/app/Fragment;
    if-nez v1, :cond_1a6

    .line 1595
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No instantiated fragment for index #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1598
    :cond_1a6
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1599
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iput-object v5, v1, Landroid/support/v4/app/Fragment;->mImmediateActivity:Landroid/support/v4/app/FragmentActivity;

    .line 1600
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_1d3

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: making added #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_1d3
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1592
    add-int/lit8 v4, v4, 0x1

    goto :goto_176

    .line 1604
    .end local v1           #f:Landroid/support/v4/app/Fragment;
    :cond_1db
    iput-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1608
    :cond_1dd
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    if-eqz v5, :cond_23c

    .line 1609
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v6, v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1610
    const/4 v4, 0x0

    :goto_1ec
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 1611
    iget-object v5, v2, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    aget-object v5, v5, v4

    invoke-virtual {v5, p0}, Landroid/support/v4/app/BackStackState;->instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v0

    .line 1612
    .local v0, bse:Landroid/support/v4/app/BackStackRecord;
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_22b

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreAllState: adding bse #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_22b
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    iget v5, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v5, :cond_239

    .line 1616
    iget v5, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v5, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V

    .line 1610
    :cond_239
    add-int/lit8 v4, v4, 0x1

    goto :goto_1ec

    .line 1620
    .end local v0           #bse:Landroid/support/v4/app/BackStackRecord;
    :cond_23c
    iput-object v8, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    goto/16 :goto_4
.end method

.method retainNonConfig()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1364
    const/4 v1, 0x0

    .line 1365
    .local v1, fragments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v3, :cond_2c

    .line 1366
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 1367
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1368
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_29

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v3, :cond_29

    .line 1369
    if-nez v1, :cond_23

    .line 1370
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #fragments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1372
    .restart local v1       #fragments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    :cond_23
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1366
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1377
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v2           #i:I
    :cond_2c
    return-object v1
.end method

.method saveAllState()Landroid/os/Parcelable;
    .registers 15

    .prologue
    const/4 v5, 0x0

    .line 1397
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1399
    sget-boolean v10, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    if-eqz v10, :cond_b

    .line 1409
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1412
    :cond_b
    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v10, :cond_17

    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-gtz v10, :cond_18

    .line 1516
    :cond_17
    :goto_17
    return-object v5

    .line 1417
    :cond_18
    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1418
    .local v0, N:I
    new-array v1, v0, [Landroid/support/v4/app/FragmentState;

    .line 1419
    .local v1, active:[Landroid/support/v4/app/FragmentState;
    const/4 v7, 0x0

    .line 1420
    .local v7, haveFragments:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_22
    if-ge v8, v0, :cond_115

    .line 1421
    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 1422
    .local v4, f:Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_10c

    .line 1423
    const/4 v7, 0x1

    .line 1425
    new-instance v6, Landroid/support/v4/app/FragmentState;

    invoke-direct {v6, v4}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1426
    .local v6, fs:Landroid/support/v4/app/FragmentState;
    aput-object v6, v1, v8

    .line 1428
    iget v10, v4, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v10, :cond_110

    iget-object v10, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v10, :cond_110

    .line 1429
    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v10, :cond_49

    .line 1430
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iput-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1432
    :cond_49
    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v10}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1433
    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/os/Bundle;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5c

    .line 1434
    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    iput-object v10, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1435
    iput-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1438
    :cond_5c
    iget-object v10, v4, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v10, :cond_7b

    .line 1439
    invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    .line 1440
    iget-object v10, v4, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v10, :cond_7b

    .line 1441
    iget-object v10, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v10, :cond_72

    .line 1442
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iput-object v10, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1444
    :cond_72
    iget-object v10, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:view_state"

    iget-object v12, v4, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1449
    :cond_7b
    iget-object v10, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v10, :cond_e4

    .line 1450
    iget-object v10, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v10, v10, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v10, :cond_c3

    .line 1451
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure saving state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " has target not in fragment manager: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1453
    .local v9, msg:Ljava/lang/String;
    const-string v10, "FragmentManager"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const-string v10, "  "

    new-instance v11, Ljava/io/PrintWriter;

    new-instance v12, Landroid/support/v4/util/LogWriter;

    const-string v13, "FragmentManager"

    invoke-direct {v12, v13}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-virtual {p0, v10, v5, v11, v12}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1455
    new-instance v10, Ljava/lang/IllegalStateException;

    invoke-direct {v10, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1457
    .end local v9           #msg:Ljava/lang/String;
    :cond_c3
    iget-object v10, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v10, :cond_ce

    .line 1458
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    iput-object v10, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1460
    :cond_ce
    iget-object v10, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:target_state"

    iget-object v12, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v10, v11, v12}, Landroid/support/v4/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1462
    iget v10, v4, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v10, :cond_e4

    .line 1463
    iget-object v10, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:target_req_state"

    iget v12, v4, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1473
    :cond_e4
    :goto_e4
    sget-boolean v10, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_10c

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Saved state of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    .end local v6           #fs:Landroid/support/v4/app/FragmentState;
    :cond_10c
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_22

    .line 1470
    .restart local v6       #fs:Landroid/support/v4/app/FragmentState;
    :cond_110
    iget-object v10, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v10, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_e4

    .line 1478
    .end local v4           #f:Landroid/support/v4/app/Fragment;
    .end local v6           #fs:Landroid/support/v4/app/FragmentState;
    :cond_115
    if-nez v7, :cond_124

    .line 1479
    sget-boolean v10, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_17

    const-string v10, "FragmentManager"

    const-string v11, "saveAllState: no fragments!"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1483
    :cond_124
    const/4 v2, 0x0

    .line 1484
    .local v2, added:[I
    const/4 v3, 0x0

    .line 1487
    .local v3, backStack:[Landroid/support/v4/app/BackStackState;
    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v10, :cond_172

    .line 1488
    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1489
    if-lez v0, :cond_172

    .line 1490
    new-array v2, v0, [I

    .line 1491
    const/4 v8, 0x0

    :goto_135
    if-ge v8, v0, :cond_172

    .line 1492
    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/Fragment;

    iget v10, v10, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v10, v2, v8

    .line 1493
    sget-boolean v10, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_16f

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveAllState: adding fragment #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_16f
    add-int/lit8 v8, v8, 0x1

    goto :goto_135

    .line 1500
    :cond_172
    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v10, :cond_1c1

    .line 1501
    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1502
    if-lez v0, :cond_1c1

    .line 1503
    new-array v3, v0, [Landroid/support/v4/app/BackStackState;

    .line 1504
    const/4 v8, 0x0

    :goto_181
    if-ge v8, v0, :cond_1c1

    .line 1505
    new-instance v11, Landroid/support/v4/app/BackStackState;

    iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v11, p0, v10}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;)V

    aput-object v11, v3, v8

    .line 1506
    sget-boolean v10, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_1be

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "saveAllState: adding back stack #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_1be
    add-int/lit8 v8, v8, 0x1

    goto :goto_181

    .line 1512
    :cond_1c1
    new-instance v5, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v5}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 1513
    .local v5, fms:Landroid/support/v4/app/FragmentManagerState;
    iput-object v1, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    .line 1514
    iput-object v2, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    .line 1515
    iput-object v3, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    goto/16 :goto_17
.end method

.method saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "f"

    .prologue
    .line 1381
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1392
    :cond_4
    :goto_4
    return-void

    .line 1384
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_10

    .line 1385
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1387
    :cond_10
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1388
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1389
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1390
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_4
.end method

.method public setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
    .registers 7
    .parameter "index"
    .parameter "bse"

    .prologue
    .line 1209
    monitor-enter p0

    .line 1210
    :try_start_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_c

    .line 1211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1213
    :cond_c
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1214
    .local v0, N:I
    if-ge p1, v0, :cond_41

    .line 1215
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_3a

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_3a
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1230
    :goto_3f
    monitor-exit p0

    .line 1231
    return-void

    .line 1218
    :cond_41
    :goto_41
    if-ge v0, p1, :cond_7c

    .line 1219
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1220
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_54

    .line 1221
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1223
    :cond_54
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_70

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_70
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 1227
    :cond_7c
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_a2

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_a2
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 1230
    .end local v0           #N:I
    :catchall_a8
    move-exception v1

    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_a8

    throw v1
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;II)V
    .registers 10
    .parameter "fragment"
    .parameter "transition"
    .parameter "transitionStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1088
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1e

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_1e
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v1, :cond_45

    .line 1090
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1091
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_38

    .line 1092
    invoke-virtual {p0, p1, p2, v5, p3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1094
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_33

    .line 1095
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1097
    :cond_33
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1099
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_38
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_42

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_42

    .line 1100
    iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1102
    :cond_42
    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1104
    :cond_45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 511
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 515
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
