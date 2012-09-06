.class public final Lz;
.super Lx;
.source "FragmentManager.java"


# static fields
.field static final a:Landroid/view/animation/Interpolator;

.field public static a:Z

.field static final b:Landroid/view/animation/Interpolator;

.field static final b:Z

.field static final c:Landroid/view/animation/Interpolator;

.field static final d:Landroid/view/animation/Interpolator;


# instance fields
.field a:I

.field a:Landroid/os/Bundle;

.field a:Landroid/support/v4/app/FragmentActivity;

.field a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field a:Ljava/lang/Runnable;

.field a:Ljava/lang/String;

.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field a:[Ljava/lang/Runnable;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field c:Z

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lp;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lp;",
            ">;"
        }
    .end annotation
.end field

.field g:Z

.field h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ly;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x4020

    const/high16 v3, 0x3fc0

    .line 378
    sput-boolean v0, Lz;->a:Z

    .line 381
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    sput-boolean v0, Lz;->b:Z

    .line 672
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lz;->a:Landroid/view/animation/Interpolator;

    .line 673
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lz;->b:Landroid/view/animation/Interpolator;

    .line 674
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lz;->c:Landroid/view/animation/Interpolator;

    .line 675
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lz;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-direct {p0}, Lx;-><init>()V

    .line 404
    const/4 v0, 0x0

    iput v0, p0, Lz;->a:I

    .line 414
    iput-object v1, p0, Lz;->a:Landroid/os/Bundle;

    .line 415
    iput-object v1, p0, Lz;->a:Landroid/util/SparseArray;

    .line 417
    new-instance v0, LA;

    invoke-direct {v0, p0}, LA;-><init>(Lz;)V

    iput-object v0, p0, Lz;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 1954
    const/4 v0, 0x0

    .line 1955
    sparse-switch p0, :sswitch_data_e

    .line 1966
    :goto_4
    return v0

    .line 1957
    :sswitch_5
    const/16 v0, 0x2002

    .line 1958
    goto :goto_4

    .line 1960
    :sswitch_8
    const/16 v0, 0x1001

    .line 1961
    goto :goto_4

    .line 1963
    :sswitch_b
    const/16 v0, 0x1003

    goto :goto_4

    .line 1955
    :sswitch_data_e
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_b
        0x2002 -> :sswitch_8
    .end sparse-switch
.end method

.method public static a(IZ)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1978
    const/4 v0, -0x1

    .line 1979
    sparse-switch p0, :sswitch_data_18

    .line 1990
    :goto_4
    return v0

    .line 1981
    :sswitch_5
    if-eqz p1, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x2

    goto :goto_4

    .line 1984
    :sswitch_b
    if-eqz p1, :cond_f

    const/4 v0, 0x3

    goto :goto_4

    :cond_f
    const/4 v0, 0x4

    goto :goto_4

    .line 1987
    :sswitch_11
    if-eqz p1, :cond_15

    const/4 v0, 0x5

    goto :goto_4

    :cond_15
    const/4 v0, 0x6

    goto :goto_4

    .line 1979
    nop

    :sswitch_data_18
    .sparse-switch
        0x1001 -> :sswitch_5
        0x1003 -> :sswitch_11
        0x2002 -> :sswitch_b
    .end sparse-switch
.end method

.method static a(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 695
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 696
    sget-object v1, Lz;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 697
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 698
    return-object v0
.end method

.method static a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 681
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 682
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

    .line 684
    sget-object v1, Lz;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 685
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 686
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 687
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 688
    sget-object v1, Lz;->b:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 689
    const-wide/16 v1, 0xdc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 690
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 691
    return-object v9
.end method

.method private n()V
    .registers 4

    .prologue
    .line 1298
    iget-boolean v0, p0, Lz;->e:Z

    if-eqz v0, :cond_c

    .line 1299
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1302
    :cond_c
    iget-object v0, p0, Lz;->a:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 1303
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lz;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1306
    :cond_2b
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a(Lp;)I
    .registers 6
    .parameter

    .prologue
    .line 1328
    monitor-enter p0

    .line 1329
    :try_start_1
    iget-object v0, p0, Lz;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lz;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4b

    .line 1330
    :cond_d
    iget-object v0, p0, Lz;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    .line 1331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz;->g:Ljava/util/ArrayList;

    .line 1333
    :cond_18
    iget-object v0, p0, Lz;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1334
    sget-boolean v1, Lz;->a:Z

    if-eqz v1, :cond_44

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_44
    iget-object v1, p0, Lz;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    monitor-exit p0

    .line 1342
    :goto_4a
    return v0

    .line 1339
    :cond_4b
    iget-object v0, p0, Lz;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lz;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1340
    sget-boolean v1, Lz;->a:Z

    if-eqz v1, :cond_85

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_85
    iget-object v1, p0, Lz;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1342
    monitor-exit p0

    goto :goto_4a

    .line 1344
    :catchall_8c
    move-exception v0

    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_1 .. :try_end_8e} :catchall_8c

    throw v0
.end method

.method public a()LH;
    .registers 2

    .prologue
    .line 426
    new-instance v0, Lp;

    invoke-direct {v0, p0}, Lp;-><init>(Lz;)V

    return-object v0
.end method

