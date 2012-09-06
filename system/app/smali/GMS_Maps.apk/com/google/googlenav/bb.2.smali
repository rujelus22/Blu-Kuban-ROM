.class public Lcom/google/googlenav/bB;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Ljava/util/List;


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "c"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "v"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/bB;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v0, p0, Lcom/google/googlenav/bB;->c:I

    .line 75
    iput v0, p0, Lcom/google/googlenav/bB;->d:I

    .line 76
    iput v0, p0, Lcom/google/googlenav/bB;->f:I

    .line 77
    iput v0, p0, Lcom/google/googlenav/bB;->g:I

    .line 78
    iput v0, p0, Lcom/google/googlenav/bB;->e:I

    .line 79
    iput v0, p0, Lcom/google/googlenav/bB;->h:I

    .line 80
    iput v0, p0, Lcom/google/googlenav/bB;->i:I

    .line 81
    iput v0, p0, Lcom/google/googlenav/bB;->j:I

    .line 83
    iput-object p1, p0, Lcom/google/googlenav/bB;->k:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public static declared-synchronized a(B)Lcom/google/googlenav/bB;
    .registers 3
    .parameter

    .prologue
    .line 102
    const-class v1, Lcom/google/googlenav/bB;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/googlenav/bB;->b:Ljava/util/List;

    if-nez v0, :cond_d

    .line 103
    invoke-static {}, Lcom/google/googlenav/bB;->f()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/bB;->b:Ljava/util/List;

    .line 105
    :cond_d
    sget-object v0, Lcom/google/googlenav/bB;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_21

    move-result v0

    if-lt p0, v0, :cond_18

    .line 106
    const/4 v0, 0x0

    .line 108
    :goto_16
    monitor-exit v1

    return-object v0

    :cond_18
    :try_start_18
    sget-object v0, Lcom/google/googlenav/bB;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bB;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_21

    goto :goto_16

    .line 102
    :catchall_21
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Z)V
    .registers 7
    .parameter

    .prologue
    .line 231
    monitor-enter p0

    .line 232
    :try_start_1
    iget v0, p0, Lcom/google/googlenav/bB;->f:I

    .line 233
    iget v1, p0, Lcom/google/googlenav/bB;->g:I

    .line 234
    iget v2, p0, Lcom/google/googlenav/bB;->h:I

    .line 237
    add-int v3, v0, v1

    const/16 v4, 0x32

    if-gt v3, v4, :cond_15

    add-int v3, v0, v1

    if-lez v3, :cond_13

    if-nez p1, :cond_15

    .line 239
    :cond_13
    monitor-exit p0

    .line 273
    :goto_14
    return-void

    .line 242
    :cond_15
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/googlenav/bB;->f:I

    .line 243
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/googlenav/bB;->g:I

    .line 244
    const/4 v3, 0x0

    iput v3, p0, Lcom/google/googlenav/bB;->h:I

    .line 245
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_71

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    if-lez v0, :cond_38

    .line 252
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 257
    :cond_38
    if-lez v1, :cond_4c

    .line 258
    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v0, "m"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 263
    :cond_4c
    if-lez v2, :cond_60

    .line 264
    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v0, "r"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 269
    :cond_60
    const-string v0, "|"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    const/16 v0, 0x16

    iget-object v1, p0, Lcom/google/googlenav/bB;->k:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 245
    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit p0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v0
.end method

.method private static f()Ljava/util/List;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 160
    const-string v1, "CacheHitStats"

    invoke-static {v1}, Lcom/google/googlenav/common/j;->b(Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v2

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    if-eqz v2, :cond_5b

    .line 166
    :try_start_e
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 167
    const/4 v4, 0x2

    if-ne v1, v4, :cond_5b

    move v1, v0

    .line 168
    :goto_16
    sget-object v4, Lcom/google/googlenav/bB;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_5b

    .line 169
    new-instance v4, Lcom/google/googlenav/bB;

    sget-object v5, Lcom/google/googlenav/bB;->a:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v4, v5}, Lcom/google/googlenav/bB;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, v4, Lcom/google/googlenav/bB;->c:I

    .line 171
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, v4, Lcom/google/googlenav/bB;->d:I

    .line 172
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, v4, Lcom/google/googlenav/bB;->i:I

    .line 173
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, v4, Lcom/google/googlenav/bB;->j:I

    .line 174
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    move-result v5

    iput v5, v4, Lcom/google/googlenav/bB;->e:I

    .line 175
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_45} :catch_48

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 178
    :catch_48
    move-exception v1

    .line 179
    const-string v2, "STATS"

    invoke-static {v2, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    const-string v2, "CacheHitStats"

    invoke-interface {v1, v2}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 184
    :cond_5b
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    sget-object v2, Lcom/google/googlenav/bB;->a:[Ljava/lang/String;

    array-length v2, v2

    if-eq v1, v2, :cond_7b

    .line 185
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 186
    :goto_67
    sget-object v1, Lcom/google/googlenav/bB;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_7b

    .line 187
    new-instance v1, Lcom/google/googlenav/bB;

    sget-object v2, Lcom/google/googlenav/bB;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Lcom/google/googlenav/bB;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_67

    .line 191
    :cond_7b
    return-object v3
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_1
    iget v0, p0, Lcom/google/googlenav/bB;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/bB;->e:I

    .line 117
    iget v0, p0, Lcom/google/googlenav/bB;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/bB;->h:I

    .line 118
    monitor-exit p0

    .line 120
    return-void

    .line 118
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 126
    monitor-enter p0

    .line 127
    :try_start_1
    iget v0, p0, Lcom/google/googlenav/bB;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/bB;->c:I

    .line 128
    iget v0, p0, Lcom/google/googlenav/bB;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/bB;->f:I

    .line 129
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/bB;->a(Z)V

    .line 131
    return-void

    .line 129
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 137
    monitor-enter p0

    .line 138
    :try_start_1
    iget v0, p0, Lcom/google/googlenav/bB;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/bB;->d:I

    .line 139
    iget v0, p0, Lcom/google/googlenav/bB;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlenav/bB;->g:I

    .line 140
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/bB;->a(Z)V

    .line 142
    return-void

    .line 140
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public declared-synchronized d()I
    .registers 2

    .prologue
    .line 292
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/bB;->i:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()I
    .registers 2

    .prologue
    .line 296
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/googlenav/bB;->j:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
