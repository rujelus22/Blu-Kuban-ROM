.class public Lo/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lo/c;

.field private static b:Lac/p;

.field private static c:Lac/g;

.field private static final d:Ljava/util/ArrayList;


# instance fields
.field private final e:Ljava/util/Locale;

.field private final f:[Lo/e;

.field private final g:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lo/c;->d:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;[Lo/e;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lo/c;->e:Ljava/util/Locale;

    .line 86
    iput-object p2, p0, Lo/c;->f:[Lo/e;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/c;->g:Ljava/util/HashMap;

    .line 89
    array-length v1, p2

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v1, :cond_24

    aget-object v2, p2, v0

    .line 90
    iget-object v3, p0, Lo/c;->g:Ljava/util/HashMap;

    invoke-static {v2}, Lo/e;->a(Lo/e;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 92
    :cond_24
    return-void
.end method

.method static a(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DA_DirOpt_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lo/c;
    .registers 1

    .prologue
    .line 141
    sget-object v0, Lo/c;->a:Lo/c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 127
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lo/c;->a:Lo/c;

    iget-object v1, v1, Lo/c;->e:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 131
    :goto_e
    return-void

    .line 130
    :cond_f
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lo/c;->a(Landroid/content/Context;Z)V

    goto :goto_e
.end method

.method public static a(Landroid/content/Context;Lac/p;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 100
    sput-object p1, Lo/c;->b:Lac/p;

    .line 104
    new-instance v0, Lo/c;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lo/e;

    invoke-direct {v0, v1, v2}, Lo/c;-><init>(Ljava/util/Locale;[Lo/e;)V

    sput-object v0, Lo/c;->a:Lo/c;

    .line 105
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lo/c;->a(Landroid/content/Context;Z)V

    .line 106
    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 315
    const-class v1, Lo/c;

    monitor-enter v1

    if-eqz p1, :cond_18

    .line 317
    :try_start_5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 318
    invoke-static {v0}, Lo/c;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 319
    sget-object v3, Lcom/google/wireless/googlenav/proto/j2me/aY;->s:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {p0, v2, v3}, Lh/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBufType;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_2d

    move-result-object v2

    .line 321
    if-eqz v2, :cond_18

    .line 323
    :try_start_15
    invoke-static {v0, v2}, Lo/c;->b(Ljava/util/Locale;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_2d
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_18} :catch_30

    .line 332
    :cond_18
    :goto_18
    :try_start_18
    sget-object v0, Lo/c;->c:Lac/g;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_2d

    if-eqz v0, :cond_1e

    .line 337
    :goto_1c
    monitor-exit v1

    return-void

    .line 335
    :cond_1e
    :try_start_1e
    new-instance v0, Lo/d;

    invoke-direct {v0, p0}, Lo/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lo/c;->c:Lac/g;

    .line 336
    sget-object v0, Lo/c;->b:Lac/p;

    sget-object v2, Lo/c;->c:Lac/g;

    invoke-interface {v0, v2}, Lac/p;->c(Lac/g;)V
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2d

    goto :goto_1c

    .line 315
    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0

    .line 324
    :catch_30
    move-exception v0

    goto :goto_18
.end method

.method static synthetic a(Ljava/util/Locale;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-static {p0, p1}, Lo/c;->b(Ljava/util/Locale;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-void
.end method

.method public static declared-synchronized a(Lo/f;)V
    .registers 3
    .parameter

    .prologue
    .line 261
    const-class v1, Lo/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lo/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 262
    sget-object v0, Lo/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 264
    :cond_10
    monitor-exit v1

    return-void

    .line 261
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a([Lo/b;I)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 233
    array-length v3, p0

    move v2, v1

    :goto_4
    if-ge v2, v3, :cond_1a

    aget-object v4, p0, v2

    .line 234
    invoke-virtual {v4}, Lo/b;->b()I

    move-result v5

    if-ne v5, p1, :cond_17

    .line 235
    invoke-virtual {v4}, Lo/b;->c()I

    move-result v2

    if-ne v2, v0, :cond_15

    .line 239
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 235
    goto :goto_14

    .line 233
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_1a
    move v0, v1

    .line 239
    goto :goto_14
.end method

.method private static declared-synchronized b(Ljava/util/Locale;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 346
    const-class v1, Lo/c;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 347
    new-array v3, v2, [Lo/e;

    .line 348
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v2, :cond_1b

    .line 351
    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-static {v4}, Lo/e;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/e;

    move-result-object v4

    aput-object v4, v3, v0

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 356
    :cond_1b
    sget-object v0, Lo/c;->a:Lo/c;

    if-eqz v0, :cond_29

    sget-object v0, Lo/c;->a:Lo/c;

    iget-object v0, v0, Lo/c;->f:[Lo/e;

    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 357
    :cond_29
    new-instance v0, Lo/c;

    invoke-direct {v0, p0, v3}, Lo/c;-><init>(Ljava/util/Locale;[Lo/e;)V

    sput-object v0, Lo/c;->a:Lo/c;

    .line 358
    sget-object v0, Lo/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/f;

    .line 359
    invoke-interface {v0}, Lo/f;->a()V
    :try_end_45
    .catchall {:try_start_4 .. :try_end_45} :catchall_46

    goto :goto_36

    .line 346
    :catchall_46
    move-exception v0

    monitor-exit v1

    throw v0

    .line 362
    :cond_49
    const/4 v0, 0x0

    :try_start_4a
    sput-object v0, Lo/c;->c:Lac/g;
    :try_end_4c
    .catchall {:try_start_4a .. :try_end_4c} :catchall_46

    .line 363
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized b(Lo/f;)V
    .registers 3
    .parameter

    .prologue
    .line 268
    const-class v1, Lo/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lo/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 269
    monitor-exit v1

    return-void

    .line 268
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(I)[Lo/b;
    .registers 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 289
    packed-switch p0, :pswitch_data_1c

    .line 299
    const/4 v0, 0x0

    :goto_5
    return-object v0

    .line 291
    :pswitch_6
    const/4 v0, 0x2

    new-array v0, v0, [Lo/b;

    new-instance v1, Lo/b;

    const/4 v2, 0x4

    invoke-direct {v1, v2, v4}, Lo/b;-><init>(II)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lo/b;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v4}, Lo/b;-><init>(II)V

    aput-object v2, v0, v1

    goto :goto_5

    .line 289
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public static c([Lo/b;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const/4 v0, 0x0

    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_2a

    .line 218
    if-lez v0, :cond_10

    .line 219
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_10
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lo/b;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lo/b;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 225
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(I)Z
    .registers 4
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lo/c;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/e;

    .line 150
    if-eqz v0, :cond_16

    invoke-static {v0}, Lo/e;->b(Lo/e;)I

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method


# virtual methods
.method public a([Lo/b;)I
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 158
    .line 159
    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_1c

    aget-object v3, p1, v1

    .line 160
    iget-object v4, p0, Lo/c;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Lo/b;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 161
    add-int/lit8 v0, v0, 0x1

    .line 159
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 164
    :cond_1c
    return v0
.end method

.method public a(I)Lo/e;
    .registers 4
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lo/c;->g:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/e;

    return-object v0
.end method

.method public a(Landroid/content/Context;[Lo/b;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 248
    invoke-virtual {p0, p2}, Lo/c;->a([Lo/b;)I

    move-result v0

    array-length v1, p2

    if-eq v0, v1, :cond_b

    .line 249
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lo/c;->a(Landroid/content/Context;Z)V

    .line 251
    :cond_b
    return-void
.end method

.method public b([Lo/b;)I
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 171
    .line 172
    array-length v2, p1

    move v1, v0

    :goto_3
    if-ge v1, v2, :cond_16

    aget-object v3, p1, v1

    .line 173
    invoke-virtual {v3}, Lo/b;->b()I

    move-result v3

    invoke-direct {p0, v3}, Lo/c;->c(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 174
    add-int/lit8 v0, v0, 0x1

    .line 172
    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 177
    :cond_16
    return v0
.end method
