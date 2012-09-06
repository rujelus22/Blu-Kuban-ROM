.class public abstract Lcom/google/android/maps/driveabout/app/R;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/google/android/maps/driveabout/app/bL;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Landroid/os/Handler;

.field protected c:I

.field protected d:Lm/b;

.field private e:Ljava/util/ArrayList;

.field private f:Ljava/util/ArrayList;

.field private g:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 241
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->e:Ljava/util/ArrayList;

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->f:Ljava/util/ArrayList;

    .line 237
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/app/R;->c:I

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->d:Lm/b;

    .line 242
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/R;->a:Landroid/content/Context;

    .line 243
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->b:Landroid/os/Handler;

    .line 244
    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IFF)Landroid/view/View;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f1000e0

    const/high16 v8, -0x4080

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 431
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_12

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_20

    .line 432
    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 435
    :cond_20
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 436
    if-eqz p2, :cond_88

    .line 437
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 443
    :goto_2e
    const v0, 0x7f1000e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 444
    if-eqz p3, :cond_8c

    .line 445
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 451
    :goto_3f
    const v0, 0x7f100122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 452
    const v1, 0x7f100123

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/app/DirectionView;

    .line 453
    cmpl-float v2, p5, v8

    if-eqz v2, :cond_94

    .line 454
    new-instance v2, Lcom/google/android/maps/driveabout/app/aH;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/R;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/app/aH;-><init>(Landroid/content/Context;)V

    .line 455
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/google/android/maps/driveabout/app/aH;->a(IIZI)Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    cmpl-float v0, p6, v8

    if-eqz v0, :cond_90

    .line 461
    invoke-virtual {v1, p6}, Lcom/google/android/maps/driveabout/app/DirectionView;->setOrientation(F)V

    .line 462
    invoke-virtual {v1, v6}, Lcom/google/android/maps/driveabout/app/DirectionView;->setVisibility(I)V

    .line 471
    :goto_76
    const v0, 0x7f1000df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 472
    if-eqz p4, :cond_9b

    .line 473
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 474
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    :goto_87
    return-object p1

    .line 440
    :cond_88
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2e

    .line 448
    :cond_8c
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3f

    .line 464
    :cond_90
    invoke-virtual {v1, v7}, Lcom/google/android/maps/driveabout/app/DirectionView;->setVisibility(I)V

    goto :goto_76

    .line 467
    :cond_94
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    invoke-virtual {v1, v7}, Lcom/google/android/maps/driveabout/app/DirectionView;->setVisibility(I)V

    goto :goto_76

    .line 476
    :cond_9b
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_87
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ad;)Lcom/google/android/maps/driveabout/app/R;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 269
    .line 272
    new-instance v0, Lcom/google/android/maps/driveabout/app/Y;

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/Y;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ad;ZZZ)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ad;ZZ)Lcom/google/android/maps/driveabout/app/R;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    if-nez p3, :cond_d

    const/4 v3, 0x1

    .line 261
    :goto_3
    new-instance v0, Lcom/google/android/maps/driveabout/app/Y;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/Y;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ad;ZZZ)V

    return-object v0

    .line 260
    :cond_d
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Lm/b;Z)Lcom/google/android/maps/driveabout/app/R;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    new-instance v0, Lcom/google/android/maps/driveabout/app/ab;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/driveabout/app/ab;-><init>(Landroid/content/Context;Lm/b;Z)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Lcom/google/android/maps/driveabout/app/R;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 288
    new-instance v0, Lcom/google/android/maps/driveabout/app/U;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/app/U;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/app/W;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 398
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/W;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 407
    const-string v0, ""

    :goto_9
    return-object v0

    .line 401
    :pswitch_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/W;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 403
    :pswitch_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/W;->g()Lo/P;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;Lo/P;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 398
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method

.method static synthetic a()V
    .registers 0

    .prologue
    .line 55
    invoke-static {}, Lcom/google/android/maps/driveabout/app/R;->b()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 549
    move v0, v1

    .line 551
    :goto_2
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 552
    if-gez v0, :cond_9

    .line 555
    :goto_8
    return v1

    .line 554
    :cond_9
    if-eqz v0, :cond_17

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 555
    :cond_17
    const/4 v1, 0x1

    goto :goto_8

    .line 557
    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2
.end method

