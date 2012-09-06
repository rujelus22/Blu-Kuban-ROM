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
    const/4 v4, 0x0

    const/high16 v3, 0x4020

    const/high16 v2, 0x3fc0

    .line 378
    sput-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    .line 381
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2d

    const/4 v0, 0x1

    :goto_e
    sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    .line 670
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 671
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 672
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 673
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void

    :cond_2d
    move v0, v4

    .line 381
    goto :goto_e
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V

    .line 403
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 412
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 413
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 415
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method private checkStateLoss()V
    .registers 4

    .prologue
    .line 1253
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    if-eqz v0, :cond_c

    .line 1254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1257
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 1258
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

    .line 1261
    :cond_2b
    return-void
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .registers 6
    .parameter "context"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 693
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 694
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 695
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 696
    return-object v0
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .registers 15
    .parameter "context"
    .parameter "startScale"
    .parameter "endScale"
    .parameter "startAlpha"
    .parameter "endAlpha"

    .prologue
    .line 679
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 p0, 0x0

    invoke-direct {v9, p0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 680
    .end local p0
    .local v9, set:Landroid/view/animation/AnimationSet;
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

    .line 682
    .local v0, scale:Landroid/view/animation/ScaleAnimation;
    sget-object p0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 683
    const-wide/16 p0, 0xdc

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 684
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 685
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 686
    .local p0, alpha:Landroid/view/animation/AlphaAnimation;
    sget-object p1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 687
    const-wide/16 p1, 0xdc

    invoke-virtual {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 688
    invoke-virtual {v9, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 689
    return-object v9
.end method

.method public static reverseTransit(I)I
    .registers 2
    .parameter "transit"

    .prologue
    .line 1890
    const/4 v0, 0x0

    .line 1891
    .local v0, rev:I
    sparse-switch p0, :sswitch_data_e

    .line 1902
    :goto_4
    return v0

    .line 1893
    :sswitch_5
    const/16 v0, 0x2002

    .line 1894
    goto :goto_4

    .line 1896
    :sswitch_8
    const/16 v0, 0x1001

    .line 1897
    goto :goto_4

    .line 1899
    :sswitch_b
    const/16 v0, 0x1003

    goto :goto_4

    .line 1891
    :sswitch_data_e
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_b
        0x2002 -> :sswitch_8
    .end sparse-switch
.end method

.method public static transitToStyleIndex(IZ)I
    .registers 4
    .parameter "transit"
    .parameter "enter"

    .prologue
    .line 1914
    const/4 v0, -0x1

    .line 1915
    .local v0, animAttr:I
    sparse-switch p0, :sswitch_data_1e

    .line 1926
    :goto_4
    return v0

    .line 1917
    :sswitch_5
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    move v0, v1

    .line 1918
    :goto_9
    goto :goto_4

    .line 1917
    :cond_a
    const/4 v1, 0x2

    move v0, v1

    goto :goto_9

    .line 1920
    :sswitch_d
    if-eqz p1, :cond_12

    const/4 v1, 0x3

    move v0, v1

    .line 1921
    :goto_11
    goto :goto_4

    .line 1920
    :cond_12
    const/4 v1, 0x4

    move v0, v1

    goto :goto_11

    .line 1923
    :sswitch_15
    if-eqz p1, :cond_1a

    const/4 v1, 0x5

    move v0, v1

    :goto_19
    goto :goto_4

    :cond_1a
    const/4 v1, 0x6

    move v0, v1

    goto :goto_19

    .line 1915
    nop

    :sswitch_data_1e
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_15
        0x2002 -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
    .registers 3
    .parameter

    .prologue
    .line 1388
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1391
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    .line 1393
    return-void
.end method

.method public addFragment(Landroid/support/v4/app/Fragment;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1098
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1099
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1101
    :cond_c
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1102
    :cond_22
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V

    .line 1103
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_42

    .line 1104
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1105
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1106
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1107
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_3d

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_3d

    .line 1108
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1110
    :cond_3d
    if-eqz p2, :cond_42

    .line 1111
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V

    .line 1114
    :cond_42
    return-void
.end method

.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3
    .parameter

    .prologue
    .line 498
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 501
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    return-void
.end method

.method public allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
    .registers 5
    .parameter

    .prologue
    .line 1283
    monitor-enter p0

    .line 1284
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_45

    .line 1285
    :cond_d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    .line 1286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1288
    :cond_18
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1289
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1290
    :cond_3e
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    monitor-exit p0

    .line 1297
    :goto_44
    return v0

    .line 1294
    :cond_45
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1295
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_79

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1296
    :cond_79
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1297
    monitor-exit p0

    goto :goto_44

    .line 1299
    :catchall_80
    move-exception v0

    monitor-exit p0
    :try_end_82
    .catchall {:try_start_1 .. :try_end_82} :catchall_80

    throw v0
.end method

.method public attachActivity(Landroid/support/v4/app/FragmentActivity;)V
    .registers 3
    .parameter "activity"

    .prologue
    .line 1731
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1732
    :cond_a
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 1733
    return-void
.end method

.method public attachFragment(Landroid/support/v4/app/Fragment;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1186
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1187
    :cond_17
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_38

    .line 1188
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1189
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_38

    .line 1190
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1191
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1192
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_33

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_33

    .line 1193
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1195
    :cond_33
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;III)V

    .line 1198
    :cond_38
    return-void
.end method

.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
    .registers 2

    .prologue
    .line 424
    new-instance v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method public detachFragment(Landroid/support/v4/app/Fragment;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1170
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1171
    :cond_17
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_36

    .line 1172
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1173
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_36

    .line 1175
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1176
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_30

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_30

    .line 1177
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1179
    :cond_30
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1180
    invoke-virtual {p0, p1, v2, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;III)V

    .line 1183
    :cond_36
    return-void
.end method

.method public dispatchActivityCreated()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1745
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1746
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1747
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 1784
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    .line 1785
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1786
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1787
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1a

    .line 1788
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1785
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1792
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_1d
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 1865
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_26

    .line 1866
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 1867
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1868
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_23

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_23

    .line 1869
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1870
    const/4 v2, 0x1

    .line 1875
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :goto_22
    return v2

    .line 1866
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    .restart local v1       #i:I
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1875
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

    .line 1740
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1741
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1742
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1806
    .line 1807
    const/4 v0, 0x0

    .line 1808
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v1, :cond_65

    move v1, v5

    move-object v2, v0

    move v3, v5

    .line 1809
    :goto_9
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3c

    .line 1810
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1811
    if-eqz v0, :cond_35

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v4, :cond_35

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_35

    iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_35

    .line 1812
    const/4 v3, 0x1

    .line 1813
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1814
    if-nez v2, :cond_32

    .line 1815
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1817
    :cond_32
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    move-object v0, v2

    move v2, v3

    .line 1809
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move-object v2, v0

    goto :goto_9

    :cond_3c
    move-object v1, v2

    move v2, v3

    .line 1822
    :goto_3e
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v0, :cond_62

    move v3, v5

    .line 1823
    :goto_43
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_62

    .line 1824
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1825
    if-eqz v1, :cond_5b

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 1826
    :cond_5b
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    .line 1823
    :cond_5e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_43

    .line 1831
    :cond_62
    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    .line 1833
    return v2

    :cond_65
    move-object v1, v0

    move v2, v5

    goto :goto_3e
.end method

.method public dispatchDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1777
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    .line 1778
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1779
    invoke-virtual {p0, v1, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1780
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 1781
    return-void
.end method

.method public dispatchLowMemory()V
    .registers 4

    .prologue
    .line 1795
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_1d

    .line 1796
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1797
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1798
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1a

    .line 1799
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 1796
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1803
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_1d
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    .line 1851
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_2e

    .line 1852
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 1853
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1854
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_2b

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_2b

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_2b

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_2b

    .line 1855
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1856
    const/4 v2, 0x1

    .line 1861
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :goto_2a
    return v2

    .line 1852
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    .restart local v1       #i:I
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1861
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_2e
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 5
    .parameter "menu"

    .prologue
    .line 1879
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_29

    .line 1880
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 1881
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1882
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_26

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_26

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_26

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_26

    .line 1883
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1880
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1887
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_29
    return-void
.end method

.method public dispatchPause()V
    .registers 3

    .prologue
    .line 1760
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1761
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    .line 1837
    const/4 v2, 0x0

    .line 1838
    .local v2, show:Z
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v3, :cond_2b

    .line 1839
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2b

    .line 1840
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1841
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_28

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_28

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_28

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_28

    .line 1842
    const/4 v2, 0x1

    .line 1843
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1839
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1847
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_2b
    return v2
.end method

.method public dispatchReallyStop()V
    .registers 3

    .prologue
    .line 1773
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1774
    return-void
.end method

.method public dispatchResume()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1755
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1756
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1757
    return-void
.end method

.method public dispatchStart()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1750
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1751
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1752
    return-void
.end method

.method public dispatchStop()V
    .registers 3

    .prologue
    .line 1767
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1769
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1770
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 13
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 564
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 567
    .local v4, innerPrefix:Ljava/lang/String;
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v6, :cond_5d

    .line 568
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 569
    .local v0, N:I
    if-lez v0, :cond_5d

    .line 570
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Active Fragments in "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 571
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 572
    const-string v6, ":"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    const/4 v3, 0x0

    .local v3, i:I
    :goto_38
    if-ge v3, v0, :cond_5d

    .line 574
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 575
    .local v2, f:Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 576
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 577
    if-eqz v2, :cond_5a

    .line 578
    invoke-virtual {v2, v4, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 573
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 584
    .end local v0           #N:I
    .end local v2           #f:Landroid/support/v4/app/Fragment;
    .end local v3           #i:I
    :cond_5d
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v6, :cond_96

    .line 585
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 586
    .restart local v0       #N:I
    if-lez v0, :cond_96

    .line 587
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Added Fragments:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_72
    if-ge v3, v0, :cond_96

    .line 589
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 590
    .restart local v2       #f:Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 591
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    add-int/lit8 v3, v3, 0x1

    goto :goto_72

    .line 596
    .end local v0           #N:I
    .end local v2           #f:Landroid/support/v4/app/Fragment;
    .end local v3           #i:I
    :cond_96
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v6, :cond_cf

    .line 597
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 598
    .restart local v0       #N:I
    if-lez v0, :cond_cf

    .line 599
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Fragments Created Menus:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_ab
    if-ge v3, v0, :cond_cf

    .line 601
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 602
    .restart local v2       #f:Landroid/support/v4/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 603
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    add-int/lit8 v3, v3, 0x1

    goto :goto_ab

    .line 608
    .end local v0           #N:I
    .end local v2           #f:Landroid/support/v4/app/Fragment;
    .end local v3           #i:I
    :cond_cf
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v6, :cond_10b

    .line 609
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 610
    .restart local v0       #N:I
    if-lez v0, :cond_10b

    .line 611
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_e4
    if-ge v3, v0, :cond_10b

    .line 613
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 614
    .local v1, bs:Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 615
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v1, v4, p2, p3, p4}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 612
    add-int/lit8 v3, v3, 0x1

    goto :goto_e4

    .line 621
    .end local v0           #N:I
    .end local v1           #bs:Landroid/support/v4/app/BackStackRecord;
    .end local v3           #i:I
    :cond_10b
    monitor-enter p0

    .line 622
    :try_start_10c
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_141

    .line 623
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 624
    .restart local v0       #N:I
    if-lez v0, :cond_141

    .line 625
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Back Stack Indices:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 626
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_121
    if-ge v3, v0, :cond_141

    .line 627
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/BackStackRecord;

    .line 628
    .restart local v1       #bs:Landroid/support/v4/app/BackStackRecord;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 629
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 626
    add-int/lit8 v3, v3, 0x1

    goto :goto_121

    .line 634
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

    .line 635
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAvailBackStackIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 636
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    :cond_162
    monitor-exit p0
    :try_end_163
    .catchall {:try_start_10c .. :try_end_163} :catchall_198

    .line 640
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_19b

    .line 641
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 642
    .restart local v0       #N:I
    if-lez v0, :cond_19b

    .line 643
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "Pending Actions:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_178
    if-ge v3, v0, :cond_19b

    .line 645
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 646
    .local v5, r:Ljava/lang/Runnable;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  #"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 647
    const-string v6, ": "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 644
    add-int/lit8 v3, v3, 0x1

    goto :goto_178

    .line 638
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

    .line 652
    :cond_19b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "FragmentManager misc state:"

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mCurState="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 654
    const-string v6, " mStateSaved="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 655
    const-string v6, " mDestroyed="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 656
    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v6, :cond_1d5

    .line 657
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 658
    iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 660
    :cond_1d5
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz v6, :cond_1e6

    .line 661
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mNoTransactionsBecause="

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 662
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 664
    :cond_1e6
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v6, :cond_207

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_207

    .line 665
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "  mAvailIndices: "

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 666
    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    :cond_207
    return-void
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1264
    if-nez p2, :cond_5

    .line 1265
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1267
    :cond_5
    monitor-enter p0

    .line 1268
    :try_start_6
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_15

    .line 1269
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1279
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v0

    .line 1271
    :cond_15
    :try_start_15
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez v0, :cond_20

    .line 1272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1274
    :cond_20
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1275
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 1276
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1277
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1279
    :cond_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_15 .. :try_end_41} :catchall_12

    .line 1280
    return-void
.end method

.method public execPendingActions()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1342
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_e

    .line 1343
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1346
    :cond_e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_24

    .line 1347
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    move v0, v4

    .line 1355
    :goto_25
    monitor-enter p0

    .line 1356
    :try_start_26
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_34

    .line 1357
    :cond_32
    monitor-exit p0

    return v0

    .line 1360
    :cond_34
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1361
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    if-eqz v1, :cond_43

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v1, v0, :cond_47

    .line 1362
    :cond_43
    new-array v1, v0, [Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    .line 1364
    :cond_47
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1365
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1366
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1367
    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_26 .. :try_end_5d} :catchall_71

    .line 1369
    iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    move v1, v4

    .line 1370
    :goto_60
    if-ge v1, v0, :cond_74

    .line 1371
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1372
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 1370
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 1367
    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v0

    .line 1374
    :cond_74
    iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    move v0, v5

    .line 1376
    goto :goto_25
.end method

.method public executePendingTransactions()Z
    .registers 2

    .prologue
    .line 429
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
    .registers 6
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    .line 1201
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_3f

    .line 1203
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_d
    if-ltz v1, :cond_22

    .line 1204
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1205
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_1f

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_1f

    move-object v2, v0

    .line 1217
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :goto_1e
    return-object v2

    .line 1203
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    .restart local v1       #i:I
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 1210
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :cond_22
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v1, v2, v3

    :goto_2a
    if-ltz v1, :cond_3f

    .line 1211
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1212
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_3c

    iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_3c

    move-object v2, v0

    .line 1213
    goto :goto_1e

    .line 1210
    :cond_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_2a

    .line 1217
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_3f
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 6
    .parameter "tag"

    .prologue
    const/4 v3, 0x1

    .line 1221
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_49

    if-eqz p1, :cond_49

    .line 1223
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_f
    if-ltz v1, :cond_28

    .line 1224
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1225
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_25

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    move-object v2, v0

    .line 1237
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :goto_24
    return-object v2

    .line 1223
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    .restart local v1       #i:I
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 1230
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :cond_28
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v1, v2, v3

    :goto_30
    if-ltz v1, :cond_49

    .line 1231
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1232
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_46

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    move-object v2, v0

    .line 1233
    goto :goto_24

    .line 1230
    :cond_46
    add-int/lit8 v1, v1, -0x1

    goto :goto_30

    .line 1237
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_49
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 6
    .parameter "who"

    .prologue
    .line 1241
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_28

    if-eqz p1, :cond_28

    .line 1242
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_f
    if-ltz v1, :cond_28

    .line 1243
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1244
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_25

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    move-object v2, v0

    .line 1249
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :goto_24
    return-object v2

    .line 1242
    .restart local v0       #f:Landroid/support/v4/app/Fragment;
    .restart local v1       #i:I
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 1249
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    .end local v1           #i:I
    :cond_28
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public freeBackStackIndex(I)V
    .registers 4
    .parameter

    .prologue
    .line 1328
    monitor-enter p0

    .line 1329
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1330
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 1331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1333
    :cond_12
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeing back stack index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1334
    :cond_28
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1335
    monitor-exit p0

    .line 1336
    return-void

    .line 1335
    :catchall_33
    move-exception v0

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_33

    throw v0
.end method

.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
    .registers 3
    .parameter "index"

    .prologue
    .line 493
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/support/v4/app/FragmentManager$BackStackEntry;

    return-object p0
.end method

.method public getBackStackEntryCount()I
    .registers 2

    .prologue
    .line 488
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

    .line 522
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 523
    .local v1, index:I
    if-ne v1, v2, :cond_9

    .line 524
    const/4 v2, 0x0

    .line 535
    :goto_8
    return-object v2

    .line 526
    :cond_9
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_34

    .line 527
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

    .line 530
    :cond_34
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 531
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-nez v0, :cond_61

    .line 532
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

    :cond_61
    move-object v2, v0

    .line 535
    goto :goto_8
.end method

.method public hideFragment(Landroid/support/v4/app/Fragment;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1132
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1133
    :cond_17
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_44

    .line 1134
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1135
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_33

    .line 1136
    invoke-virtual {p0, p1, p2, v2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1138
    if-eqz v0, :cond_2c

    .line 1139
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1141
    :cond_2c
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1143
    :cond_33
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_41

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_41

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_41

    .line 1144
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1146
    :cond_41
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1148
    :cond_44
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

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    .line 701
    iget v3, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {p1, p2, p3, v3}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    .line 703
    .local v1, animObj:Landroid/view/animation/Animation;
    if-eqz v1, :cond_11

    move-object v3, v1

    .line 755
    :goto_10
    return-object v3

    .line 707
    :cond_11
    iget v3, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    if-eqz v3, :cond_21

    .line 708
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v4, p1, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 709
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz v0, :cond_21

    move-object v3, v0

    .line 710
    goto :goto_10

    .line 714
    .end local v0           #anim:Landroid/view/animation/Animation;
    :cond_21
    if-nez p2, :cond_25

    move-object v3, v7

    .line 715
    goto :goto_10

    .line 718
    :cond_25
    invoke-static {p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result v2

    .line 719
    .local v2, styleIndex:I
    if-gez v2, :cond_2d

    move-object v3, v7

    .line 720
    goto :goto_10

    .line 723
    :cond_2d
    packed-switch v2, :pswitch_data_7c

    .line 738
    if-nez p4, :cond_46

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 739
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget p4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 741
    :cond_46
    if-nez p4, :cond_79

    move-object v3, v7

    .line 742
    goto :goto_10

    .line 725
    :pswitch_4a
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const/high16 v4, 0x3f90

    invoke-static {v3, v4, v5, v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v3

    goto :goto_10

    .line 727
    :pswitch_53
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v5, v8, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v3

    goto :goto_10

    .line 729
    :pswitch_5a
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v8, v5, v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v3

    goto :goto_10

    .line 731
    :pswitch_61
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const v4, 0x3f89999a

    invoke-static {v3, v5, v4, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v3

    goto :goto_10

    .line 733
    :pswitch_6b
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v6, v5}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v3

    goto :goto_10

    .line 735
    :pswitch_72
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v3, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v3

    goto :goto_10

    :cond_79
    move-object v3, v7

    .line 755
    goto :goto_10

    .line 723
    nop

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_53
        :pswitch_5a
        :pswitch_61
        :pswitch_6b
        :pswitch_72
    .end packed-switch
.end method

.method makeActive(Landroid/support/v4/app/Fragment;)V
    .registers 5
    .parameter

    .prologue
    .line 1065
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_5

    .line 1080
    :goto_4
    return-void

    .line 1069
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2b

    .line 1070
    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    .line 1071
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1073
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setIndex(I)V

    .line 1074
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1077
    :cond_2b
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setIndex(I)V

    .line 1078
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method makeInactive(Landroid/support/v4/app/Fragment;)V
    .registers 5
    .parameter

    .prologue
    .line 1083
    iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_5

    .line 1095
    :goto_4
    return-void

    .line 1087
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeing fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1088
    :cond_1d
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1089
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_30

    .line 1090
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1092
    :cond_30
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->invalidateSupportFragmentIndex(I)V

    .line 1094
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->initState()V

    goto :goto_4
.end method

.method moveToState(IIIZ)V
    .registers 9
    .parameter "newState"
    .parameter "transit"
    .parameter "transitStyle"
    .parameter "always"

    .prologue
    .line 1040
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-nez v2, :cond_e

    if-eqz p1, :cond_e

    .line 1041
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No activity"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1044
    :cond_e
    if-nez p4, :cond_15

    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-ne v2, p1, :cond_15

    .line 1062
    :cond_14
    :goto_14
    return-void

    .line 1048
    :cond_15
    iput p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 1049
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v2, :cond_14

    .line 1050
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 1051
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1052
    .local v0, f:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_31

    .line 1053
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;III)V

    .line 1050
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 1057
    .end local v0           #f:Landroid/support/v4/app/Fragment;
    :cond_34
    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz v2, :cond_14

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    if-eqz v2, :cond_14

    iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_14

    .line 1058
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 1059
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

    .line 1036
    invoke-virtual {p0, p1, v0, v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 1037
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "f"

    .prologue
    const/4 v1, 0x0

    .line 1032
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;III)V

    .line 1033
    return-void
.end method

.method moveToState(Landroid/support/v4/app/Fragment;III)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 760
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_43e

    if-le p2, v6, :cond_43e

    move v0, v6

    .line 763
    :goto_c
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_43b

    iget v1, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le v0, v1, :cond_43b

    .line 765
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    move v1, v0

    .line 768
    :goto_17
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v1, :cond_270

    .line 772
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_24

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_24

    .line 1029
    :goto_23
    return-void

    .line 775
    :cond_24
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_2f

    .line 780
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 781
    iget v0, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    invoke-virtual {p0, p1, v0, v4, v4}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;III)V

    .line 783
    :cond_2f
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_442

    :cond_34
    :goto_34
    move v0, v1

    .line 1028
    :goto_35
    iput v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    goto :goto_23

    .line 785
    :pswitch_38
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_4e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto CREATED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 786
    :cond_4e
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_74

    .line 787
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:view_state"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 789
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_state"

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 791
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_74

    .line 792
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:target_req_state"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 796
    :cond_74
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 797
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 798
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 799
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 800
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_a8

    .line 801
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_a8
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    .line 806
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_db

    .line 807
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 808
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 809
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_db

    .line 810
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 814
    :cond_db
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 815
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_111

    .line 819
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v5, v2}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 821
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_16a

    .line 822
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 823
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 824
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_10a

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 825
    :cond_10a
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 831
    :cond_111
    :goto_111
    :pswitch_111
    if-le v1, v6, :cond_1e8

    .line 832
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_129

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 833
    :cond_129
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_1b2

    .line 835
    iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_16d

    .line 836
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget v2, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 837
    if-nez v0, :cond_16e

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mRestored:Z

    if-nez v2, :cond_16e

    .line 838
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No view found for id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :cond_16a
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_111

    :cond_16d
    move-object v0, v5

    .line 843
    :cond_16e
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 844
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v0, v3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 846
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_1dc

    .line 847
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 848
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 849
    if-eqz v0, :cond_1a0

    .line 850
    invoke-virtual {p0, p1, p3, v6, p4}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v2

    .line 852
    if-eqz v2, :cond_19b

    .line 853
    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 855
    :cond_19b
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 857
    :cond_1a0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1ab

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 858
    :cond_1ab
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 864
    :cond_1b2
    :goto_1b2
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 865
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 866
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1df

    .line 867
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_1dc
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_1b2

    .line 870
    :cond_1df
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1e6

    .line 871
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->restoreViewState()V

    .line 873
    :cond_1e6
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 877
    :cond_1e8
    :pswitch_1e8
    if-le v1, v7, :cond_228

    .line 878
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_200

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto STARTED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 879
    :cond_200
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 880
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStart()V

    .line 881
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_228

    .line 882
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_228
    :pswitch_228
    if-le v1, v8, :cond_34

    .line 888
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_240

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveto RESUMED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 889
    :cond_240
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 890
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 891
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 892
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_26a

    .line 893
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 896
    :cond_26a
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 897
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_34

    .line 900
    :cond_270
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-le v0, v1, :cond_279

    .line 901
    iget v0, p1, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v0, :pswitch_data_450

    :cond_279
    :goto_279
    move v0, v1

    goto/16 :goto_35

    .line 903
    :pswitch_27c
    const/4 v0, 0x5

    if-ge v1, v0, :cond_2bf

    .line 904
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_295

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom RESUMED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 905
    :cond_295
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 906
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 907
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_2bd

    .line 908
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_2bd
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 914
    :cond_2bf
    :pswitch_2bf
    if-ge v1, v8, :cond_2ff

    .line 915
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2d7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STARTED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 916
    :cond_2d7
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 917
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performStop()V

    .line 918
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_2ff

    .line 919
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 924
    :cond_2ff
    :pswitch_2ff
    if-ge v1, v7, :cond_31a

    .line 925
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_317

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STOPPED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 926
    :cond_317
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performReallyStop()V

    .line 929
    :cond_31a
    :pswitch_31a
    const/4 v0, 0x2

    if-ge v1, v0, :cond_3a4

    .line 930
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_333

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 931
    :cond_333
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_346

    .line 934
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_346

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_346

    .line 935
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    .line 938
    :cond_346
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 939
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V

    .line 940
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_36e

    .line 941
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 944
    :cond_36e
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_39e

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_39e

    .line 946
    iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lez v0, :cond_438

    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_438

    .line 947
    invoke-virtual {p0, p1, p3, v4, p4}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 950
    :goto_382
    if-eqz v0, :cond_397

    .line 952
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 953
    iput v1, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 954
    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl$5;

    invoke-direct {v2, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl$5;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 970
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 972
    :cond_397
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 974
    :cond_39e
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 975
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 976
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 979
    :cond_3a4
    :pswitch_3a4
    if-ge v1, v6, :cond_279

    .line 980
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_3b5

    .line 981
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_3b5

    .line 988
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 989
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 990
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 993
    :cond_3b5
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_3be

    .line 998
    iput v1, p1, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    move v0, v6

    .line 999
    goto/16 :goto_35

    .line 1001
    :cond_3be
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3d4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom CREATED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1002
    :cond_3d4
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_400

    .line 1003
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1004
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 1005
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_400

    .line 1006
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1011
    :cond_400
    iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1012
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 1013
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v0, :cond_428

    .line 1014
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_428
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_432

    .line 1018
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeInactive(Landroid/support/v4/app/Fragment;)V

    move v0, v1

    goto/16 :goto_35

    .line 1020
    :cond_432
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 1021
    iput-object v5, p1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    goto/16 :goto_279

    :cond_438
    move-object v0, v5

    goto/16 :goto_382

    :cond_43b
    move v1, v0

    goto/16 :goto_17

    :cond_43e
    move v0, p2

    goto/16 :goto_c

    .line 783
    nop

    :pswitch_data_442
    .packed-switch 0x0
        :pswitch_38
        :pswitch_111
        :pswitch_1e8
        :pswitch_1e8
        :pswitch_228
    .end packed-switch

    .line 901
    :pswitch_data_450
    .packed-switch 0x1
        :pswitch_3a4
        :pswitch_31a
        :pswitch_2ff
        :pswitch_2bf
        :pswitch_27c
    .end packed-switch
.end method

.method public noteStateNotSaved()V
    .registers 2

    .prologue
    .line 1736
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1737
    return-void
.end method

.method public popBackStack()V
    .registers 3

    .prologue
    .line 434
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 439
    return-void
.end method

.method public popBackStack(II)V
    .registers 6
    .parameter "id"
    .parameter "flags"

    .prologue
    .line 466
    if-gez p1, :cond_1b

    .line 467
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

    .line 469
    :cond_1b
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$4;-><init>(Landroid/support/v4/app/FragmentManagerImpl;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 474
    return-void
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .registers 5
    .parameter "name"
    .parameter "flags"

    .prologue
    .line 450
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$3;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 455
    return-void
.end method

.method public popBackStackImmediate()Z
    .registers 5

    .prologue
    .line 443
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 444
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 445
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
    .parameter
    .parameter

    .prologue
    .line 478
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 479
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 480
    if-gez p1, :cond_21

    .line 481
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

    .line 483
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
    .parameter
    .parameter

    .prologue
    .line 459
    invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 460
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 461
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1396
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_8

    move v0, v6

    .line 1455
    :goto_7
    return v0

    .line 1399
    :cond_8
    if-nez p2, :cond_2b

    if-gez p3, :cond_2b

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_2b

    .line 1400
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    .line 1401
    if-gez v0, :cond_1b

    move v0, v6

    .line 1402
    goto :goto_7

    .line 1404
    :cond_1b
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 1405
    invoke-virtual {v0, v5}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(Z)V

    .line 1406
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    :goto_29
    move v0, v5

    .line 1455
    goto :goto_7

    .line 1408
    :cond_2b
    const/4 v0, -0x1

    .line 1409
    if-nez p2, :cond_30

    if-ltz p3, :cond_84

    .line 1412
    :cond_30
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v5

    move v1, v0

    .line 1413
    :goto_38
    if-ltz v1, :cond_4e

    .line 1414
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 1415
    if-eqz p2, :cond_52

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1423
    :cond_4e
    if-gez v1, :cond_5c

    move v0, v6

    .line 1424
    goto :goto_7

    .line 1418
    :cond_52
    if-ltz p3, :cond_58

    iget v0, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-eq p3, v0, :cond_4e

    .line 1421
    :cond_58
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 1422
    goto :goto_38

    .line 1426
    :cond_5c
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_83

    .line 1427
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 1429
    :goto_63
    if-ltz v1, :cond_83

    .line 1430
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    .line 1431
    if-eqz p2, :cond_79

    invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7f

    :cond_79
    if-ltz p3, :cond_83

    iget v0, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ne p3, v0, :cond_83

    .line 1433
    :cond_7f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 1434
    goto :goto_63

    :cond_83
    move v0, v1

    .line 1440
    :cond_84
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v5

    if-ne v0, v1, :cond_90

    move v0, v6

    .line 1441
    goto/16 :goto_7

    .line 1443
    :cond_90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1445
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    :goto_9c
    if-le v2, v0, :cond_aa

    .line 1446
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1445
    add-int/lit8 v2, v2, -0x1

    goto :goto_9c

    .line 1448
    :cond_aa
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v2, v0, v5

    move v3, v6

    .line 1449
    :goto_b1
    if-gt v3, v2, :cond_df

    .line 1450
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_cd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Popping back stack state: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1451
    :cond_cd
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    if-ne v3, v2, :cond_dd

    move v4, v5

    :goto_d6
    invoke-virtual {v0, v4}, Landroid/support/v4/app/BackStackRecord;->popFromBackStack(Z)V

    .line 1449
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b1

    :cond_dd
    move v4, v6

    .line 1451
    goto :goto_d6

    .line 1453
    :cond_df
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    goto/16 :goto_29
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .registers 7
    .parameter "bundle"
    .parameter "key"
    .parameter "fragment"

    .prologue
    .line 513
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_23

    .line 514
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

    .line 517
    :cond_23
    iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 518
    return-void
.end method

.method public removeFragment(Landroid/support/v4/app/Fragment;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1117
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1118
    :cond_24
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_4b

    move v0, v2

    .line 1119
    :goto_2b
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_31

    if-eqz v0, :cond_4a

    .line 1120
    :cond_31
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1121
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_40

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_40

    .line 1122
    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1124
    :cond_40
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1125
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1126
    if-eqz v0, :cond_4d

    move v0, v3

    :goto_47
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;III)V

    .line 1129
    :cond_4a
    return-void

    :cond_4b
    move v0, v3

    .line 1118
    goto :goto_2b

    :cond_4d
    move v0, v2

    .line 1126
    goto :goto_47
.end method

.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .registers 3
    .parameter

    .prologue
    .line 506
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 507
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 509
    :cond_9
    return-void
.end method

.method reportBackStackChanged()V
    .registers 3

    .prologue
    .line 1380
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_1b

    .line 1381
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 1382
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    .line 1381
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1385
    .end local v0           #i:I
    :cond_1b
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .registers 10
    .parameter
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
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1628
    if-nez p1, :cond_5

    .line 1728
    :cond_4
    :goto_4
    return-void

    .line 1629
    :cond_5
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 1630
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_4

    .line 1634
    if-eqz p2, :cond_5f

    move v1, v5

    .line 1635
    :goto_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5f

    .line 1636
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1637
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreAllState: re-attaching retained "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1638
    :cond_30
    iget-object v2, p1, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    iget v3, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    aget-object v2, v2, v3

    .line 1639
    iput-object v0, v2, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 1640
    iput-object v6, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1641
    iput v5, v0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 1642
    iput-boolean v5, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 1643
    iput-boolean v5, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1644
    iput-object v6, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1645
    iget-object v3, v2, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v3, :cond_5b

    .line 1646
    iget-object v3, v2, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1647
    iget-object v2, v2, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v3, "android:view_state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1635
    :cond_5b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 1655
    :cond_5f
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1656
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_72

    .line 1657
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_72
    move v0, v5

    .line 1659
    :goto_73
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    if-ge v0, v1, :cond_fa

    .line 1660
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    aget-object v1, v1, v0

    .line 1661
    if-eqz v1, :cond_ae

    .line 1662
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentState;->instantiate(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 1663
    sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_a4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: adding #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1664
    :cond_a4
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1668
    iput-object v6, v1, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 1659
    :goto_ab
    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 1670
    :cond_ae
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_ca

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreAllState: adding #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": (null)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1671
    :cond_ca
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1672
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_da

    .line 1673
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1675
    :cond_da
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_f0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreAllState: adding avail #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1676
    :cond_f0
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    .line 1681
    :cond_fa
    if-eqz p2, :cond_14e

    move v2, v5

    .line 1682
    :goto_fd
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_14e

    .line 1683
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1684
    iget v1, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    if-ltz v1, :cond_123

    .line 1685
    iget v1, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_127

    .line 1686
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v3, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 1682
    :cond_123
    :goto_123
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_fd

    .line 1688
    :cond_127
    const-string v1, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-attaching retained fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " target no longer exists: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    iput-object v6, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    goto :goto_123

    .line 1697
    :cond_14e
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    if-eqz v0, :cond_1b9

    .line 1698
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    move v1, v5

    .line 1699
    :goto_15d
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1bb

    .line 1700
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1701
    if-nez v0, :cond_18d

    .line 1702
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No instantiated fragment for index #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1705
    :cond_18d
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1706
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1b0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreAllState: making added #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1707
    :cond_1b0
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1699
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_15d

    .line 1710
    :cond_1b9
    iput-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1714
    :cond_1bb
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    if-eqz v0, :cond_214

    .line 1715
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v0, v5

    .line 1716
    :goto_1ca
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 1717
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroid/support/v4/app/BackStackState;->instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;

    move-result-object v1

    .line 1718
    sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_203

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreAllState: adding bse #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1720
    :cond_203
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1721
    iget v2, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v2, :cond_211

    .line 1722
    iget v2, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V

    .line 1716
    :cond_211
    add-int/lit8 v0, v0, 0x1

    goto :goto_1ca

    .line 1726
    :cond_214
    iput-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

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
    .line 1459
    const/4 v0, 0x0

    .line 1460
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v1, :cond_3c

    .line 1461
    const/4 v1, 0x0

    move-object v2, v0

    :goto_7
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3b

    .line 1462
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1463
    if-eqz v0, :cond_34

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v3, :cond_34

    .line 1464
    if-nez v2, :cond_24

    .line 1465
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1467
    :cond_24
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1468
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1469
    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v3, :cond_39

    iget-object v3, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    :goto_32
    iput v3, v0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    :cond_34
    move-object v0, v2

    .line 1461
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_7

    .line 1469
    :cond_39
    const/4 v3, -0x1

    goto :goto_32

    :cond_3b
    move-object v0, v2

    .line 1473
    :cond_3c
    return-object v0
.end method

.method saveAllState()Landroid/os/Parcelable;
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1521
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1523
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    if-eqz v0, :cond_c

    .line 1533
    iput-boolean v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1536
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1a

    :cond_18
    move-object v0, v9

    .line 1622
    :goto_19
    return-object v0

    .line 1541
    :cond_1a
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1542
    new-array v2, v1, [Landroid/support/v4/app/FragmentState;

    move v3, v8

    move v4, v8

    .line 1544
    :goto_24
    if-ge v3, v1, :cond_da

    .line 1545
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1546
    if-eqz v0, :cond_184

    .line 1549
    new-instance v4, Landroid/support/v4/app/FragmentState;

    invoke-direct {v4, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1550
    aput-object v4, v2, v3

    .line 1552
    iget v5, v0, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v5, :cond_d5

    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v5, :cond_d5

    .line 1553
    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1555
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_ad

    .line 1556
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v5, :cond_8c

    .line 1557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure saving state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has target not in fragment manager: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1559
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    const-string v1, "  "

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Landroid/support/v4/util/LogWriter;

    const-string v4, "FragmentManager"

    invoke-direct {v3, v4}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-array v3, v8, [Ljava/lang/String;

    invoke-virtual {p0, v1, v9, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1561
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1563
    :cond_8c
    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v5, :cond_97

    .line 1564
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, v4, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1566
    :cond_97
    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v6, "android:target_state"

    iget-object v7, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1568
    iget v5, v0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v5, :cond_ad

    .line 1569
    iget-object v5, v4, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v6, "android:target_req_state"

    iget v7, v0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1579
    :cond_ad
    :goto_ad
    sget-boolean v5, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_cf

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved state of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_cf
    move v0, v10

    .line 1544
    :goto_d0
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto/16 :goto_24

    .line 1576
    :cond_d5
    iget-object v5, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v5, v4, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_ad

    .line 1584
    :cond_da
    if-nez v4, :cond_df

    move-object v0, v9

    .line 1585
    goto/16 :goto_19

    .line 1593
    :cond_df
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_182

    .line 1594
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1595
    if-lez v1, :cond_182

    .line 1596
    new-array v3, v1, [I

    move v4, v8

    .line 1597
    :goto_ee
    if-ge v4, v1, :cond_126

    .line 1598
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v0, v3, v4

    .line 1599
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_122

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveAllState: adding fragment #"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1597
    :cond_122
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_ee

    :cond_126
    move-object v1, v3

    .line 1606
    :goto_127
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_180

    .line 1607
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1608
    if-lez v3, :cond_180

    .line 1609
    new-array v4, v3, [Landroid/support/v4/app/BackStackState;

    move v5, v8

    .line 1610
    :goto_136
    if-ge v5, v3, :cond_171

    .line 1611
    new-instance v6, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v6, p0, v0}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;)V

    aput-object v6, v4, v5

    .line 1612
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_16d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAllState: adding back stack #"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ": "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1610
    :cond_16d
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_136

    :cond_171
    move-object v0, v4

    .line 1618
    :goto_172
    new-instance v3, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v3}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 1619
    iput-object v2, v3, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;

    .line 1620
    iput-object v1, v3, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I

    .line 1621
    iput-object v0, v3, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;

    move-object v0, v3

    .line 1622
    goto/16 :goto_19

    :cond_180
    move-object v0, v9

    goto :goto_172

    :cond_182
    move-object v1, v9

    goto :goto_127

    :cond_184
    move v0, v4

    goto/16 :goto_d0
.end method

.method saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .registers 5
    .parameter "f"

    .prologue
    .line 1493
    const/4 v0, 0x0

    .line 1495
    .local v0, result:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v1, :cond_c

    .line 1496
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1498
    :cond_c
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1499
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1500
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1501
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1504
    :cond_1e
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_25

    .line 1505
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V

    .line 1507
    :cond_25
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_37

    .line 1508
    if-nez v0, :cond_30

    .line 1509
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #result:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1511
    .restart local v0       #result:Landroid/os/Bundle;
    :cond_30
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1515
    :cond_37
    return-object v0
.end method

.method public saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
    .registers 6
    .parameter "fragment"

    .prologue
    const/4 v2, 0x0

    .line 540
    iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v1, :cond_24

    .line 541
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not currently in the FragmentManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 544
    :cond_24
    iget v1, p1, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v1, :cond_36

    .line 545
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v0

    .line 546
    .local v0, result:Landroid/os/Bundle;
    if-eqz v0, :cond_34

    new-instance v1, Landroid/support/v4/app/Fragment$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    .line 548
    .end local v0           #result:Landroid/os/Bundle;
    :goto_33
    return-object v1

    .restart local v0       #result:Landroid/os/Bundle;
    :cond_34
    move-object v1, v2

    .line 546
    goto :goto_33

    .end local v0           #result:Landroid/os/Bundle;
    :cond_36
    move-object v1, v2

    .line 548
    goto :goto_33
.end method

.method saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter "f"

    .prologue
    .line 1477
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1490
    :cond_4
    :goto_4
    return-void

    .line 1480
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_27

    .line 1481
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 1485
    :goto_10
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1486
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1487
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1488
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_4

    .line 1483
    :cond_27
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_10
.end method

.method public setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1303
    monitor-enter p0

    .line 1304
    :try_start_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1307
    :cond_c
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1308
    if-ge p1, v0, :cond_3b

    .line 1309
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting back stack index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1310
    :cond_34
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1324
    :goto_39
    monitor-exit p0

    .line 1325
    return-void

    .line 1312
    :cond_3b
    :goto_3b
    if-ge v0, p1, :cond_70

    .line 1313
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_4e

    .line 1315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1317
    :cond_4e
    sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_64

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding available back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1318
    :cond_64
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 1321
    :cond_70
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_90

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding back stack index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1322
    :cond_90
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_39

    .line 1324
    :catchall_96
    move-exception v0

    monitor-exit p0
    :try_end_98
    .catchall {:try_start_1 .. :try_end_98} :catchall_96

    throw v0
.end method

.method public showFragment(Landroid/support/v4/app/Fragment;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1151
    sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1152
    :cond_18
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_43

    .line 1153
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1154
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_32

    .line 1155
    invoke-virtual {p0, p1, p2, v3, p3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1157
    if-eqz v0, :cond_2d

    .line 1158
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1160
    :cond_2d
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    :cond_32
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_40

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_40

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_40

    .line 1163
    iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1165
    :cond_40
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V

    .line 1167
    :cond_43
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 554
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 558
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
