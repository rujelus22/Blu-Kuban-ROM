.class public LaI/i;
.super LaI/f;
.source "SourceFile"


# instance fields
.field private final b:Ljava/util/LinkedList;

.field private c:LaI/k;

.field private final d:LaI/j;

.field private volatile e:I

.field private f:J

.field private final g:LaI/w;


# direct methods
.method public constructor <init>(LaI/w;)V
    .registers 4
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, LaI/f;-><init>()V

    .line 73
    const-wide/16 v0, 0x64

    iput-wide v0, p0, LaI/i;->f:J

    .line 95
    iput-object p1, p0, LaI/i;->g:LaI/w;

    .line 96
    new-instance v0, LaI/j;

    invoke-direct {v0, p0}, LaI/j;-><init>(LaI/i;)V

    iput-object v0, p0, LaI/i;->d:LaI/j;

    .line 97
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LaI/i;->b:Ljava/util/LinkedList;

    .line 98
    const/4 v0, 0x0

    iput v0, p0, LaI/i;->e:I

    .line 99
    return-void
.end method

.method static synthetic a(LaI/i;)LaI/k;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, LaI/i;->c:LaI/k;

    return-object v0
.end method

.method static synthetic a(LaI/i;LaI/k;)LaI/k;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, LaI/i;->c:LaI/k;

    return-object p1
.end method

.method static synthetic b(LaI/i;)Ljava/util/LinkedList;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, LaI/i;->b:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic c(LaI/i;)J
    .registers 3
    .parameter

    .prologue
    .line 51
    iget-wide v0, p0, LaI/i;->f:J

    return-wide v0
.end method

.method static synthetic d(LaI/i;)I
    .registers 2
    .parameter

    .prologue
    .line 51
    iget v0, p0, LaI/i;->e:I

    return v0
.end method

.method static synthetic e(LaI/i;)I
    .registers 2
    .parameter

    .prologue
    .line 51
    invoke-super {p0}, LaI/f;->i()I

    move-result v0

    return v0
.end method

.method static synthetic f(LaI/i;)LaI/w;
    .registers 2
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, LaI/i;->g:LaI/w;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 156
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 v0, 0x2

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x1

    goto :goto_4
.end method

.method public a(LaI/s;)V
    .registers 8
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, LaI/i;->a:Z

    .line 125
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v1

    .line 126
    monitor-enter p0

    .line 129
    :try_start_8
    new-instance v0, LaI/k;

    invoke-virtual {v1}, LaI/o;->e()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v1}, LaI/o;->f()Lat/B;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, LaI/k;-><init>(LaI/i;LaI/s;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lat/B;I)V

    iput-object v0, p0, LaI/i;->c:LaI/k;

    .line 131
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2f

    .line 132
    iget-object v0, p0, LaI/i;->d:LaI/j;

    invoke-virtual {v0}, LaI/j;->a()V

    .line 139
    invoke-static {p1}, LaI/i;->e(LaI/s;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 142
    new-instance v0, LaI/z;

    invoke-direct {v0, p1}, LaI/z;-><init>(LaI/s;)V

    invoke-virtual {p0, v0}, LaI/i;->a(LaI/z;)V

    .line 144
    :cond_2e
    return-void

    .line 131
    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    const-string v0, "r"

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public c(I)V
    .registers 2
    .parameter

    .prologue
    .line 106
    iput p1, p0, LaI/i;->e:I

    .line 107
    return-void
.end method

.method public d()[I
    .registers 2

    .prologue
    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public declared-synchronized f()Z
    .registers 2

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, LaI/f;->f()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, LaI/i;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, LaI/i;->c:LaI/k;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_18

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_14
    monitor-exit p0

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_14

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method