.method private static b()V
    .registers 1

    .prologue
    .line 1001
    const/16 v0, 0xa

    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1005
    :goto_5
    return-void

    .line 1002
    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .registers 8
    .parameter

    .prologue
    .line 514
    if-nez p1, :cond_14

    const/4 v0, 0x0

    move-object v1, v0

    .line 516
    :goto_4
    monitor-enter p0

    .line 517
    :try_start_5
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 518
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/R;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 533
    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_55

    .line 534
    return-object v0

    .line 514
    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    .line 520
    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 521
    const/4 v0, 0x0

    move v3, v0

    :goto_25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_58

    .line 522
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/W;

    .line 523
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->b()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_51

    .line 524
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/R;->a(Lcom/google/android/maps/driveabout/app/W;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 525
    invoke-static {v4, v1}, Lcom/google/android/maps/driveabout/app/R;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 526
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_4d
    :goto_4d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_25

    .line 529
    :cond_51
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

    .line 533
    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_1e .. :try_end_57} :catchall_55

    throw v0

    :cond_58
    move-object v0, v2

    goto :goto_12
.end method

.method protected declared-synchronized a(Ljava/util/ArrayList;)V
    .registers 3
    .parameter

    .prologue
    .line 296
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/R;->e:Ljava/util/ArrayList;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->f:Ljava/util/ArrayList;

    .line 298
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/R;->notifyDataSetChanged()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 299
    monitor-exit p0

    return-void

    .line 296
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lm/b;)V
    .registers 2
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/R;->d:Lm/b;

    .line 417
    return-void
.end method

.method protected b(Ljava/util/ArrayList;)V
    .registers 4
    .parameter

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/R;->g:Z

    if-eqz v0, :cond_8

    .line 304
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/R;->a(Ljava/util/ArrayList;)V

    .line 313
    :goto_7
    return-void

    .line 306
    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/maps/driveabout/app/S;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/S;-><init>(Lcom/google/android/maps/driveabout/app/R;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7
.end method

.method c(Ljava/util/ArrayList;)V
    .registers 2
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/R;->f:Ljava/util/ArrayList;

    .line 540
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/R;->notifyDataSetChanged()V

    .line 541
    return-void
.end method

.method public c_(I)V
    .registers 2
    .parameter

    .prologue
    .line 424
    iput p1, p0, Lcom/google/android/maps/driveabout/app/R;->c:I

    .line 425
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 492
    new-instance v0, Lcom/google/android/maps/driveabout/app/T;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/T;-><init>(Lcom/google/android/maps/driveabout/app/R;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 324
    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 325
    :cond_a
    const/4 v0, 0x0

    .line 327
    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public getItemId(I)J
    .registers 4
    .parameter

    .prologue
    .line 333
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 339
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/R;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/W;

    .line 340
    if-nez v0, :cond_a

    .line 378
    :goto_9
    return-object v3

    .line 344
    :cond_a
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_de

    goto :goto_9

    .line 346
    :pswitch_12
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/R;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040042

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 348
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/R;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->d()Z

    move-result v0

    if-eqz v0, :cond_db

    .line 350
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 352
    :goto_35
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v1

    .line 353
    goto :goto_9

    .line 355
    :pswitch_3a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/R;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->e()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->i()F

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->j()F

    move-result v6

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/R;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IFF)Landroid/view/View;

    move-result-object v3

    goto :goto_9

    .line 359
    :pswitch_57
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/R;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->g()Lo/P;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/dp;->a(Landroid/content/Context;Lo/P;)Ljava/lang/String;

    move-result-object v2

    .line 362
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->h()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_88

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/R;->a:Landroid/content/Context;

    const v4, 0x7f0d00cf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    :cond_88
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/R;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->g()Lo/P;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/maps/driveabout/app/dp;->b(Landroid/content/Context;Lo/P;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->i()F

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->j()F

    move-result v6

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/R;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IFF)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_9

    .line 369
    :pswitch_a3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/R;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040045

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_9

    .line 371
    :pswitch_b2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/R;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040044

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 373
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    move-object v3, v1

    .line 374
    goto/16 :goto_9

    .line 376
    :pswitch_cb
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/R;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->f()I

    move-result v0

    invoke-virtual {v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_9

    :cond_db
    move-object v0, v2

    goto/16 :goto_35

    .line 344
    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_12
        :pswitch_3a
        :pswitch_57
        :pswitch_a3
        :pswitch_b2
        :pswitch_cb
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .registers 3
    .parameter

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/R;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/W;

    .line 386
    if-eqz v0, :cond_f

    .line 387
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/W;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 393
    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 390
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_10

    .line 387
    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method