.method a(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1553
    .line 1555
    iget-object v0, p0, Lz;->a:Landroid/os/Bundle;

    if-nez v0, :cond_c

    .line 1556
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lz;->a:Landroid/os/Bundle;

    .line 1558
    :cond_c
    iget-object v0, p0, Lz;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 1559
    iget-object v0, p0, Lz;->a:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    .line 1560
    iget-object v0, p0, Lz;->a:Landroid/os/Bundle;

    .line 1561
    iput-object v1, p0, Lz;->a:Landroid/os/Bundle;

    .line 1564
    :goto_1d
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    if-eqz v1, :cond_24

    .line 1565
    invoke-virtual {p0, p1}, Lz;->e(Landroid/support/v4/app/Fragment;)V

    .line 1567
    :cond_24
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->a:Landroid/util/SparseArray;

    if-eqz v1, :cond_36

    .line 1568
    if-nez v0, :cond_2f

    .line 1569
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1571
    :cond_2f
    const-string v1, "android:view_state"

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1574
    :cond_36
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->s:Z

    if-nez v1, :cond_41

    .line 1576
    const-string v1, "android:user_visible_hint"

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->s:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1579
    :cond_41
    return-object v0

    :cond_42
    move-object v0, v1

    goto :goto_1d
.end method

.method public a()Landroid/os/Parcelable;
    .registers 12

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1585
    invoke-virtual {p0}, Lz;->c()Z

    .line 1587
    sget-boolean v0, Lz;->b:Z

    if-eqz v0, :cond_c

    .line 1597
    iput-boolean v1, p0, Lz;->e:Z

    .line 1600
    :cond_c
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_19

    .line 1686
    :cond_18
    :goto_18
    return-object v3

    .line 1605
    :cond_19
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1606
    new-array v7, v6, [Landroid/support/v4/app/FragmentState;

    move v5, v4

    move v2, v4

    .line 1608
    :goto_23
    if-ge v5, v6, :cond_e0

    .line 1609
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1610
    if-eqz v0, :cond_19b

    .line 1613
    new-instance v2, Landroid/support/v4/app/FragmentState;

    invoke-direct {v2, v0}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 1614
    aput-object v2, v7, v5

    .line 1616
    iget v8, v0, Landroid/support/v4/app/Fragment;->d:I

    if-lez v8, :cond_db

    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->b:Landroid/os/Bundle;

    if-nez v8, :cond_db

    .line 1617
    invoke-virtual {p0, v0}, Lz;->a(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->b:Landroid/os/Bundle;

    .line 1619
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/Fragment;

    if-eqz v8, :cond_ac

    .line 1620
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/Fragment;

    iget v8, v8, Landroid/support/v4/app/Fragment;->f:I

    if-gez v8, :cond_8b

    .line 1621
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

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1623
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    const-string v1, "  "

    new-instance v2, Ljava/io/PrintWriter;

    new-instance v5, Lao;

    const-string v6, "FragmentManager"

    invoke-direct {v5, v6}, Lao;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p0, v1, v3, v2, v4}, Lz;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1625
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1627
    :cond_8b
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->b:Landroid/os/Bundle;

    if-nez v8, :cond_96

    .line 1628
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->b:Landroid/os/Bundle;

    .line 1630
    :cond_96
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->b:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v8, v9, v10}, Lz;->a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V

    .line 1632
    iget v8, v0, Landroid/support/v4/app/Fragment;->h:I

    if-eqz v8, :cond_ac

    .line 1633
    iget-object v8, v2, Landroid/support/v4/app/FragmentState;->b:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    iget v10, v0, Landroid/support/v4/app/Fragment;->h:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1643
    :cond_ac
    :goto_ac
    sget-boolean v8, Lz;->a:Z

    if-eqz v8, :cond_d4

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved state of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ": "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentState;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    move v0, v1

    .line 1608
    :goto_d5
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v2, v0

    goto/16 :goto_23

    .line 1640
    :cond_db
    iget-object v8, v0, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    iput-object v8, v2, Landroid/support/v4/app/FragmentState;->b:Landroid/os/Bundle;

    goto :goto_ac

    .line 1648
    :cond_e0
    if-nez v2, :cond_ef

    .line 1649
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_18

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    .line 1657
    :cond_ef
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_13c

    .line 1658
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1659
    if-lez v5, :cond_13c

    .line 1660
    new-array v1, v5, [I

    move v2, v4

    .line 1661
    :goto_fe
    if-ge v2, v5, :cond_13d

    .line 1662
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->f:I

    aput v0, v1, v2

    .line 1663
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_138

    const-string v0, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveAllState: adding fragment #"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    :cond_138
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_fe

    :cond_13c
    move-object v1, v3

    .line 1670
    :cond_13d
    iget-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_18d

    .line 1671
    iget-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1672
    if-lez v5, :cond_18d

    .line 1673
    new-array v3, v5, [Landroid/support/v4/app/BackStackState;

    move v2, v4

    .line 1674
    :goto_14c
    if-ge v2, v5, :cond_18d

    .line 1675
    new-instance v4, Landroid/support/v4/app/BackStackState;

    iget-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp;

    invoke-direct {v4, p0, v0}, Landroid/support/v4/app/BackStackState;-><init>(Lz;Lp;)V

    aput-object v4, v3, v2

    .line 1676
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_189

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAllState: adding back stack #"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_189
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_14c

    .line 1682
    :cond_18d
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 1683
    iput-object v7, v0, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    .line 1684
    iput-object v1, v0, Landroid/support/v4/app/FragmentManagerState;->a:[I

    .line 1685
    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/BackStackState;

    move-object v3, v0

    .line 1686
    goto/16 :goto_18

    :cond_19b
    move v0, v2

    goto/16 :goto_d5
.end method

.method public a(I)Landroid/support/v4/app/Fragment;
    .registers 5
    .parameter

    .prologue
    .line 1246
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3f

    .line 1248
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_d
    if-ltz v1, :cond_22

    .line 1249
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1250
    if-eqz v0, :cond_1e

    iget v2, v0, Landroid/support/v4/app/Fragment;->j:I

    if-ne v2, p1, :cond_1e

    .line 1262
    :cond_1d
    :goto_1d
    return-object v0

    .line 1248
    :cond_1e
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_d

    .line 1255
    :cond_22
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2b
    if-ltz v1, :cond_3f

    .line 1256
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1257
    if-eqz v0, :cond_3b

    iget v2, v0, Landroid/support/v4/app/Fragment;->j:I

    if-eq v2, p1, :cond_1d

    .line 1255
    :cond_3b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2b

    .line 1262
    :cond_3f
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 524
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 525
    if-ne v1, v0, :cond_9

    .line 526
    const/4 v0, 0x0

    .line 537
    :cond_8
    return-object v0

    .line 528
    :cond_9
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_34

    .line 529
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragement no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 532
    :cond_34
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 533
    if-nez v0, :cond_8

    .line 534
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragement no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 5
    .parameter

    .prologue
    .line 1266
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_49

    if-eqz p1, :cond_49

    .line 1268
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_f
    if-ltz v1, :cond_28

    .line 1269
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1270
    if-eqz v0, :cond_24

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1282
    :cond_23
    :goto_23
    return-object v0

    .line 1268
    :cond_24
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_f

    .line 1275
    :cond_28
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_31
    if-ltz v1, :cond_49

    .line 1276
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1277
    if-eqz v0, :cond_45

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1275
    :cond_45
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_31

    .line 1282
    :cond_49
    const/4 v0, 0x0

    goto :goto_23
.end method

.method a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x3f79999a

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 703
    iget v0, p1, Landroid/support/v4/app/Fragment;->l:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/support/v4/app/Fragment;->a(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 705
    if-eqz v0, :cond_10

    .line 757
    :cond_f
    :goto_f
    return-object v0

    .line 709
    :cond_10
    iget v0, p1, Landroid/support/v4/app/Fragment;->l:I

    if-eqz v0, :cond_1e

    .line 710
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    iget v2, p1, Landroid/support/v4/app/Fragment;->l:I

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 711
    if-nez v0, :cond_f

    .line 716
    :cond_1e
    if-nez p2, :cond_22

    move-object v0, v1

    .line 717
    goto :goto_f

    .line 720
    :cond_22
    invoke-static {p2, p3}, Lz;->a(IZ)I

    move-result v0

    .line 721
    if-gez v0, :cond_2a

    move-object v0, v1

    .line 722
    goto :goto_f

    .line 725
    :cond_2a
    packed-switch v0, :pswitch_data_78

    .line 740
    if-nez p4, :cond_43

    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 741
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget p4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 743
    :cond_43
    if-nez p4, :cond_76

    move-object v0, v1

    .line 744
    goto :goto_f

    .line 727
    :pswitch_47
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    const/high16 v1, 0x3f90

    invoke-static {v0, v1, v3, v4, v3}, Lz;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    .line 729
    :pswitch_50
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v3, v5, v3, v4}, Lz;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    .line 731
    :pswitch_57
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v5, v3, v4, v3}, Lz;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    .line 733
    :pswitch_5e
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x3f89999a

    invoke-static {v0, v3, v1, v3, v4}, Lz;->a(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    .line 735
    :pswitch_68
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v4, v3}, Lz;->a(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    .line 737
    :pswitch_6f
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, v3, v4}, Lz;->a(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_f

    :cond_76
    move-object v0, v1

    .line 757
    goto :goto_f

    .line 725
    :pswitch_data_78
    .packed-switch 0x1
        :pswitch_47
        :pswitch_50
        :pswitch_57
        :pswitch_5e
        :pswitch_68
        :pswitch_6f
    .end packed-switch
.end method

.method public a()Ljava/util/ArrayList;
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
    .line 1519
    const/4 v1, 0x0

    .line 1520
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3a

    .line 1521
    const/4 v0, 0x0

    move v3, v0

    :goto_7
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3a

    .line 1522
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1523
    if-eqz v0, :cond_34

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->m:Z

    if-eqz v2, :cond_34

    .line 1524
    if-nez v1, :cond_24

    .line 1525
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1527
    :cond_24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1528
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->n:Z

    .line 1529
    iget-object v2, v0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_38

    iget-object v2, v0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->f:I

    :goto_32
    iput v2, v0, Landroid/support/v4/app/Fragment;->g:I

    .line 1521
    :cond_34
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7

    .line 1529
    :cond_38
    const/4 v2, -0x1

    goto :goto_32

    .line 1533
    :cond_3a
    return-object v1
.end method

.method public a()V
    .registers 3

    .prologue
    .line 436
    new-instance v0, LB;

    invoke-direct {v0, p0}, LB;-><init>(Lz;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lz;->a(Ljava/lang/Runnable;Z)V

    .line 441
    return-void
.end method

.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 1373
    monitor-enter p0

    .line 1374
    :try_start_1
    iget-object v0, p0, Lz;->g:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1375
    iget-object v0, p0, Lz;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 1376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz;->h:Ljava/util/ArrayList;

    .line 1378
    :cond_12
    sget-boolean v0, Lz;->a:Z

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

    .line 1379
    :cond_2e
    iget-object v0, p0, Lz;->h:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    monitor-exit p0

    .line 1381
    return-void

    .line 1380
    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 468
    if-gez p1, :cond_1b

    .line 469
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

    .line 471
    :cond_1b
    new-instance v0, LD;

    invoke-direct {v0, p0, p1, p2}, LD;-><init>(Lz;II)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lz;->a(Ljava/lang/Runnable;Z)V

    .line 476
    return-void
.end method

.method a(IIIZ)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1066
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    .line 1067
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1070
    :cond_f
    if-nez p4, :cond_16

    iget v0, p0, Lz;->a:I

    if-ne v0, p1, :cond_16

    .line 1096
    :cond_15
    :goto_15
    return-void

    .line 1074
    :cond_16
    iput p1, p0, Lz;->a:I

    .line 1075
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    move v1, v2

    move v3, v2

    .line 1077
    :goto_1e
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_42

    .line 1078
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1079
    if-eqz v0, :cond_3e

    .line 1080
    invoke-virtual {p0, v0, p1, p2, p3}, Lz;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1081
    iget-object v4, v0, Landroid/support/v4/app/Fragment;->a:LR;

    if-eqz v4, :cond_3e

    .line 1082
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->a:LR;

    invoke-virtual {v0}, LR;->a()Z

    move-result v0

    or-int/2addr v3, v0

    .line 1077
    :cond_3e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1e

    .line 1087
    :cond_42
    if-nez v3, :cond_47

    .line 1088
    invoke-virtual {p0}, Lz;->b()V

    .line 1091
    :cond_47
    iget-boolean v0, p0, Lz;->d:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_15

    iget v0, p0, Lz;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    .line 1092
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->a_()V

    .line 1093
    iput-boolean v2, p0, Lz;->d:Z

    goto :goto_15
.end method

.method public a(ILp;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 1348
    monitor-enter p0

    .line 1349
    :try_start_1
    iget-object v0, p0, Lz;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz;->g:Ljava/util/ArrayList;

    .line 1352
    :cond_c
    iget-object v0, p0, Lz;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1353
    if-ge p1, v0, :cond_41

    .line 1354
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_3a

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    :cond_3a
    iget-object v0, p0, Lz;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1369
    :goto_3f
    monitor-exit p0

    .line 1370
    return-void

    .line 1357
    :cond_41
    :goto_41
    if-ge v0, p1, :cond_7c

    .line 1358
    iget-object v1, p0, Lz;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    iget-object v1, p0, Lz;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_54

    .line 1360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lz;->h:Ljava/util/ArrayList;

    .line 1362
    :cond_54
    sget-boolean v1, Lz;->a:Z

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

    .line 1363
    :cond_70
    iget-object v1, p0, Lz;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 1366
    :cond_7c
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_a2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    :cond_a2
    iget-object v0, p0, Lz;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 1369
    :catchall_a8
    move-exception v0

    monitor-exit p0
    :try_end_aa
    .catchall {:try_start_1 .. :try_end_aa} :catchall_a8

    throw v0
.end method

.method a(IZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1062
    invoke-virtual {p0, p1, v0, v0, p2}, Lz;->a(IIIZ)V

    .line 1063
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter

    .prologue
    .line 1848
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 1849
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 1850
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1851
    if-eqz v0, :cond_1b

    .line 1852
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1849
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1856
    :cond_1f
    return-void
.end method

.method public a(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    iget v0, p3, Landroid/support/v4/app/Fragment;->f:I

    if-gez v0, :cond_23

    .line 516
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

    .line 519
    :cond_23
    iget v0, p3, Landroid/support/v4/app/Fragment;->f:I

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .registers 11
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
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1692
    if-nez p1, :cond_5

    .line 1792
    :cond_4
    :goto_4
    return-void

    .line 1693
    :cond_5
    check-cast p1, Landroid/support/v4/app/FragmentManagerState;

    .line 1694
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    if-eqz v0, :cond_4

    .line 1698
    if-eqz p2, :cond_65

    move v1, v2

    .line 1699
    :goto_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_65

    .line 1700
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1701
    sget-boolean v3, Lz;->a:Z

    if-eqz v3, :cond_36

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAllState: re-attaching retained "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_36
    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    iget v4, v0, Landroid/support/v4/app/Fragment;->f:I

    aget-object v3, v3, v4

    .line 1703
    iput-object v0, v3, Landroid/support/v4/app/FragmentState;->a:Landroid/support/v4/app/Fragment;

    .line 1704
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->a:Landroid/util/SparseArray;

    .line 1705
    iput v2, v0, Landroid/support/v4/app/Fragment;->i:I

    .line 1706
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->i:Z

    .line 1707
    iput-boolean v2, v0, Landroid/support/v4/app/Fragment;->e:Z

    .line 1708
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/Fragment;

    .line 1709
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->b:Landroid/os/Bundle;

    if-eqz v4, :cond_61

    .line 1710
    iget-object v4, v3, Landroid/support/v4/app/FragmentState;->b:Landroid/os/Bundle;

    iget-object v5, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1711
    iget-object v3, v3, Landroid/support/v4/app/FragmentState;->b:Landroid/os/Bundle;

    const-string v4, "android:view_state"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    iput-object v3, v0, Landroid/support/v4/app/Fragment;->a:Landroid/util/SparseArray;

    .line 1699
    :cond_61
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    .line 1719
    :cond_65
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    .line 1720
    iget-object v0, p0, Lz;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_78

    .line 1721
    iget-object v0, p0, Lz;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_78
    move v0, v2

    .line 1723
    :goto_79
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    array-length v1, v1

    if-ge v0, v1, :cond_112

    .line 1724
    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/FragmentState;

    aget-object v1, v1, v0

    .line 1725
    if-eqz v1, :cond_ba

    .line 1726
    iget-object v3, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentState;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 1727
    sget-boolean v4, Lz;->a:Z

    if-eqz v4, :cond_b0

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreAllState: adding #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_b0
    iget-object v4, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1732
    iput-object v7, v1, Landroid/support/v4/app/FragmentState;->a:Landroid/support/v4/app/Fragment;

    .line 1723
    :goto_b7
    add-int/lit8 v0, v0, 0x1

    goto :goto_79

    .line 1734
    :cond_ba
    sget-boolean v1, Lz;->a:Z

    if-eqz v1, :cond_dc

    const-string v1, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: adding #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": (null)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_dc
    iget-object v1, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1736
    iget-object v1, p0, Lz;->d:Ljava/util/ArrayList;

    if-nez v1, :cond_ec

    .line 1737
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lz;->d:Ljava/util/ArrayList;

    .line 1739
    :cond_ec
    sget-boolean v1, Lz;->a:Z

    if-eqz v1, :cond_108

    const-string v1, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: adding avail #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    :cond_108
    iget-object v1, p0, Lz;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b7

    .line 1745
    :cond_112
    if-eqz p2, :cond_166

    move v3, v2

    .line 1746
    :goto_115
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_166

    .line 1747
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1748
    iget v1, v0, Landroid/support/v4/app/Fragment;->g:I

    if-ltz v1, :cond_13b

    .line 1749
    iget v1, v0, Landroid/support/v4/app/Fragment;->g:I

    iget-object v4, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_13f

    .line 1750
    iget-object v1, p0, Lz;->b:Ljava/util/ArrayList;

    iget v4, v0, Landroid/support/v4/app/Fragment;->g:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    iput-object v1, v0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/Fragment;

    .line 1746
    :cond_13b
    :goto_13b
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_115

    .line 1752
    :cond_13f
    const-string v1, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-attaching retained fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " target no longer exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/support/v4/app/Fragment;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iput-object v7, v0, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/Fragment;

    goto :goto_13b

    .line 1761
    :cond_166
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[I

    if-eqz v0, :cond_1d7

    .line 1762
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    move v1, v2

    .line 1763
    :goto_175
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[I

    array-length v0, v0

    if-ge v1, v0, :cond_1d9

    .line 1764
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[I

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1765
    if-nez v0, :cond_1a5

    .line 1766
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No instantiated fragment for index #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/support/v4/app/FragmentManagerState;->a:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1769
    :cond_1a5
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/support/v4/app/Fragment;->e:Z

    .line 1770
    sget-boolean v3, Lz;->a:Z

    if-eqz v3, :cond_1ce

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreAllState: making added #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :cond_1ce
    iget-object v3, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1763
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_175

    .line 1774
    :cond_1d7
    iput-object v7, p0, Lz;->c:Ljava/util/ArrayList;

    .line 1778
    :cond_1d9
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/BackStackState;

    if-eqz v0, :cond_237

    .line 1779
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/BackStackState;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    .line 1780
    :goto_1e7
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/BackStackState;

    array-length v0, v0

    if-ge v2, v0, :cond_4

    .line 1781
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerState;->a:[Landroid/support/v4/app/BackStackState;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/support/v4/app/BackStackState;->a(Lz;)Lp;

    move-result-object v0

    .line 1782
    sget-boolean v1, Lz;->a:Z

    if-eqz v1, :cond_226

    const-string v1, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: adding bse #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lp;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_226
    iget-object v1, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1785
    iget v1, v0, Lp;->h:I

    if-ltz v1, :cond_234

    .line 1786
    iget v1, v0, Lp;->h:I

    invoke-virtual {p0, v1, v0}, Lz;->a(ILp;)V

    .line 1780
    :cond_234
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e7

    .line 1790
    :cond_237
    iput-object v7, p0, Lz;->e:Ljava/util/ArrayList;

    goto/16 :goto_4
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 761
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->r:Z

    if-eqz v0, :cond_c

    .line 762
    iget-boolean v0, p0, Lz;->c:Z

    if-eqz v0, :cond_d

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz;->g:Z

    .line 770
    :cond_c
    :goto_c
    return-void

    .line 767
    :cond_d
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->r:Z

    .line 768
    iget v0, p0, Lz;->a:I

    invoke-virtual {p0, p1, v0, v1, v1}, Lz;->a(Landroid/support/v4/app/Fragment;III)V

    goto :goto_c
.end method

.method public a(Landroid/support/v4/app/Fragment;II)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1162
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_2a

    const-string v0, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nesting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/support/v4/app/Fragment;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_2a
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->a()Z

    move-result v0

    if-nez v0, :cond_50

    move v0, v1

    .line 1164
    :goto_31
    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->l:Z

    if-eqz v3, :cond_37

    if-eqz v0, :cond_4f

    .line 1165
    :cond_37
    iget-object v3, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1166
    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->o:Z

    if-eqz v3, :cond_46

    iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->p:Z

    if-eqz v3, :cond_46

    .line 1167
    iput-boolean v1, p0, Lz;->d:Z

    .line 1169
    :cond_46
    iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->e:Z

    .line 1170
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->f:Z

    .line 1171
    if-eqz v0, :cond_52

    :goto_4c
    invoke-virtual {p0, p1, v2, p2, p3}, Lz;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1174
    :cond_4f
    return-void

    :cond_50
    move v0, v2

    .line 1163
    goto :goto_31

    :cond_52
    move v2, v1

    .line 1171
    goto :goto_4c
.end method

.method a(Landroid/support/v4/app/Fragment;III)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 774
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->e:Z

    if-nez v0, :cond_c

    if-le p2, v1, :cond_c

    move p2, v1

    .line 777
    :cond_c
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->f:Z

    if-eqz v0, :cond_16

    iget v0, p1, Landroid/support/v4/app/Fragment;->d:I

    if-le p2, v0, :cond_16

    .line 779
    iget p2, p1, Landroid/support/v4/app/Fragment;->d:I

    .line 783
    :cond_16
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->r:Z

    if-eqz v0, :cond_21

    iget v0, p1, Landroid/support/v4/app/Fragment;->d:I

    if-ge v0, v7, :cond_21

    if-le p2, v2, :cond_21

    move p2, v2

    .line 786
    :cond_21
    iget v0, p1, Landroid/support/v4/app/Fragment;->d:I

    if-ge v0, p2, :cond_2a4

    .line 790
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->h:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->i:Z

    if-nez v0, :cond_2e

    .line 1055
    :goto_2d
    return-void

    .line 793
    :cond_2e
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/view/View;

    if-eqz v0, :cond_39

    .line 798
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->a:Landroid/view/View;

    .line 799
    iget v0, p1, Landroid/support/v4/app/Fragment;->e:I

    invoke-virtual {p0, p1, v0, v6, v6}, Lz;->a(Landroid/support/v4/app/Fragment;III)V

    .line 801
    :cond_39
    iget v0, p1, Landroid/support/v4/app/Fragment;->d:I

    packed-switch v0, :pswitch_data_48e

    .line 1054
    :cond_3e
    :goto_3e
    iput p2, p1, Landroid/support/v4/app/Fragment;->d:I

    goto :goto_2d

    .line 803
    :pswitch_41
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_5d

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveto CREATED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_5d
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_96

    .line 805
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    const-string v4, "android:view_state"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/util/SparseArray;

    .line 807
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    const-string v4, "android:target_state"

    invoke-virtual {p0, v0, v4}, Lz;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/Fragment;

    .line 809
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_83

    .line 810
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    const-string v4, "android:target_req_state"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroid/support/v4/app/Fragment;->h:I

    .line 813
    :cond_83
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    const-string v4, "android:user_visible_hint"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->s:Z

    .line 815
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->s:Z

    if-nez v0, :cond_96

    .line 816
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->r:Z

    .line 817
    if-le p2, v2, :cond_96

    move p2, v2

    .line 822
    :cond_96
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    .line 823
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Lz;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->a:Lz;

    .line 824
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->q:Z

    .line 825
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/app/Activity;)V

    .line 826
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->q:Z

    if-nez v0, :cond_ca

    .line 827
    new-instance v0, LU;

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

    invoke-direct {v0, v1}, LU;-><init>(Ljava/lang/String;)V

    throw v0

    .line 830
    :cond_ca
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->a(Landroid/support/v4/app/Fragment;)V

    .line 832
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->n:Z

    if-nez v0, :cond_fd

    .line 833
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->q:Z

    .line 834
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    .line 835
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->q:Z

    if-nez v0, :cond_fd

    .line 836
    new-instance v0, LU;

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

    invoke-direct {v0, v1}, LU;-><init>(Ljava/lang/String;)V

    throw v0

    .line 840
    :cond_fd
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->n:Z

    .line 841
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->h:Z

    if-eqz v0, :cond_133

    .line 845
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v3, v4}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    .line 847
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    if-eqz v0, :cond_192

    .line 848
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    .line 849
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    invoke-static {v0}, LT;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    .line 850
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->k:Z

    if-eqz v0, :cond_12c

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 851
    :cond_12c
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v4}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 857
    :cond_133
    :goto_133
    :pswitch_133
    if-le p2, v1, :cond_210

    .line 858
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_151

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_151
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->h:Z

    if-nez v0, :cond_1da

    .line 861
    iget v0, p1, Landroid/support/v4/app/Fragment;->k:I

    if-eqz v0, :cond_195

    .line 862
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    iget v4, p1, Landroid/support/v4/app/Fragment;->k:I

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 863
    if-nez v0, :cond_196

    iget-boolean v4, p1, Landroid/support/v4/app/Fragment;->j:Z

    if-nez v4, :cond_196

    .line 864
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No view found for id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/Fragment;->k:I

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

    .line 853
    :cond_192
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    goto :goto_133

    :cond_195
    move-object v0, v3

    .line 869
    :cond_196
    iput-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/view/ViewGroup;

    .line 870
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v5, p1, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v0, v5}, Landroid/support/v4/app/Fragment;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    .line 872
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    if-eqz v4, :cond_204

    .line 873
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    .line 874
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    invoke-static {v4}, LT;->a(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    .line 875
    if-eqz v0, :cond_1c8

    .line 876
    invoke-virtual {p0, p1, p3, v1, p4}, Lz;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v4

    .line 878
    if-eqz v4, :cond_1c3

    .line 879
    iget-object v5, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 881
    :cond_1c3
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 883
    :cond_1c8
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->k:Z

    if-eqz v0, :cond_1d3

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 884
    :cond_1d3
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v4}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 890
    :cond_1da
    :goto_1da
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->q:Z

    .line 891
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 892
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->q:Z

    if-nez v0, :cond_207

    .line 893
    new-instance v0, LU;

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

    invoke-direct {v0, v1}, LU;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_204
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    goto :goto_1da

    .line 896
    :cond_207
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    if-eqz v0, :cond_20e

    .line 897
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->e_()V

    .line 899
    :cond_20e
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    .line 903
    :cond_210
    :pswitch_210
    if-le p2, v2, :cond_256

    .line 904
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_22e

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveto STARTED: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_22e
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->q:Z

    .line 906
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->l()V

    .line 907
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->q:Z

    if-nez v0, :cond_256

    .line 908
    new-instance v0, LU;

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

    invoke-direct {v0, v1}, LU;-><init>(Ljava/lang/String;)V

    throw v0

    .line 913
    :cond_256
    :pswitch_256
    if-le p2, v7, :cond_3e

    .line 914
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_274

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveto RESUMED: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_274
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->q:Z

    .line 916
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->g:Z

    .line 917
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->f()V

    .line 918
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->q:Z

    if-nez v0, :cond_29e

    .line 919
    new-instance v0, LU;

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

    invoke-direct {v0, v1}, LU;-><init>(Ljava/lang/String;)V

    throw v0

    .line 922
    :cond_29e
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->a:Landroid/os/Bundle;

    .line 923
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->a:Landroid/util/SparseArray;

    goto/16 :goto_3e

    .line 926
    :cond_2a4
    iget v0, p1, Landroid/support/v4/app/Fragment;->d:I

    if-le v0, p2, :cond_3e

    .line 927
    iget v0, p1, Landroid/support/v4/app/Fragment;->d:I

    packed-switch v0, :pswitch_data_49c

    goto/16 :goto_3e

    .line 1005
    :cond_2af
    :goto_2af
    :pswitch_2af
    if-ge p2, v1, :cond_3e

    .line 1006
    iget-boolean v0, p0, Lz;->f:Z

    if-eqz v0, :cond_2c0

    .line 1007
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/view/View;

    if-eqz v0, :cond_2c0

    .line 1014
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/view/View;

    .line 1015
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->a:Landroid/view/View;

    .line 1016
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1019
    :cond_2c0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/view/View;

    if-eqz v0, :cond_40b

    .line 1024
    iput p2, p1, Landroid/support/v4/app/Fragment;->e:I

    move p2, v1

    .line 1025
    goto/16 :goto_3e

    .line 929
    :pswitch_2c9
    const/4 v0, 0x5

    if-ge p2, v0, :cond_312

    .line 930
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_2e8

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movefrom RESUMED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_2e8
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->q:Z

    .line 932
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->g()V

    .line 933
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->q:Z

    if-nez v0, :cond_310

    .line 934
    new-instance v0, LU;

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

    invoke-direct {v0, v1}, LU;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_310
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->g:Z

    .line 940
    :cond_312
    :pswitch_312
    if-ge p2, v7, :cond_358

    .line 941
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_330

    const-string v0, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "movefrom STARTED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    :cond_330
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->q:Z

    .line 943
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->m()V

    .line 944
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->q:Z

    if-nez v0, :cond_358

    .line 945
    new-instance v0, LU;

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

    invoke-direct {v0, v1}, LU;-><init>(Ljava/lang/String;)V

    throw v0

    .line 950
    :cond_358
    :pswitch_358
    if-ge p2, v2, :cond_379

    .line 951
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_376

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movefrom STOPPED: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_376
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->n()V

    .line 955
    :cond_379
    :pswitch_379
    const/4 v0, 0x2

    if-ge p2, v0, :cond_2af

    .line 956
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_398

    const-string v0, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :cond_398
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    if-eqz v0, :cond_3ab

    .line 960
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3ab

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/util/SparseArray;

    if-nez v0, :cond_3ab

    .line 961
    invoke-virtual {p0, p1}, Lz;->e(Landroid/support/v4/app/Fragment;)V

    .line 964
    :cond_3ab
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->q:Z

    .line 965
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->o()V

    .line 966
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->q:Z

    if-nez v0, :cond_3d3

    .line 967
    new-instance v0, LU;

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

    invoke-direct {v0, v1}, LU;-><init>(Ljava/lang/String;)V

    throw v0

    .line 970
    :cond_3d3
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    if-eqz v0, :cond_403

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_403

    .line 972
    iget v0, p0, Lz;->a:I

    if-lez v0, :cond_48a

    iget-boolean v0, p0, Lz;->f:Z

    if-nez v0, :cond_48a

    .line 973
    invoke-virtual {p0, p1, p3, v6, p4}, Lz;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 976
    :goto_3e7
    if-eqz v0, :cond_3fc

    .line 978
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    iput-object v2, p1, Landroid/support/v4/app/Fragment;->a:Landroid/view/View;

    .line 979
    iput p2, p1, Landroid/support/v4/app/Fragment;->e:I

    .line 980
    new-instance v2, LE;

    invoke-direct {v2, p0, p1}, LE;-><init>(Lz;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 996
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 998
    :cond_3fc
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/view/ViewGroup;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1000
    :cond_403
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->a:Landroid/view/ViewGroup;

    .line 1001
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    .line 1002
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    goto/16 :goto_2af

    .line 1027
    :cond_40b
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_427

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom CREATED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_427
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->n:Z

    if-nez v0, :cond_453

    .line 1029
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->q:Z

    .line 1030
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->h()V

    .line 1031
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->q:Z

    if-nez v0, :cond_453

    .line 1032
    new-instance v0, LU;

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

    invoke-direct {v0, v1}, LU;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_453
    iput-boolean v6, p1, Landroid/support/v4/app/Fragment;->q:Z

    .line 1038
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->j()V

    .line 1039
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->q:Z

    if-nez v0, :cond_47b

    .line 1040
    new-instance v0, LU;

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

    invoke-direct {v0, v1}, LU;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1043
    :cond_47b
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->n:Z

    if-nez v0, :cond_484

    .line 1044
    invoke-virtual {p0, p1}, Lz;->d(Landroid/support/v4/app/Fragment;)V

    goto/16 :goto_3e

    .line 1046
    :cond_484
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->a:Landroid/support/v4/app/FragmentActivity;

    .line 1047
    iput-object v3, p1, Landroid/support/v4/app/Fragment;->a:Lz;

    goto/16 :goto_3e

    :cond_48a
    move-object v0, v3

    goto/16 :goto_3e7

    .line 801
    nop

    :pswitch_data_48e
    .packed-switch 0x0
        :pswitch_41
        :pswitch_133
        :pswitch_210
        :pswitch_210
        :pswitch_256
    .end packed-switch

    .line 927
    :pswitch_data_49c
    .packed-switch 0x1
        :pswitch_2af
        :pswitch_379
        :pswitch_358
        :pswitch_312
        :pswitch_2c9
    .end packed-switch
.end method

.method public a(Landroid/support/v4/app/Fragment;Z)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1143
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    .line 1146
    :cond_c
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_28

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

    .line 1147
    :cond_28
    invoke-virtual {p0, p1}, Lz;->c(Landroid/support/v4/app/Fragment;)V

    .line 1148
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->l:Z

    if-nez v0, :cond_48

    .line 1149
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->e:Z

    .line 1151
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->f:Z

    .line 1152
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->o:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->p:Z

    if-eqz v0, :cond_43

    .line 1153
    iput-boolean v3, p0, Lz;->d:Z

    .line 1155
    :cond_43
    if-eqz p2, :cond_48

    .line 1156
    invoke-virtual {p0, p1}, Lz;->b(Landroid/support/v4/app/Fragment;)V

    .line 1159
    :cond_48
    return-void
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;)V
    .registers 3
    .parameter

    .prologue
    .line 1795
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1796
    :cond_a
    iput-object p1, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    .line 1797
    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .registers 5
    .parameter

    .prologue
    .line 1943
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    .line 1944
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 1945
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1946
    if-eqz v0, :cond_27

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->k:Z

    if-nez v2, :cond_27

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->o:Z

    if-eqz v2, :cond_27

    iget-boolean v2, v0, Landroid/support/v4/app/Fragment;->p:Z

    if-eqz v2, :cond_27

    .line 1947
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/Menu;)V

    .line 1944
    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1951
    :cond_2b
    return-void
.end method

.method public a(Ljava/lang/Runnable;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1309
    if-nez p2, :cond_5

    .line 1310
    invoke-direct {p0}, Lz;->n()V

    .line 1312
    :cond_5
    monitor-enter p0

    .line 1313
    :try_start_6
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    if-nez v0, :cond_15

    .line 1314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Activity has been destroyed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1324
    :catchall_12
    move-exception v0

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_12

    throw v0

    .line 1316
    :cond_15
    :try_start_15
    iget-object v0, p0, Lz;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_20

    .line 1317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz;->a:Ljava/util/ArrayList;

    .line 1319
    :cond_20
    iget-object v0, p0, Lz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    iget-object v0, p0, Lz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 1321
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lz;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1322
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lz;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1324
    :cond_40
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_15 .. :try_end_41} :catchall_12

    .line 1325
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 452
    new-instance v0, LC;

    invoke-direct {v0, p0, p1, p2}, LC;-><init>(Lz;Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lz;->a(Ljava/lang/Runnable;Z)V

    .line 457
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "    "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 569
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_5f

    .line 570
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 571
    if-lez v4, :cond_5f

    .line 572
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Fragments in "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 574
    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 575
    :goto_39
    if-ge v2, v4, :cond_5f

    .line 576
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 577
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 578
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 579
    if-eqz v0, :cond_5b

    .line 580
    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/support/v4/app/Fragment;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 575
    :cond_5b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_39

    .line 586
    :cond_5f
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_99

    .line 587
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 588
    if-lez v4, :cond_99

    .line 589
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Added Fragments:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 590
    :goto_74
    if-ge v2, v4, :cond_99

    .line 591
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 592
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 593
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_74

    .line 598
    :cond_99
    iget-object v0, p0, Lz;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_d3

    .line 599
    iget-object v0, p0, Lz;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 600
    if-lez v4, :cond_d3

    .line 601
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Fragments Created Menus:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 602
    :goto_ae
    if-ge v2, v4, :cond_d3

    .line 603
    iget-object v0, p0, Lz;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 604
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 605
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_ae

    .line 610
    :cond_d3
    iget-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_110

    .line 611
    iget-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 612
    if-lez v4, :cond_110

    .line 613
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 614
    :goto_e8
    if-ge v2, v4, :cond_110

    .line 615
    iget-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp;

    .line 616
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 617
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0, v3, p2, p3, p4}, Lp;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 614
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e8

    .line 623
    :cond_110
    monitor-enter p0

    .line 624
    :try_start_111
    iget-object v0, p0, Lz;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_147

    .line 625
    iget-object v0, p0, Lz;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 626
    if-lez v3, :cond_147

    .line 627
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v1

    .line 628
    :goto_126
    if-ge v2, v3, :cond_147

    .line 629
    iget-object v0, p0, Lz;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp;

    .line 630
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 631
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 628
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_126

    .line 636
    :cond_147
    iget-object v0, p0, Lz;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_168

    iget-object v0, p0, Lz;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_168

    .line 637
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAvailBackStackIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lz;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    :cond_168
    monitor-exit p0
    :try_end_169
    .catchall {:try_start_111 .. :try_end_169} :catchall_19e

    .line 642
    iget-object v0, p0, Lz;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a1

    .line 643
    iget-object v0, p0, Lz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 644
    if-lez v2, :cond_1a1

    .line 645
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    :goto_17d
    if-ge v1, v2, :cond_1a1

    .line 647
    iget-object v0, p0, Lz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 648
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 649
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 646
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_17d

    .line 640
    :catchall_19e
    move-exception v0

    :try_start_19f
    monitor-exit p0
    :try_end_1a0
    .catchall {:try_start_19f .. :try_end_1a0} :catchall_19e

    throw v0

    .line 654
    :cond_1a1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FragmentManager misc state:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCurState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lz;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 656
    const-string v0, " mStateSaved="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lz;->e:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 657
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lz;->f:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 658
    iget-boolean v0, p0, Lz;->d:Z

    if-eqz v0, :cond_1db

    .line 659
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNeedMenuInvalidate="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    iget-boolean v0, p0, Lz;->d:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 662
    :cond_1db
    iget-object v0, p0, Lz;->a:Ljava/lang/String;

    if-eqz v0, :cond_1ec

    .line 663
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mNoTransactionsBecause="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lz;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    :cond_1ec
    iget-object v0, p0, Lz;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_20d

    iget-object v0, p0, Lz;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_20d

    .line 667
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mAvailIndices: "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    iget-object v0, p0, Lz;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 670
    :cond_20d
    return-void
.end method

.method a(Lp;)V
    .registers 3
    .parameter

    .prologue
    .line 1448
    iget-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    .line 1451
    :cond_b
    iget-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1452
    invoke-virtual {p0}, Lz;->c()V

    .line 1453
    return-void
.end method

.method public a(Ly;)V
    .registers 3
    .parameter

    .prologue
    .line 500
    iget-object v0, p0, Lz;->i:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz;->i:Ljava/util/ArrayList;

    .line 503
    :cond_b
    iget-object v0, p0, Lz;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 431
    invoke-virtual {p0}, Lz;->c()Z

    move-result v0

    return v0
.end method

.method a(Landroid/os/Handler;Ljava/lang/String;II)Z
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1456
    iget-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    .line 1515
    :cond_6
    :goto_6
    return v3

    .line 1459
    :cond_7
    if-nez p2, :cond_29

    if-gez p3, :cond_29

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_29

    .line 1460
    iget-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1461
    if-ltz v0, :cond_6

    .line 1464
    iget-object v1, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp;

    .line 1465
    invoke-virtual {v0, v2}, Lp;->a(Z)V

    .line 1466
    invoke-virtual {p0}, Lz;->c()V

    :goto_27
    move v3, v2

    .line 1515
    goto :goto_6

    .line 1468
    :cond_29
    const/4 v0, -0x1

    .line 1469
    if-nez p2, :cond_2e

    if-ltz p3, :cond_7d

    .line 1472
    :cond_2e
    iget-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 1473
    :goto_36
    if-ltz v1, :cond_4c

    .line 1474
    iget-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp;

    .line 1475
    if-eqz p2, :cond_73

    invoke-virtual {v0}, Lp;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 1483
    :cond_4c
    if-ltz v1, :cond_6

    .line 1486
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_7c

    .line 1487
    add-int/lit8 v1, v1, -0x1

    .line 1489
    :goto_54
    if-ltz v1, :cond_7c

    .line 1490
    iget-object v0, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp;

    .line 1491
    if-eqz p2, :cond_6a

    invoke-virtual {v0}, Lp;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70

    :cond_6a
    if-ltz p3, :cond_7c

    iget v0, v0, Lp;->h:I

    if-ne p3, v0, :cond_7c

    .line 1493
    :cond_70
    add-int/lit8 v1, v1, -0x1

    .line 1494
    goto :goto_54

    .line 1478
    :cond_73
    if-ltz p3, :cond_79

    iget v0, v0, Lp;->h:I

    if-eq p3, v0, :cond_4c

    .line 1481
    :cond_79
    add-int/lit8 v1, v1, -0x1

    .line 1482
    goto :goto_36

    :cond_7c
    move v0, v1

    .line 1500
    :cond_7d
    iget-object v1, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_6

    .line 1503
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1505
    iget-object v1, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_94
    if-le v1, v0, :cond_a2

    .line 1506
    iget-object v4, p0, Lz;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1505
    add-int/lit8 v1, v1, -0x1

    goto :goto_94

    .line 1508
    :cond_a2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    move v4, v3

    .line 1509
    :goto_a9
    if-gt v4, v6, :cond_dd

    .line 1510
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_cb

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Popping back stack state: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    :cond_cb
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp;

    if-ne v4, v6, :cond_db

    move v1, v2

    :goto_d4
    invoke-virtual {v0, v1}, Lp;->a(Z)V

    .line 1509
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_a9

    :cond_db
    move v1, v3

    .line 1511
    goto :goto_d4

    .line 1513
    :cond_dd
    invoke-virtual {p0}, Lz;->c()V

    goto/16 :goto_27
.end method

.method public a(Landroid/view/Menu;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1901
    .line 1902
    iget-object v1, p0, Lz;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_2d

    move v1, v0

    move v2, v0

    .line 1903
    :goto_7
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2e

    .line 1904
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1905
    if-eqz v0, :cond_29

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->k:Z

    if-nez v3, :cond_29

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->o:Z

    if-eqz v3, :cond_29

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->p:Z

    if-eqz v3, :cond_29

    .line 1906
    const/4 v2, 0x1

    .line 1907
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;)V

    .line 1903
    :cond_29
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_2d
    move v2, v0

    .line 1911
    :cond_2e
    return v2
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1870
    .line 1871
    const/4 v1, 0x0

    .line 1872
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3a

    move v3, v4

    move v2, v4

    .line 1873
    :goto_8
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_3b

    .line 1874
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1875
    if-eqz v0, :cond_34

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->k:Z

    if-nez v5, :cond_34

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->o:Z

    if-eqz v5, :cond_34

    iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->p:Z

    if-eqz v5, :cond_34

    .line 1876
    const/4 v2, 0x1

    .line 1877
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1878
    if-nez v1, :cond_31

    .line 1879
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1881
    :cond_31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    move v0, v2

    .line 1873
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_8

    :cond_3a
    move v2, v4

    .line 1886
    :cond_3b
    iget-object v0, p0, Lz;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_5d

    .line 1887
    :goto_3f
    iget-object v0, p0, Lz;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_5d

    .line 1888
    iget-object v0, p0, Lz;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1889
    if-eqz v1, :cond_57

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1890
    :cond_57
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->k()V

    .line 1887
    :cond_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3f

    .line 1895
    :cond_5d
    iput-object v1, p0, Lz;->f:Ljava/util/ArrayList;

    .line 1897
    return v2
.end method

.method public a(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1915
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    move v1, v2

    .line 1916
    :goto_6
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2b

    .line 1917
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1918
    if-eqz v0, :cond_2c

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->k:Z

    if-nez v3, :cond_2c

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->o:Z

    if-eqz v3, :cond_2c

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->p:Z

    if-eqz v3, :cond_2c

    .line 1919
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1920
    const/4 v2, 0x1

    .line 1925
    :cond_2b
    return v2

    .line 1916
    :cond_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method b()V
    .registers 3

    .prologue
    .line 1099
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1107
    :cond_4
    return-void

    .line 1101
    :cond_5
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1102
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1103
    if-eqz v0, :cond_1c

    .line 1104
    invoke-virtual {p0, v0}, Lz;->a(Landroid/support/v4/app/Fragment;)V

    .line 1101
    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7
.end method

.method public b(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1058
    iget v0, p0, Lz;->a:I

    invoke-virtual {p0, p1, v0, v1, v1}, Lz;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1059
    return-void
.end method

.method public b(Landroid/support/v4/app/Fragment;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1177
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_1d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    :cond_1d
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->k:Z

    if-nez v0, :cond_4a

    .line 1179
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->k:Z

    .line 1180
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    if-eqz v0, :cond_39

    .line 1181
    invoke-virtual {p0, p1, p2, v3, p3}, Lz;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1183
    if-eqz v0, :cond_32

    .line 1184
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1186
    :cond_32
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1188
    :cond_39
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->e:Z

    if-eqz v0, :cond_47

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->o:Z

    if-eqz v0, :cond_47

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->p:Z

    if-eqz v0, :cond_47

    .line 1189
    iput-boolean v3, p0, Lz;->d:Z

    .line 1191
    :cond_47
    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->c(Z)V

    .line 1193
    :cond_4a
    return-void
.end method

.method public b(Ly;)V
    .registers 3
    .parameter

    .prologue
    .line 508
    iget-object v0, p0, Lz;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 509
    iget-object v0, p0, Lz;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 511
    :cond_9
    return-void
.end method

.method public b()Z
    .registers 5

    .prologue
    .line 445
    invoke-direct {p0}, Lz;->n()V

    .line 446
    invoke-virtual {p0}, Lz;->a()Z

    .line 447
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lz;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/MenuItem;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1929
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    move v1, v2

    .line 1930
    :goto_6
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 1931
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1932
    if-eqz v0, :cond_24

    iget-boolean v3, v0, Landroid/support/v4/app/Fragment;->k:Z

    if-nez v3, :cond_24

    .line 1933
    invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->b(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1934
    const/4 v2, 0x1

    .line 1939
    :cond_23
    return v2

    .line 1930
    :cond_24
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method

.method c()V
    .registers 3

    .prologue
    .line 1440
    iget-object v0, p0, Lz;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 1441
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Lz;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 1442
    iget-object v0, p0, Lz;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly;

    invoke-interface {v0}, Ly;->a()V

    .line 1441
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1445
    :cond_1d
    return-void
.end method

.method c(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter

    .prologue
    .line 1110
    iget v0, p1, Landroid/support/v4/app/Fragment;->f:I

    if-ltz v0, :cond_5

    .line 1125
    :goto_4
    return-void

    .line 1114
    :cond_5
    iget-object v0, p0, Lz;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lz;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2b

    .line 1115
    :cond_11
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    .line 1116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    .line 1118
    :cond_1c
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a_(I)V

    .line 1119
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1122
    :cond_2b
    iget-object v0, p0, Lz;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lz;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->a_(I)V

    .line 1123
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->f:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public c(Landroid/support/v4/app/Fragment;II)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1196
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_1e

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    :cond_1e
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->k:Z

    if-eqz v0, :cond_49

    .line 1198
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->k:Z

    .line 1199
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    if-eqz v0, :cond_38

    .line 1200
    invoke-virtual {p0, p1, p2, v4, p3}, Lz;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1202
    if-eqz v0, :cond_33

    .line 1203
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1205
    :cond_33
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->b:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    :cond_38
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->e:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->o:Z

    if-eqz v0, :cond_46

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->p:Z

    if-eqz v0, :cond_46

    .line 1208
    iput-boolean v4, p0, Lz;->d:Z

    .line 1210
    :cond_46
    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->c(Z)V

    .line 1212
    :cond_49
    return-void
.end method

.method public c()Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1387
    iget-boolean v1, p0, Lz;->c:Z

    if-eqz v1, :cond_e

    .line 1388
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1391
    :cond_e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v1, v3, :cond_24

    .line 1392
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    move v1, v2

    .line 1400
    :goto_25
    monitor-enter p0

    .line 1401
    :try_start_26
    iget-object v3, p0, Lz;->a:Ljava/util/ArrayList;

    if-eqz v3, :cond_32

    iget-object v3, p0, Lz;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5a

    .line 1402
    :cond_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_97

    .line 1423
    iget-boolean v0, p0, Lz;->g:Z

    if-eqz v0, :cond_a5

    move v3, v2

    move v4, v2

    .line 1425
    :goto_39
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_9e

    .line 1426
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1427
    if-eqz v0, :cond_56

    iget-object v5, v0, Landroid/support/v4/app/Fragment;->a:LR;

    if-eqz v5, :cond_56

    .line 1428
    iget-object v0, v0, Landroid/support/v4/app/Fragment;->a:LR;

    invoke-virtual {v0}, LR;->a()Z

    move-result v0

    or-int/2addr v4, v0

    .line 1425
    :cond_56
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_39

    .line 1405
    :cond_5a
    :try_start_5a
    iget-object v1, p0, Lz;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1406
    iget-object v1, p0, Lz;->a:[Ljava/lang/Runnable;

    if-eqz v1, :cond_69

    iget-object v1, p0, Lz;->a:[Ljava/lang/Runnable;

    array-length v1, v1

    if-ge v1, v3, :cond_6d

    .line 1407
    :cond_69
    new-array v1, v3, [Ljava/lang/Runnable;

    iput-object v1, p0, Lz;->a:[Ljava/lang/Runnable;

    .line 1409
    :cond_6d
    iget-object v1, p0, Lz;->a:Ljava/util/ArrayList;

    iget-object v4, p0, Lz;->a:[Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1410
    iget-object v1, p0, Lz;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1411
    iget-object v1, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget-object v4, p0, Lz;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1412
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_5a .. :try_end_83} :catchall_97

    .line 1414
    iput-boolean v0, p0, Lz;->c:Z

    move v1, v2

    .line 1415
    :goto_86
    if-ge v1, v3, :cond_9a

    .line 1416
    iget-object v4, p0, Lz;->a:[Ljava/lang/Runnable;

    aget-object v4, v4, v1

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1417
    iget-object v4, p0, Lz;->a:[Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    .line 1415
    add-int/lit8 v1, v1, 0x1

    goto :goto_86

    .line 1412
    :catchall_97
    move-exception v0

    :try_start_98
    monitor-exit p0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v0

    .line 1419
    :cond_9a
    iput-boolean v2, p0, Lz;->c:Z

    move v1, v0

    .line 1421
    goto :goto_25

    .line 1431
    :cond_9e
    if-nez v4, :cond_a5

    .line 1432
    iput-boolean v2, p0, Lz;->g:Z

    .line 1433
    invoke-virtual {p0}, Lz;->b()V

    .line 1436
    :cond_a5
    return v1
.end method

.method public d()V
    .registers 2

    .prologue
    .line 1800
    const/4 v0, 0x0

    iput-boolean v0, p0, Lz;->e:Z

    .line 1801
    return-void
.end method

.method d(Landroid/support/v4/app/Fragment;)V
    .registers 5
    .parameter

    .prologue
    .line 1128
    iget v0, p1, Landroid/support/v4/app/Fragment;->f:I

    if-gez v0, :cond_5

    .line 1140
    :goto_4
    return-void

    .line 1132
    :cond_5
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_23

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing fragment index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/support/v4/app/Fragment;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_23
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1134
    iget-object v0, p0, Lz;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_36

    .line 1135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lz;->d:Ljava/util/ArrayList;

    .line 1137
    :cond_36
    iget-object v0, p0, Lz;->d:Ljava/util/ArrayList;

    iget v1, p1, Landroid/support/v4/app/Fragment;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    iget-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    iget v1, p1, Landroid/support/v4/app/Fragment;->f:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->a(I)V

    .line 1139
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->i()V

    goto :goto_4
.end method

.method public d(Landroid/support/v4/app/Fragment;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1215
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_1d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_1d
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->l:Z

    if-nez v0, :cond_3c

    .line 1217
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->l:Z

    .line 1218
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->e:Z

    if-eqz v0, :cond_3c

    .line 1220
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1221
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->o:Z

    if-eqz v0, :cond_36

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->p:Z

    if-eqz v0, :cond_36

    .line 1222
    iput-boolean v3, p0, Lz;->d:Z

    .line 1224
    :cond_36
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->e:Z

    .line 1225
    invoke-virtual {p0, p1, v3, p2, p3}, Lz;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1228
    :cond_3c
    return-void
.end method

.method public e()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1804
    iput-boolean v1, p0, Lz;->e:Z

    .line 1805
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lz;->a(IZ)V

    .line 1806
    return-void
.end method

.method e(Landroid/support/v4/app/Fragment;)V
    .registers 4
    .parameter

    .prologue
    .line 1537
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    if-nez v0, :cond_5

    .line 1550
    :cond_4
    :goto_4
    return-void

    .line 1540
    :cond_5
    iget-object v0, p0, Lz;->a:Landroid/util/SparseArray;

    if-nez v0, :cond_27

    .line 1541
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lz;->a:Landroid/util/SparseArray;

    .line 1545
    :goto_10
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->c:Landroid/view/View;

    iget-object v1, p0, Lz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1546
    iget-object v0, p0, Lz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1547
    iget-object v0, p0, Lz;->a:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->a:Landroid/util/SparseArray;

    .line 1548
    const/4 v0, 0x0

    iput-object v0, p0, Lz;->a:Landroid/util/SparseArray;

    goto :goto_4

    .line 1543
    :cond_27
    iget-object v0, p0, Lz;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_10
.end method

.method public e(Landroid/support/v4/app/Fragment;II)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 1231
    sget-boolean v0, Lz;->a:Z

    if-eqz v0, :cond_1d

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_1d
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->l:Z

    if-eqz v0, :cond_3e

    .line 1233
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->l:Z

    .line 1234
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->e:Z

    if-nez v0, :cond_3e

    .line 1235
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->e:Z

    .line 1237
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->o:Z

    if-eqz v0, :cond_39

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->p:Z

    if-eqz v0, :cond_39

    .line 1238
    iput-boolean v3, p0, Lz;->d:Z

    .line 1240
    :cond_39
    iget v0, p0, Lz;->a:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lz;->a(Landroid/support/v4/app/Fragment;III)V

    .line 1243
    :cond_3e
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1809
    iput-boolean v1, p0, Lz;->e:Z

    .line 1810
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lz;->a(IZ)V

    .line 1811
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1814
    iput-boolean v1, p0, Lz;->e:Z

    .line 1815
    const/4 v0, 0x4

    invoke-virtual {p0, v0, v1}, Lz;->a(IZ)V

    .line 1816
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1819
    iput-boolean v1, p0, Lz;->e:Z

    .line 1820
    const/4 v0, 0x5

    invoke-virtual {p0, v0, v1}, Lz;->a(IZ)V

    .line 1821
    return-void
.end method

.method public i()V
    .registers 3

    .prologue
    .line 1824
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lz;->a(IZ)V

    .line 1825
    return-void
.end method

.method public j()V
    .registers 3

    .prologue
    .line 1831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz;->e:Z

    .line 1833
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lz;->a(IZ)V

    .line 1834
    return-void
.end method

.method public k()V
    .registers 3

    .prologue
    .line 1837
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lz;->a(IZ)V

    .line 1838
    return-void
.end method

.method public l()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lz;->f:Z

    .line 1842
    invoke-virtual {p0}, Lz;->c()Z

    .line 1843
    invoke-virtual {p0, v1, v1}, Lz;->a(IZ)V

    .line 1844
    const/4 v0, 0x0

    iput-object v0, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    .line 1845
    return-void
.end method

.method public m()V
    .registers 3

    .prologue
    .line 1859
    iget-object v0, p0, Lz;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1f

    .line 1860
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 1861
    iget-object v0, p0, Lz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1862
    if-eqz v0, :cond_1b

    .line 1863
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 1860
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 1867
    :cond_1f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 556
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-object v1, p0, Lz;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Lan;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 560
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
