.class public abstract Lcom/google/android/maps/driveabout/app/S;
.super Landroid/widget/BaseAdapter;

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Landroid/os/Handler;

.field private c:Ljava/util/ArrayList;

.field private d:Ljava/util/ArrayList;

.field private e:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/S;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/S;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/S;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/S;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IFF)Landroid/view/View;
    .registers 16

    const v3, 0x7f0f00b0

    const/high16 v8, -0x4080

    const/16 v7, 0x8

    const/4 v6, 0x0

    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_12

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_20

    :cond_12
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/S;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :cond_20
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_88

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2e
    const v0, 0x7f0f00b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p3, :cond_8c

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3f
    const v0, 0x7f0f00f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0f00fa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/app/DirectionView;

    cmpl-float v2, p5, v8

    if-eqz v2, :cond_94

    new-instance v2, Lcom/google/android/maps/driveabout/app/aJ;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/S;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/app/aJ;-><init>(Landroid/content/Context;)V

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v6, v4, v5}, Lcom/google/android/maps/driveabout/app/aJ;->a(IIZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    cmpl-float v0, p6, v8

    if-eqz v0, :cond_90

    invoke-virtual {v1, p6}, Lcom/google/android/maps/driveabout/app/DirectionView;->a(F)V

    invoke-virtual {v1, v6}, Lcom/google/android/maps/driveabout/app/DirectionView;->setVisibility(I)V

    :goto_76
    const v0, 0x7f0f00af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p4, :cond_9b

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_87
    return-object p1

    :cond_88
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2e

    :cond_8c
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3f

    :cond_90
    invoke-virtual {v1, v7}, Lcom/google/android/maps/driveabout/app/DirectionView;->setVisibility(I)V

    goto :goto_76

    :cond_94
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v7}, Lcom/google/android/maps/driveabout/app/DirectionView;->setVisibility(I)V

    goto :goto_76

    :cond_9b
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_87
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ae;Z)Lcom/google/android/maps/driveabout/app/S;
    .registers 9

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/app/Z;

    move-object v1, p0

    move-object v2, p1

    move v4, v3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/Z;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ae;ZZZ)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ae;ZZ)Lcom/google/android/maps/driveabout/app/S;
    .registers 10

    const/4 v3, 0x1

    new-instance v0, Lcom/google/android/maps/driveabout/app/Z;

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/Z;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/app/ae;ZZZ)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ls/b;Z)Lcom/google/android/maps/driveabout/app/S;
    .registers 4

    new-instance v0, Lcom/google/android/maps/driveabout/app/ac;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/maps/driveabout/app/ac;-><init>(Landroid/content/Context;Ls/b;Z)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)Lcom/google/android/maps/driveabout/app/S;
    .registers 3

    new-instance v0, Lcom/google/android/maps/driveabout/app/V;

    invoke-direct {v0, p0, p1}, Lcom/google/android/maps/driveabout/app/V;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/app/X;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/X;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    const-string v0, ""

    :goto_9
    return-object v0

    :pswitch_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/S;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/X;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_15
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/S;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/X;->e()Lu/P;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;Lu/P;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method

.method static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/S;->b()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_9

    :goto_8
    return v1

    :cond_9
    if-eqz v0, :cond_17

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_17
    const/4 v1, 0x1

    goto :goto_8

    :cond_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2
.end method

.method private static b()V
    .registers 1

    const/16 v0, 0xa

    :try_start_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method a(Ljava/lang/CharSequence;)Ljava/util/ArrayList;
    .registers 8

    if-nez p1, :cond_14

    const/4 v0, 0x0

    move-object v1, v0

    :goto_4
    monitor-enter p0

    :try_start_5
    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/S;->c:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_12
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_55

    return-object v0

    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_4

    :cond_1e
    :try_start_1e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v3, v0

    :goto_25
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/S;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_58

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/S;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/X;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->b()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_51

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/app/S;->a(Lcom/google/android/maps/driveabout/app/X;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/google/android/maps/driveabout/app/S;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4d
    :goto_4d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_25

    :cond_51
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4d

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

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/S;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/S;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/S;->notifyDataSetChanged()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lt/o;Lu/P;Ljava/util/ArrayList;)V
    .registers 4

    return-void
.end method

.method protected b(Ljava/util/ArrayList;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/S;->e:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/S;->a(Ljava/util/ArrayList;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/S;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/maps/driveabout/app/T;

    invoke-direct {v1, p0, p1}, Lcom/google/android/maps/driveabout/app/T;-><init>(Lcom/google/android/maps/driveabout/app/S;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7
.end method

.method c(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/S;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/app/S;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/S;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    new-instance v0, Lcom/google/android/maps/driveabout/app/U;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/U;-><init>(Lcom/google/android/maps/driveabout/app/S;)V

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    if-ltz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/S;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/S;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_b
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/S;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/X;

    if-nez v0, :cond_a

    :goto_9
    return-object v3

    :cond_a
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_bc

    goto :goto_9

    :pswitch_12
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/S;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030038

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    move-object v3, v1

    goto :goto_9

    :pswitch_2a
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/S;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->d()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->g()F

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->h()F

    move-result v6

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/S;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IFF)Landroid/view/View;

    move-result-object v3

    goto :goto_9

    :pswitch_47
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/S;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->e()Lu/P;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/app/dA;->a(Landroid/content/Context;Lu/P;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->f()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_78

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/S;->a:Landroid/content/Context;

    const v4, 0x7f0b00c1

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

    :cond_78
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/S;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->e()Lu/P;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/maps/driveabout/app/dA;->b(Landroid/content/Context;Lu/P;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->g()F

    move-result v5

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->h()F

    move-result v6

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/app/S;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;IFF)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_9

    :pswitch_93
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/S;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003b

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_9

    :pswitch_a2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/S;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03003a

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->c()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    move-object v3, v1

    goto/16 :goto_9

    nop

    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_12
        :pswitch_2a
        :pswitch_47
        :pswitch_93
        :pswitch_a2
    .end packed-switch
.end method

.method public isEnabled(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/app/S;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/X;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/X;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0

    :pswitch_11
    const/4 v0, 0x1

    goto :goto_10

    nop

    :pswitch_data_14
    .packed-switch 0x2
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method
