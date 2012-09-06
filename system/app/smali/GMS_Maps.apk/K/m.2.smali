.class public Lk/M;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/app/dD;

.field private final c:Ls/n;

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/util/Random;

.field private final f:J

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 38
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

    sput-object v0, Lk/M;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/app/dD;JII)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 68
    iput-object p1, p0, Lk/M;->b:Lcom/google/android/maps/driveabout/app/dD;

    .line 69
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/app/dD;->a()Ls/n;

    move-result-object v1

    iput-object v1, p0, Lk/M;->c:Ls/n;

    .line 70
    iput-wide p2, p0, Lk/M;->f:J

    .line 71
    new-instance v1, Ljava/util/Random;

    iget-wide v2, p0, Lk/M;->f:J

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v1, p0, Lk/M;->e:Ljava/util/Random;

    .line 72
    new-instance v1, Lk/N;

    invoke-direct {v1, p0, v0, p5}, Lk/N;-><init>(Lk/M;Landroid/os/Handler;I)V

    iput-object v1, p0, Lk/M;->d:Ljava/lang/Runnable;

    .line 80
    iget-object v1, p0, Lk/M;->d:Ljava/lang/Runnable;

    mul-int/lit16 v2, p4, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    return-void
.end method

.method private a()I
    .registers 9

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 85
    iget-object v1, p0, Lk/M;->c:Ls/n;

    invoke-virtual {v1}, Ls/n;->g()Ls/q;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ls/q;->C()Ls/w;

    move-result-object v2

    .line 89
    instance-of v1, v1, Ls/D;

    if-nez v1, :cond_20

    iget-object v1, p0, Lk/M;->e:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    const/high16 v3, 0x3f00

    cmpg-float v1, v1, v3

    if-gez v1, :cond_20

    .line 143
    :goto_1f
    return v0

    .line 96
    :cond_20
    sget-object v1, Ls/w;->h:Ls/w;

    if-ne v2, v1, :cond_33

    .line 97
    new-array v0, v7, [I

    fill-array-data v0, :array_74

    .line 143
    :goto_29
    iget-object v1, p0, Lk/M;->e:Ljava/util/Random;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_1f

    .line 104
    :cond_33
    sget-object v1, Ls/w;->k:Ls/w;

    if-ne v2, v1, :cond_3d

    .line 105
    new-array v0, v5, [I

    fill-array-data v0, :array_82

    goto :goto_29

    .line 109
    :cond_3d
    sget-object v1, Ls/w;->j:Ls/w;

    if-ne v2, v1, :cond_47

    .line 110
    new-array v0, v7, [I

    fill-array-data v0, :array_8a

    goto :goto_29

    .line 117
    :cond_47
    sget-object v1, Ls/w;->l:Ls/w;

    if-ne v2, v1, :cond_51

    .line 118
    new-array v0, v5, [I

    fill-array-data v0, :array_98

    goto :goto_29

    .line 122
    :cond_51
    sget-object v1, Ls/w;->i:Ls/w;

    if-ne v2, v1, :cond_5b

    .line 123
    new-array v0, v6, [I

    fill-array-data v0, :array_a0

    goto :goto_29

    .line 129
    :cond_5b
    sget-object v1, Ls/w;->f:Ls/w;

    if-ne v2, v1, :cond_66

    .line 130
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_ac

    goto :goto_29

    .line 135
    :cond_66
    sget-object v1, Ls/w;->g:Ls/w;

    if-ne v2, v1, :cond_6f

    .line 136
    new-array v0, v0, [I

    aput v6, v0, v4

    goto :goto_29

    .line 140
    :cond_6f
    new-array v0, v0, [I

    aput v4, v0, v4

    goto :goto_29

    .line 97
    :array_74
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 105
    :array_82
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 110
    :array_8a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
    .end array-data

    .line 118
    :array_98
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data

    .line 123
    :array_a0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data

    .line 130
    :array_ac
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic a(Lk/M;)I
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lk/M;->a()I

    move-result v0

    return v0
.end method

.method private a(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    packed-switch p1, :pswitch_data_4e

    .line 176
    :goto_5
    return-void

    .line 153
    :pswitch_6
    iget-object v0, p0, Lk/M;->b:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->h()V

    goto :goto_5

    .line 156
    :pswitch_c
    iget-object v0, p0, Lk/M;->b:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->e()V

    goto :goto_5

    .line 159
    :pswitch_12
    iget-boolean v2, p0, Lk/M;->g:Z

    if-nez v2, :cond_20

    :goto_16
    iput-boolean v0, p0, Lk/M;->g:Z

    .line 160
    iget-object v0, p0, Lk/M;->b:Lcom/google/android/maps/driveabout/app/dD;

    iget-boolean v1, p0, Lk/M;->g:Z

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->c(Z)V

    goto :goto_5

    :cond_20
    move v0, v1

    .line 159
    goto :goto_16

    .line 163
    :pswitch_22
    iget-object v0, p0, Lk/M;->b:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->j()V

    goto :goto_5

    .line 166
    :pswitch_28
    iget-object v2, p0, Lk/M;->c:Ls/n;

    invoke-virtual {v2}, Ls/n;->g()Ls/q;

    move-result-object v2

    iget-object v3, p0, Lk/M;->c:Ls/n;

    sget-object v4, Ls/w;->k:Ls/w;

    invoke-virtual {v3, v4}, Ls/n;->b(Ls/w;)Z

    move-result v3

    if-nez v3, :cond_3c

    :goto_38
    invoke-virtual {v2, v0}, Ls/q;->d(Z)V

    goto :goto_5

    :cond_3c
    move v0, v1

    goto :goto_38

    .line 170
    :pswitch_3e
    iget-object v0, p0, Lk/M;->b:Lcom/google/android/maps/driveabout/app/dD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/dD;->f()V

    goto :goto_5

    .line 173
    :pswitch_44
    iget-object v0, p0, Lk/M;->c:Ls/n;

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    invoke-virtual {v0}, Ls/q;->y()V

    goto :goto_5

    .line 151
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

.method static synthetic a(Lk/M;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lk/M;->a(I)V

    return-void
.end method

.method static synthetic b(Lk/M;)Ljava/lang/Runnable;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lk/M;->d:Ljava/lang/Runnable;

    return-object v0
.end method
