.class public Lq/M;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/app/dO;

.field private final c:Ly/p;

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/util/Random;

.field private final f:J

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BACK_TO_CAR"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LIST_VIEW"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "SATELLITE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ROUTE_OVERVIEW"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TRAFFIC"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "STREET_VIEW"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ALTERNATE_ROUTES"

    aput-object v2, v0, v1

    sput-object v0, Lq/M;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/app/dO;JII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lq/M;->b:Lcom/google/android/maps/driveabout/app/dO;

    sget-object v1, Ly/p;->a:Ly/p;

    iput-object v1, p0, Lq/M;->c:Ly/p;

    iput-wide p2, p0, Lq/M;->f:J

    new-instance v1, Ljava/util/Random;

    iget-wide v2, p0, Lq/M;->f:J

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v1, p0, Lq/M;->e:Ljava/util/Random;

    new-instance v1, Lq/N;

    invoke-direct {v1, p0, v0, p5}, Lq/N;-><init>(Lq/M;Landroid/os/Handler;I)V

    iput-object v1, p0, Lq/M;->d:Ljava/lang/Runnable;

    iget-object v1, p0, Lq/M;->d:Ljava/lang/Runnable;

    mul-int/lit16 v2, p4, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a()I
    .registers 9

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lq/M;->c:Ly/p;

    invoke-virtual {v1}, Ly/p;->a()Ly/s;

    move-result-object v1

    instance-of v2, v1, Ly/E;

    if-nez v2, :cond_1c

    iget-object v2, p0, Lq/M;->e:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    const/high16 v3, 0x3f00

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1c

    :goto_1b
    return v0

    :cond_1c
    sget-object v2, Ly/a;->a:Ly/a;

    if-ne v1, v2, :cond_2f

    new-array v0, v7, [I

    fill-array-data v0, :array_70

    :goto_25
    iget-object v1, p0, Lq/M;->e:Ljava/util/Random;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_1b

    :cond_2f
    sget-object v2, Ly/g;->a:Ly/g;

    if-ne v1, v2, :cond_39

    new-array v0, v5, [I

    fill-array-data v0, :array_7e

    goto :goto_25

    :cond_39
    sget-object v2, Ly/e;->a:Ly/e;

    if-ne v1, v2, :cond_43

    new-array v0, v7, [I

    fill-array-data v0, :array_86

    goto :goto_25

    :cond_43
    sget-object v2, Ly/d;->a:Ly/d;

    if-ne v1, v2, :cond_4d

    new-array v0, v5, [I

    fill-array-data v0, :array_94

    goto :goto_25

    :cond_4d
    sget-object v2, Ly/c;->a:Ly/c;

    if-ne v1, v2, :cond_57

    new-array v0, v6, [I

    fill-array-data v0, :array_9c

    goto :goto_25

    :cond_57
    sget-object v2, Ly/m;->a:Ly/m;

    if-ne v1, v2, :cond_62

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a8

    goto :goto_25

    :cond_62
    sget-object v2, Ly/j;->a:Ly/j;

    if-ne v1, v2, :cond_6b

    new-array v0, v0, [I

    aput v6, v0, v4

    goto :goto_25

    :cond_6b
    new-array v0, v0, [I

    aput v4, v0, v4

    goto :goto_25

    :array_70
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_7e
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_86
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    :array_94
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    :array_9c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    :array_a8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Lq/M;)I
    .registers 2

    invoke-direct {p0}, Lq/M;->a()I

    move-result v0

    return v0
.end method

.method private a(I)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_4e

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lq/M;->b:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->e()V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lq/M;->b:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->a(Z)V

    goto :goto_5

    :pswitch_12
    iget-boolean v2, p0, Lq/M;->g:Z

    if-nez v2, :cond_20

    :goto_16
    iput-boolean v0, p0, Lq/M;->g:Z

    iget-object v0, p0, Lq/M;->b:Lcom/google/android/maps/driveabout/app/dO;

    iget-boolean v1, p0, Lq/M;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->d(Z)V

    goto :goto_5

    :cond_20
    move v0, v1

    goto :goto_16

    :pswitch_22
    iget-object v0, p0, Lq/M;->b:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dO;->b(Z)V

    goto :goto_5

    :pswitch_28
    iget-object v2, p0, Lq/M;->c:Ly/p;

    invoke-virtual {v2}, Ly/p;->a()Ly/s;

    move-result-object v2

    iget-object v3, p0, Lq/M;->c:Ly/p;

    invoke-virtual {v3}, Ly/p;->a()Ly/s;

    move-result-object v3

    sget-object v4, Ly/g;->a:Ly/g;

    if-eq v3, v4, :cond_3c

    :goto_38
    invoke-virtual {v2, v0}, Ly/s;->e(Z)V

    goto :goto_5

    :cond_3c
    move v0, v1

    goto :goto_38

    :pswitch_3e
    iget-object v0, p0, Lq/M;->b:Lcom/google/android/maps/driveabout/app/dO;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dO;->c()V

    goto :goto_5

    :pswitch_44
    iget-object v0, p0, Lq/M;->c:Ly/p;

    invoke-virtual {v0}, Ly/p;->a()Ly/s;

    move-result-object v0

    invoke-virtual {v0}, Ly/s;->z()V

    goto :goto_5

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_22
        :pswitch_28
        :pswitch_3e
        :pswitch_44
    .end packed-switch
.end method

.method static synthetic a(Lq/M;I)V
    .registers 2

    invoke-direct {p0, p1}, Lq/M;->a(I)V

    return-void
.end method

.method static synthetic b(Lq/M;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lq/M;->d:Ljava/lang/Runnable;

    return-object v0
.end method
