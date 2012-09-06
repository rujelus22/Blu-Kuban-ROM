.class public LaT/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final b:Ljava/util/HashSet;

.field private static c:Z

.field private static d:Z

.field private static e:LaT/o;

.field private static f:LaT/k;

.field private static final g:Ljava/lang/Object;


# instance fields
.field a:I

.field private volatile h:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, LaT/k;->b:Ljava/util/HashSet;

    .line 61
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x5b

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x4f

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, LaT/k;->b:Ljava/util/HashSet;

    const/16 v1, 0x76

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    sput-boolean v2, LaT/k;->c:Z

    .line 143
    sput-boolean v2, LaT/k;->d:Z

    .line 149
    const/4 v0, 0x0

    sput-object v0, LaT/k;->e:LaT/o;

    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LaT/k;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput v0, p0, LaT/k;->a:I

    .line 1024
    return-void
.end method

.method static synthetic a(LaT/k;)I
    .registers 2
    .parameter

    .prologue
    .line 38
    iget v0, p0, LaT/k;->h:I

    return v0
.end method

.method public static a()LaT/k;
    .registers 2

    .prologue
    .line 190
    sget-object v1, LaT/k;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_3
    sget-object v0, LaT/k;->f:LaT/k;

    if-nez v0, :cond_e

    .line 192
    new-instance v0, LaT/k;

    invoke-direct {v0}, LaT/k;-><init>()V

    sput-object v0, LaT/k;->f:LaT/k;

    .line 194
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 195
    sget-object v0, LaT/k;->f:LaT/k;

    return-object v0

    .line 194
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 675
    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 676
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 677
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/iz;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 680
    :goto_11
    if-ge v0, v1, :cond_1d

    .line 681
    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 682
    invoke-virtual {v2, v4, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 680
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 686
    :cond_1d
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 688
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v2, v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 691
    :cond_30
    return-object v2
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    .line 513
    array-length v0, p0

    if-nez v0, :cond_6

    .line 514
    const-string v0, ""

    .line 529
    :goto_5
    return-object v0

    .line 517
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const/4 v0, 0x0

    :goto_11
    array-length v2, p0

    if-ge v0, v2, :cond_31

    .line 520
    aget-object v2, p0, v0

    if-eqz v2, :cond_2e

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 523
    const-string v3, "|"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    .line 525
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 526
    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 529
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static a(I)V
    .registers 3
    .parameter

    .prologue
    .line 232
    const-string v0, ""

    const-string v1, ""

    invoke-static {p0, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 236
    const-string v0, ""

    invoke-static {p0, p1, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    if-nez v0, :cond_7

    .line 246
    :goto_6
    return-void

    .line 244
    :cond_7
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 245
    invoke-static {p0, p1, p2, v0, v1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_6
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;J)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    const/4 v3, 0x0

    const/4 v6, 0x0

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p3

    invoke-static/range {v0 .. v6}, LaT/k;->b(ILjava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;JZ)V

    .line 288
    return-void
.end method

.method static synthetic a(ILjava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;JZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-static/range {p0 .. p6}, LaT/k;->c(ILjava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;JZ)V

    return-void
.end method

.method static synthetic a(LaT/k;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, LaT/k;->b(Z)V

    return-void
.end method

.method public static declared-synchronized a(LaT/o;)V
    .registers 3
    .parameter

    .prologue
    .line 211
    const-class v1, LaT/k;

    monitor-enter v1

    :try_start_3
    sput-object p0, LaT/k;->e:LaT/o;

    .line 212
    if-eqz p0, :cond_c

    const/4 v0, 0x1

    :goto_8
    sput-boolean v0, LaT/k;->d:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 213
    monitor-exit v1

    return-void

    .line 212
    :cond_c
    const/4 v0, 0x0

    goto :goto_8

    .line 211
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter

    .prologue
    .line 249
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    if-nez v0, :cond_7

    .line 256
    :goto_6
    return-void

    .line 253
    :cond_7
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v4

    .line 254
    const/16 v0, 0x49

    const-string v1, ""

    const-string v2, ""

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v0 .. v6}, LaT/k;->b(ILjava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;JZ)V

    goto :goto_6
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 431
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_b

    .line 432
    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_b
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 435
    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 437
    const-string v0, "|"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 264
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 265
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 266
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 267
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public static a(Ljava/lang/String;DLjava/lang/StringBuilder;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 501
    invoke-static {p0}, LaT/k;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, LaT/k;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 502
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 493
    invoke-static {p0}, LaT/k;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, LaT/k;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 494
    return-void
.end method

.method public static a(Ljava/lang/String;JLjava/lang/StringBuilder;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 497
    invoke-static {p0}, LaT/k;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, LaT/k;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 498
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 275
    const/16 v0, 0x4e

    invoke-static {v0, p0, p1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 471
    invoke-static {p0}, LaT/k;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, LaT/k;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v1, p2}, LaT/k;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 472
    return-void
.end method

.method private static a(J)Z
    .registers 6
    .parameter

    .prologue
    .line 745
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 746
    sub-long/2addr v0, p0

    const-wide v2, 0x9a7ec800L

    cmp-long v0, v0, v2

    if-lez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static declared-synchronized b()LaT/o;
    .registers 2

    .prologue
    .line 216
    const-class v0, LaT/k;

    monitor-enter v0

    :try_start_3
    sget-object v1, LaT/k;->e:LaT/o;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4
    .parameter

    .prologue
    .line 445
    if-nez p0, :cond_4

    .line 446
    const/4 v0, 0x0

    .line 451
    :goto_3
    return-object v0

    .line 448
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 449
    const-string v1, "|"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    .line 450
    const-string v1, "="

    const-string v2, ""

    invoke-static {v1, v2, v0}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    goto :goto_3
.end method

.method public static b(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 299
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    if-nez v0, :cond_7

    .line 305
    :goto_6
    return-void

    .line 303
    :cond_7
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v4

    .line 304
    const/4 v3, 0x0

    const/4 v6, 0x1

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, LaT/k;->b(ILjava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;JZ)V

    goto :goto_6
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;JZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    invoke-static {}, LaT/k;->i()Z

    move-result v0

    if-nez v0, :cond_7

    .line 347
    :goto_6
    return-void

    .line 333
    :cond_7
    invoke-static {}, Lcom/google/googlenav/common/c;->b()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 337
    invoke-static/range {p0 .. p6}, LaT/k;->c(ILjava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;JZ)V

    goto :goto_6

    .line 340
    :cond_11
    new-instance v0, LaT/l;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move v8, p6

    invoke-direct/range {v0 .. v8}, LaT/l;-><init>(LY/c;ILjava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;JZ)V

    invoke-virtual {v0}, LaT/l;->g()V

    goto :goto_6
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    if-nez p1, :cond_b

    .line 481
    const/4 v0, 0x0

    .line 489
    :goto_3
    invoke-static {p0}, LaT/k;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v0, p2}, LaT/k;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 490
    return-void

    .line 483
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 485
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    :cond_21
    const-string v1, "|"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    goto :goto_3
.end method

.method private b(Z)V
    .registers 3
    .parameter

    .prologue
    .line 566
    sget-object v0, LaT/k;->e:LaT/o;

    invoke-interface {v0}, LaT/o;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 567
    if-eqz v0, :cond_b

    .line 568
    invoke-virtual {p0, p1, v0}, LaT/k;->a(ZLcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 570
    :cond_b
    return-void
.end method

.method static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[B
    .registers 14
    .parameter

    .prologue
    .line 601
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    .line 602
    new-instance v7, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/iz;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 605
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 606
    const/4 v0, 0x3

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v7, v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 612
    :cond_1c
    const-wide/16 v1, 0x0

    .line 615
    const/4 v0, 0x0

    move v5, v0

    :goto_20
    if-ge v5, v6, :cond_97

    .line 616
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 617
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v3

    if-nez v3, :cond_66

    .line 619
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 620
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 621
    const-string v2, "Event log contains event with no timestamp at index "

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    move-result-object v2

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 625
    :try_start_4c
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toTextFormat(Ljava/io/Writer;)V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_57

    .line 634
    :goto_4f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Event contains no timestamp"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :catch_57
    move-exception v0

    .line 627
    const-string v2, "[Error textFormatting event]: "

    invoke-virtual {v1, v2}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    .line 628
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 629
    invoke-virtual {v0, v2}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_4f

    .line 638
    :cond_66
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    .line 639
    sub-long v1, v3, v1

    .line 643
    if-lez v5, :cond_8c

    const-wide/16 v8, 0x0

    cmp-long v8, v1, v8

    if-ltz v8, :cond_8c

    const-wide/32 v8, 0x63ff9c

    cmp-long v8, v1, v8

    if-gtz v8, :cond_8c

    .line 646
    invoke-virtual {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->clone()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 647
    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    .line 648
    const/4 v8, 0x2

    const-wide/16 v9, 0x64

    div-long/2addr v1, v9

    invoke-virtual {v0, v8, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 650
    :cond_8c
    const/4 v1, 0x2

    invoke-virtual {v7, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    move-wide v0, v3

    .line 615
    :goto_91
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-wide v11, v0

    move-wide v1, v11

    goto :goto_20

    .line 652
    :cond_97
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 653
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 655
    :try_start_a1
    invoke-virtual {v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v2

    .line 657
    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 658
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_ac} :catch_b1

    .line 662
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_b0
    return-object v0

    .line 659
    :catch_b1
    move-exception v0

    .line 660
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    goto :goto_b0

    :cond_ba
    move-wide v0, v1

    goto :goto_91
.end method

.method public static c()I
    .registers 1

    .prologue
    .line 220
    const/16 v0, 0x7d

    return v0
.end method

.method static c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 704
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/iz;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 705
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 706
    invoke-virtual {p0, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 707
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 708
    invoke-virtual {v1, v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 705
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 712
    :cond_21
    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 714
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v5, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 717
    :cond_34
    return-object v1
.end method

.method private static declared-synchronized c(ILjava/lang/String;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;JZ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 383
    const-class v1, LaT/k;

    monitor-enter v1

    :try_start_4
    sget-object v0, LaT/k;->e:LaT/o;

    invoke-interface {v0}, LaT/o;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 388
    if-nez v0, :cond_15

    .line 391
    invoke-static {}, LaT/k;->k()V

    .line 394
    sget-object v0, LaT/k;->e:LaT/o;

    invoke-interface {v0}, LaT/o;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 398
    :cond_15
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/iz;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 399
    const/4 v3, 0x1

    invoke-virtual {v2, v3, p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 400
    const/4 v3, 0x7

    invoke-virtual {v2, v3, p4, p5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 401
    const/4 v3, 0x3

    invoke-virtual {v2, v3, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 402
    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 403
    const/4 v3, 0x6

    invoke-virtual {v2, v3, p6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 404
    if-eqz p3, :cond_36

    .line 405
    const/4 v3, 0x5

    invoke-virtual {v2, v3, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 407
    :cond_36
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 408
    sget-object v2, LaT/k;->e:LaT/o;

    invoke-interface {v2, v0}, LaT/o;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 410
    invoke-virtual {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v0

    .line 411
    const/16 v2, 0x4b0

    if-le v0, v2, :cond_5e

    .line 418
    invoke-static {}, LaT/k;->a()LaT/k;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LaT/k;->a(Z)V

    .line 422
    invoke-static {}, LaT/k;->a()LaT/k;

    move-result-object v0

    iget v0, v0, LaT/k;->a:I

    if-le v0, v4, :cond_5e

    .line 423
    invoke-static {}, LaT/k;->a()LaT/k;

    move-result-object v0

    invoke-direct {v0}, LaT/k;->j()V
    :try_end_5e
    .catchall {:try_start_4 .. :try_end_5e} :catchall_60

    .line 427
    :cond_5e
    monitor-exit v1

    return-void

    .line 383
    :catchall_60
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 729
    invoke-virtual {p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v0

    add-int/lit16 v1, v0, -0x320

    .line 730
    if-lez v1, :cond_23

    .line 731
    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    if-ge v0, v2, :cond_23

    .line 732
    invoke-virtual {p0, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 736
    if-gtz v1, :cond_24

    .line 737
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, LaT/k;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object p0

    .line 741
    :cond_23
    return-object p0

    .line 731
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static declared-synchronized d()V
    .registers 2

    .prologue
    .line 536
    const-class v1, LaT/k;

    monitor-enter v1

    :try_start_3
    invoke-static {}, LaT/k;->i()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_11

    move-result v0

    if-nez v0, :cond_b

    .line 540
    :goto_9
    monitor-exit v1

    return-void

    .line 539
    :cond_b
    :try_start_b
    sget-object v0, LaT/k;->e:LaT/o;

    invoke-interface {v0}, LaT/o;->c()V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_11

    goto :goto_9

    .line 536
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 9
    .parameter

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 754
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/iz;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 755
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    if-ge v0, v2, :cond_2b

    .line 756
    invoke-virtual {p0, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 761
    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, LaT/k;->a(J)Z

    move-result v3

    if-nez v3, :cond_28

    .line 763
    invoke-virtual {v1, v5, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 755
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 767
    :cond_2b
    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 769
    invoke-virtual {p0, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v6, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 772
    :cond_3e
    return-object v1
.end method

.method static synthetic f()Z
    .registers 1

    .prologue
    .line 38
    sget-boolean v0, LaT/k;->c:Z

    return v0
.end method

.method static synthetic g()Z
    .registers 1

    .prologue
    .line 38
    invoke-static {}, LaT/k;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic h()LaT/o;
    .registers 1

    .prologue
    .line 38
    sget-object v0, LaT/k;->e:LaT/o;

    return-object v0
.end method

.method private static i()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 178
    sget-boolean v1, LaT/k;->d:Z

    if-nez v1, :cond_6

    .line 186
    :goto_5
    return v0

    .line 181
    :cond_6
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 186
    :cond_c
    const/4 v0, 0x1

    goto :goto_5

    .line 183
    :cond_e
    sget-object v1, LaT/k;->e:LaT/o;

    if-nez v1, :cond_c

    goto :goto_5
.end method

.method private j()V
    .registers 5

    .prologue
    .line 352
    sget-boolean v0, LaT/k;->c:Z

    if-eqz v0, :cond_5

    .line 376
    :goto_4
    return-void

    .line 355
    :cond_5
    const-class v1, LaT/k;

    monitor-enter v1

    .line 356
    :try_start_8
    invoke-static {}, LaT/k;->i()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 357
    sget-object v0, LaT/k;->e:LaT/o;

    invoke-interface {v0}, LaT/o;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 360
    invoke-static {v0}, LaT/k;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 361
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 364
    invoke-static {v0}, LaT/k;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 368
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 369
    iget v3, p0, LaT/k;->h:I

    sub-int v2, v3, v2

    iput v2, p0, LaT/k;->h:I

    .line 370
    iget v2, p0, LaT/k;->h:I

    if-gez v2, :cond_34

    .line 371
    const/4 v2, 0x0

    iput v2, p0, LaT/k;->h:I

    .line 373
    :cond_34
    sget-object v2, LaT/k;->e:LaT/o;

    invoke-interface {v2, v0}, LaT/o;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 375
    :cond_39
    monitor-exit v1

    goto :goto_4

    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method private static declared-synchronized k()V
    .registers 3

    .prologue
    .line 1006
    const-class v1, LaT/k;

    monitor-enter v1

    :try_start_3
    sget-object v0, LaT/k;->e:LaT/o;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_16

    if-nez v0, :cond_9

    .line 1011
    :goto_7
    monitor-exit v1

    return-void

    .line 1009
    :cond_9
    :try_start_9
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/iz;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1010
    sget-object v2, LaT/k;->e:LaT/o;

    invoke-interface {v2, v0}, LaT/o;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_16

    goto :goto_7

    .line 1006
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Z)V
    .registers 5
    .parameter

    .prologue
    .line 553
    const-class v1, LaT/k;

    monitor-enter v1

    .line 554
    :try_start_3
    invoke-static {}, LaT/k;->i()Z

    move-result v0

    if-nez v0, :cond_b

    .line 555
    monitor-exit v1

    .line 563
    :goto_a
    return-void

    .line 557
    :cond_b
    iget v0, p0, LaT/k;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LaT/k;->a:I

    .line 559
    iget v0, p0, LaT/k;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_19

    .line 560
    invoke-direct {p0, p1}, LaT/k;->b(Z)V

    .line 562
    :cond_19
    monitor-exit v1

    goto :goto_a

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method protected a(ZLcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 780
    const-class v8, LaT/k;

    monitor-enter v8

    .line 781
    :try_start_3
    invoke-static {}, LaT/k;->i()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-nez v0, :cond_15

    .line 782
    :cond_10
    const/4 v0, 0x0

    iput v0, p0, LaT/k;->a:I

    .line 783
    monitor-exit v8

    .line 853
    :goto_14
    return-void

    .line 787
    :cond_15
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    .line 788
    sget-object v2, LaT/k;->b:Ljava/util/HashSet;

    invoke-static {p2, v2}, LaT/p;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/Set;)Z

    move-result v6

    .line 790
    const/4 v2, 0x3

    invoke-virtual {p2, v2, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 791
    invoke-static {p2}, LaT/k;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 792
    invoke-static {v0}, LaT/k;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[B

    move-result-object v3

    .line 795
    sget-boolean v1, LaT/k;->c:Z

    if-nez v1, :cond_45

    .line 796
    invoke-static {v0}, LaT/k;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 797
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-nez v1, :cond_67

    .line 798
    invoke-static {}, LaT/k;->k()V

    .line 803
    :cond_45
    :goto_45
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    iput v0, p0, LaT/k;->h:I

    .line 804
    new-instance v0, LaT/n;

    invoke-static {}, LaT/k;->c()I

    move-result v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v7}, LaT/n;-><init>(LaT/k;I[BZZZLjava/lang/Object;)V

    .line 845
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    .line 846
    if-eqz v1, :cond_62

    .line 847
    invoke-virtual {v1, v0}, Lac/h;->c(Lac/g;)V

    .line 852
    :cond_62
    monitor-exit v8

    goto :goto_14

    :catchall_64
    move-exception v0

    monitor-exit v8
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    throw v0

    .line 800
    :cond_67
    :try_start_67
    sget-object v1, LaT/k;->e:LaT/o;

    invoke-static {v0}, LaT/k;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-interface {v1, v2}, LaT/o;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_64

    goto :goto_45
.end method

.method public e()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 573
    const-class v1, LaT/k;

    monitor-enter v1

    .line 574
    :try_start_4
    iget v0, p0, LaT/k;->a:I

    if-le v0, v2, :cond_19

    .line 579
    const/4 v0, 0x1

    iput v0, p0, LaT/k;->a:I

    .line 581
    new-instance v0, LaT/m;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v2

    invoke-direct {v0, p0, v2}, LaT/m;-><init>(LaT/k;LY/c;)V

    invoke-virtual {v0}, LaT/m;->g()V

    .line 589
    :goto_17
    monitor-exit v1

    .line 590
    return-void

    .line 587
    :cond_19
    const/4 v0, 0x0

    iput v0, p0, LaT/k;->a:I

    goto :goto_17

    .line 589
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_1d

    throw v0
.end method
