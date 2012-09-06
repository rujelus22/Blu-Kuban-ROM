.class public Laz/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/android/x;


# instance fields
.field private a:Laz/j;

.field private b:Ljava/util/TimerTask;

.field private final c:Ljava/lang/Object;

.field private d:J

.field private e:Lat/B;

.field private f:Lat/B;

.field private g:F

.field private h:Z

.field private volatile i:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Laz/h;->c:Ljava/lang/Object;

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laz/h;->d:J

    .line 42
    iput-object v2, p0, Laz/h;->e:Lat/B;

    .line 43
    iput-object v2, p0, Laz/h;->f:Lat/B;

    .line 44
    const/high16 v0, -0x4080

    iput v0, p0, Laz/h;->g:F

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Laz/h;->h:Z

    .line 166
    return-void
.end method

.method static synthetic a(Laz/h;)J
    .registers 3
    .parameter

    .prologue
    .line 31
    iget-wide v0, p0, Laz/h;->d:J

    return-wide v0
.end method

.method static synthetic a(Laz/h;Laz/j;)Laz/j;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Laz/h;->a:Laz/j;

    return-object p1
.end method

.method static synthetic b(Laz/h;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Laz/h;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Laz/h;)I
    .registers 2
    .parameter

    .prologue
    .line 31
    iget v0, p0, Laz/h;->i:I

    return v0
.end method


# virtual methods
.method a()V
    .registers 7

    .prologue
    .line 51
    iget-object v0, p0, Laz/h;->b:Ljava/util/TimerTask;

    .line 52
    if-eqz v0, :cond_7

    .line 53
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 55
    :cond_7
    const/4 v0, 0x0

    iput-object v0, p0, Laz/h;->b:Ljava/util/TimerTask;

    .line 56
    iget-object v1, p0, Laz/h;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_d
    iget-wide v2, p0, Laz/h;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Laz/h;->d:J

    .line 58
    monitor-exit v1

    .line 59
    return-void

    .line 58
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    throw v0
.end method

.method public declared-synchronized a(Lat/B;Lat/B;IFLcom/google/googlenav/ui/android/w;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 67
    monitor-enter p0

    :try_start_2
    iget-boolean v0, p0, Laz/h;->h:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_45

    if-nez v0, :cond_8

    .line 153
    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    .line 73
    :cond_8
    :try_start_8
    iget v0, p0, Laz/h;->g:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_1e

    iget-object v0, p0, Laz/h;->e:Lat/B;

    invoke-virtual {p1, v0}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Laz/h;->f:Lat/B;

    invoke-virtual {p2, v0}, Lat/B;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 77
    :cond_1e
    iput p4, p0, Laz/h;->g:F

    .line 78
    iput-object p1, p0, Laz/h;->e:Lat/B;

    .line 79
    iput-object p2, p0, Laz/h;->f:Lat/B;

    .line 82
    invoke-virtual {p0}, Laz/h;->a()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p5, Lcom/google/googlenav/ui/android/w;->i:Z

    .line 88
    const/16 v0, 0x10

    if-le p3, v0, :cond_48

    .line 89
    const/16 v0, 0x352

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p5, Lcom/google/googlenav/ui/android/w;->e:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/google/googlenav/ui/android/w;->d:[F

    iput-object v0, p5, Lcom/google/googlenav/ui/android/w;->g:[F

    .line 92
    const/4 v0, -0x1

    iput v0, p5, Lcom/google/googlenav/ui/android/w;->f:I

    .line 93
    sget-object v0, Lcom/google/googlenav/ui/android/w;->a:[F

    iput-object v0, p5, Lcom/google/googlenav/ui/android/w;->h:[F

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p5, Lcom/google/googlenav/ui/android/w;->j:Z
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_45

    goto :goto_6

    .line 67
    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :cond_48
    :try_start_48
    new-instance v3, Lcom/google/googlenav/prefetch/android/E;

    invoke-direct {v3, p1, p2}, Lcom/google/googlenav/prefetch/android/E;-><init>(Lat/B;Lat/B;)V

    .line 98
    invoke-virtual {v3}, Lcom/google/googlenav/prefetch/android/E;->i()I

    move-result v0

    .line 102
    const/16 v1, 0x1770

    if-le v0, v1, :cond_6c

    .line 103
    const/16 v0, 0x351

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p5, Lcom/google/googlenav/ui/android/w;->e:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/google/googlenav/ui/android/w;->d:[F

    iput-object v0, p5, Lcom/google/googlenav/ui/android/w;->g:[F

    .line 106
    const/4 v0, -0x1

    iput v0, p5, Lcom/google/googlenav/ui/android/w;->f:I

    .line 107
    sget-object v0, Lcom/google/googlenav/ui/android/w;->a:[F

    iput-object v0, p5, Lcom/google/googlenav/ui/android/w;->h:[F

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p5, Lcom/google/googlenav/ui/android/w;->j:Z

    goto :goto_6

    .line 111
    :cond_6c
    mul-int/lit8 v0, v0, 0xf

    div-int/lit16 v0, v0, 0x400

    iput v0, p0, Laz/h;->i:I

    .line 115
    const/16 v0, 0x343

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p5, Lcom/google/googlenav/ui/android/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a7

    .line 116
    sget-object v0, Lcom/google/googlenav/ui/android/w;->b:[F

    iput-object v0, p5, Lcom/google/googlenav/ui/android/w;->h:[F

    .line 117
    sget-object v0, Lcom/google/googlenav/ui/android/w;->c:[F

    iput-object v0, p5, Lcom/google/googlenav/ui/android/w;->g:[F

    .line 119
    const/high16 v0, -0x100

    iput v0, p5, Lcom/google/googlenav/ui/android/w;->f:I

    .line 120
    const/16 v0, 0x33e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v0, p0, Laz/h;->i:I

    if-ge v0, v5, :cond_c8

    const-string v0, "<1"

    :goto_9c
    aput-object v0, v2, v4

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p5, Lcom/google/googlenav/ui/android/w;->e:Ljava/lang/String;

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p5, Lcom/google/googlenav/ui/android/w;->j:Z

    .line 125
    :cond_a7
    iget-object v7, p0, Laz/h;->c:Ljava/lang/Object;

    monitor-enter v7
    :try_end_aa
    .catchall {:try_start_48 .. :try_end_aa} :catchall_45

    .line 126
    :try_start_aa
    iget-wide v4, p0, Laz/h;->d:J

    .line 127
    new-instance v0, Laz/i;

    move-object v1, p0

    move v2, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Laz/i;-><init>(Laz/h;FLcom/google/googlenav/prefetch/android/E;JLcom/google/googlenav/ui/android/w;)V

    iput-object v0, p0, Laz/h;->b:Ljava/util/TimerTask;

    .line 149
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iget-object v1, p0, Laz/h;->b:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 150
    monitor-exit v7

    goto/16 :goto_6

    :catchall_c5
    move-exception v0

    monitor-exit v7
    :try_end_c7
    .catchall {:try_start_aa .. :try_end_c7} :catchall_c5

    :try_start_c7
    throw v0

    .line 120
    :cond_c8
    iget v0, p0, Laz/h;->i:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_cd
    .catchall {:try_start_c7 .. :try_end_cd} :catchall_45

    move-result-object v0

    goto :goto_9c
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized c()V
    .registers 2

    .prologue
    .line 162
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Laz/h;->h:Z

    .line 163
    invoke-virtual {p0}, Laz/h;->a()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 164
    monitor-exit p0

    return-void

    .line 162
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
