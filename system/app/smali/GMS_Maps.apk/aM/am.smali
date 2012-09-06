.class public LaM/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LaB/i;
.implements Lcom/google/googlenav/common/util/n;
.implements Lcom/google/googlenav/layer/l;


# static fields
.field private static final I:I

.field private static final J:I

.field private static final K:I

.field private static final R:I

.field public static a:I

.field public static b:I

.field protected static final j:I

.field private static final t:[I

.field private static final u:[Z

.field private static v:Z

.field private static volatile w:I


# instance fields
.field private A:Z

.field private B:I

.field private C:Ljava/lang/Object;

.field private D:Ljava/lang/String;

.field private final E:Landroid/graphics/Point;

.field private final F:Lcom/google/googlenav/layer/r;

.field private final G:LaM/a;

.field private final H:Ljava/util/Map;

.field private final L:Ljava/util/Vector;

.field private M:Z

.field private N:Lat/B;

.field private O:I

.field private P:Z

.field private Q:Lcom/google/googlenav/offers/j;

.field protected final c:Lcom/google/googlenav/ui/v;

.field protected final d:Lan/h;

.field protected final e:Lat/p;

.field protected final f:Lat/u;

.field protected final g:Lcom/google/googlenav/ui/ac;

.field protected final h:Lat/k;

.field protected final i:Ljava/util/Vector;

.field private final k:Lcom/google/googlenav/friend/J;

.field private final l:Lcom/google/googlenav/friend/p;

.field private final m:Lcom/google/googlenav/friend/ai;

.field private final n:Lcom/google/googlenav/android/Y;

.field private final o:Lcom/google/googlenav/ui/wizard/ju;

.field private final p:Ljava/util/Vector;

.field private final q:Ljava/util/Vector;

.field private final r:Ljava/util/Vector;

.field private s:Z

.field private x:B

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 113
    sput v2, LaM/am;->a:I

    .line 121
    const/16 v0, 0x14

    sput v0, LaM/am;->b:I

    .line 193
    new-array v0, v2, [I

    fill-array-data v0, :array_4a

    sput-object v0, LaM/am;->t:[I

    .line 202
    sget-object v0, LaM/am;->t:[I

    array-length v0, v0

    new-array v0, v0, [Z

    sput-object v0, LaM/am;->u:[Z

    .line 211
    sput-boolean v1, LaM/am;->v:Z

    .line 244
    sput v1, LaM/am;->w:I

    .line 294
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, LaM/am;->I:I

    .line 300
    sget v0, LaM/am;->I:I

    sget v1, LaM/am;->I:I

    mul-int/2addr v0, v1

    sput v0, LaM/am;->J:I

    .line 318
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, LaM/am;->K:I

    .line 325
    sget v0, LaM/am;->K:I

    sget v1, LaM/am;->K:I

    mul-int/2addr v0, v1

    sput v0, LaM/am;->j:I

    .line 371
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    sput v0, LaM/am;->R:I

    return-void

    .line 193
    nop

    :array_4a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lan/h;Lcom/google/googlenav/friend/J;Lcom/google/googlenav/friend/p;Lcom/google/googlenav/friend/ai;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/wizard/ju;Lat/k;Lcom/google/googlenav/layer/r;Lcom/google/googlenav/offers/j;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    .line 155
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaM/am;->p:Ljava/util/Vector;

    .line 166
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    .line 172
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaM/am;->r:Ljava/util/Vector;

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/am;->s:Z

    .line 251
    const/4 v0, -0x1

    iput-byte v0, p0, LaM/am;->x:B

    .line 252
    const/16 v0, -0xa

    iput v0, p0, LaM/am;->y:I

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/am;->z:Z

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/am;->A:Z

    .line 257
    const/4 v0, -0x1

    iput v0, p0, LaM/am;->B:I

    .line 270
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, LaM/am;->E:Landroid/graphics/Point;

    .line 282
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, LaM/am;->H:Ljava/util/Map;

    .line 333
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaM/am;->L:Ljava/util/Vector;

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/am;->M:Z

    .line 356
    const/4 v0, -0x1

    iput v0, p0, LaM/am;->O:I

    .line 433
    iput-object p1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    .line 434
    iput-object p2, p0, LaM/am;->e:Lat/p;

    .line 435
    iput-object p3, p0, LaM/am;->f:Lat/u;

    .line 436
    iput-object p4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    .line 437
    iput-object p5, p0, LaM/am;->d:Lan/h;

    .line 438
    iput-object p6, p0, LaM/am;->k:Lcom/google/googlenav/friend/J;

    .line 439
    iput-object p7, p0, LaM/am;->l:Lcom/google/googlenav/friend/p;

    .line 440
    iput-object p8, p0, LaM/am;->m:Lcom/google/googlenav/friend/ai;

    .line 441
    iput-object p9, p0, LaM/am;->n:Lcom/google/googlenav/android/Y;

    .line 442
    iput-object p10, p0, LaM/am;->o:Lcom/google/googlenav/ui/wizard/ju;

    .line 443
    iput-object p11, p0, LaM/am;->h:Lat/k;

    .line 444
    iput-object p12, p0, LaM/am;->F:Lcom/google/googlenav/layer/r;

    .line 445
    iput-object p13, p0, LaM/am;->Q:Lcom/google/googlenav/offers/j;

    .line 446
    new-instance v0, LaM/a;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/v;->aj()LY/c;

    move-result-object v1

    invoke-direct {v0, v1}, LaM/a;-><init>(LY/c;)V

    iput-object v0, p0, LaM/am;->G:LaM/a;

    .line 447
    return-void
.end method

.method public static X()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 4070
    :goto_2
    sget-object v2, LaM/am;->u:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_11

    .line 4071
    sget-object v2, LaM/am;->u:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_12

    .line 4072
    sget-object v1, LaM/am;->t:[I

    aget v1, v1, v0

    .line 4076
    :cond_11
    return v1

    .line 4070
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static Y()I
    .registers 2

    .prologue
    .line 4098
    sget v0, LaM/am;->w:I

    add-int/lit8 v1, v0, 0x1

    sput v1, LaM/am;->w:I

    return v0
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaM/i;Z)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3208
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 3210
    const/4 v1, 0x2

    invoke-virtual {p2}, LaM/i;->av()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 3211
    const/4 v1, 0x3

    invoke-virtual {p2}, LaM/i;->aO()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/common/util/e;->a(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 3213
    const/4 v1, 0x4

    invoke-virtual {p2}, LaM/i;->ay()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 3214
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 3215
    return-object v0
.end method

.method public static a(IZ)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 4086
    const/4 v0, 0x0

    :goto_1
    sget-object v1, LaM/am;->t:[I

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 4087
    sget-object v1, LaM/am;->t:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_11

    .line 4088
    sget-object v1, LaM/am;->u:[Z

    aput-boolean p1, v1, v0

    .line 4092
    :cond_10
    return-void

    .line 4086
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic a(LaM/am;)V
    .registers 1
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, LaM/am;->ah()V

    return-void
.end method

.method static synthetic a(LaM/am;Ljava/io/DataInput;IZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, LaM/am;->a(Ljava/io/DataInput;IZZ)V

    return-void
.end method

.method private a(LaM/i;)V
    .registers 5
    .parameter

    .prologue
    .line 750
    invoke-virtual {p1}, LaM/i;->aB()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, LaM/i;->aC()Z

    move-result v0

    if-nez v0, :cond_d

    .line 771
    :cond_c
    :goto_c
    return-void

    .line 756
    :cond_d
    iget-object v2, p0, LaM/am;->q:Ljava/util/Vector;

    monitor-enter v2

    .line 758
    :try_start_10
    iget-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 760
    iget-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sget v1, LaM/am;->b:I

    if-le v0, v1, :cond_43

    .line 763
    sget v0, LaM/am;->b:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_25
    iget-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3c

    .line 764
    iget-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 765
    invoke-direct {p0, v0}, LaM/am;->n(LaM/i;)V

    .line 763
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 767
    :cond_3c
    iget-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    sget v1, LaM/am;->b:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 769
    :cond_43
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/am;->A:Z

    .line 770
    monitor-exit v2

    goto :goto_c

    :catchall_48
    move-exception v0

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_10 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method private a(LaM/i;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x43

    .line 4158
    invoke-virtual {p1}, LaM/i;->av()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 4165
    invoke-static {p1}, LaM/am;->p(LaM/i;)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4168
    :goto_14
    invoke-direct {p0}, LaM/am;->ak()V

    .line 4169
    return-void

    .line 4161
    :pswitch_18
    check-cast p1, LaM/y;

    invoke-virtual {p1}, LaM/y;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 4158
    :pswitch_data_26
    .packed-switch 0x6
        :pswitch_18
        :pswitch_18
    .end packed-switch
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 4189
    invoke-static {p1}, LaT/p;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 4190
    invoke-direct {p0}, LaM/am;->ak()V

    .line 4191
    return-void
.end method

.method private a(Ljava/io/DataInput;IZZ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3484
    new-instance v0, LaM/bj;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    sget-object v5, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iget-object v6, p0, LaM/am;->h:Lat/k;

    invoke-static {}, LaM/am;->X()I

    move-result v7

    invoke-direct/range {v0 .. v7}, LaM/bj;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;I)V

    .line 3486
    invoke-virtual {v0, p1}, LaM/bj;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 3487
    invoke-virtual {v0, p2}, LaM/bj;->e(I)V

    .line 3488
    invoke-virtual {v0, p3}, LaM/bj;->h(Z)V

    .line 3489
    if-eqz p4, :cond_3a

    invoke-virtual {v0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->ab()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 3494
    invoke-static {}, Lcom/google/googlenav/actionbar/a;->a()Lcom/google/googlenav/actionbar/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/actionbar/a;->f()Z

    move-result v1

    .line 3495
    const/4 v2, 0x0

    .line 3496
    invoke-virtual {p0, v0, v1, v2}, LaM/am;->a(LaM/i;ZZ)Z

    .line 3504
    :goto_39
    return-void

    .line 3498
    :cond_3a
    invoke-direct {p0, v0}, LaM/am;->a(LaM/i;)V

    goto :goto_39

    .line 3501
    :cond_3e
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    goto :goto_39
.end method

.method private a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Z
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3162
    :try_start_0
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 3163
    invoke-virtual {p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v1

    if-lez v1, :cond_17

    .line 3164
    invoke-virtual {p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I

    .line 3168
    :goto_15
    const/4 v0, 0x1

    .line 3179
    :goto_16
    return v0

    .line 3166
    :cond_17
    invoke-interface {v0, p2}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_1a} :catch_26

    goto :goto_15

    .line 3169
    :catch_1b
    move-exception v0

    .line 3170
    const-string v1, "LAYER_MANAGER-LayerManager Error saving layers"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3173
    invoke-direct {p0}, LaM/am;->ah()V

    .line 3179
    :goto_24
    const/4 v0, 0x0

    goto :goto_16

    .line 3174
    :catch_26
    move-exception v0

    .line 3175
    const-string v1, "LAYER_MANAGER-LayerManager OOME saving layers"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3177
    invoke-direct {p0}, LaM/am;->ah()V

    goto :goto_24
.end method

.method private ac()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1038
    const/16 v0, 0xd

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1039
    const/16 v0, 0x12

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1040
    const/16 v0, 0xf

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1041
    return-void
.end method

.method private ad()Lcom/google/googlenav/ui/ap;
    .registers 2

    .prologue
    .line 1241
    iget-object v0, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    return-object v0
.end method

.method private ae()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2218
    move v1, v2

    :goto_2
    iget-object v0, p0, LaM/am;->L:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 2219
    iget-object v0, p0, LaM/am;->L:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/ai;

    .line 2220
    invoke-virtual {v0, v2}, LaM/ai;->a(Z)V

    .line 2218
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2222
    :cond_19
    return-void
.end method

.method private af()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 3073
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ag;->o:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 3077
    const/4 v1, 0x0

    .line 3082
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 3083
    iget-object v4, p0, LaM/am;->i:Ljava/util/Vector;

    monitor-enter v4

    .line 3084
    const/4 v0, 0x0

    :goto_11
    :try_start_11
    iget-object v5, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_25

    .line 3085
    iget-object v5, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3084
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 3087
    :cond_25
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_50

    .line 3089
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 3090
    if-eqz v0, :cond_97

    invoke-virtual {v0}, LaM/i;->aM()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 3091
    invoke-direct {p0, v3, v0, v6}, LaM/am;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaM/i;Z)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 3094
    iget-object v1, p0, LaM/am;->F:Lcom/google/googlenav/layer/r;

    if-eqz v1, :cond_4e

    .line 3095
    iget-object v1, p0, LaM/am;->F:Lcom/google/googlenav/layer/r;

    invoke-interface {v1, v0}, Lcom/google/googlenav/layer/r;->a(LaM/i;)V

    :cond_4e
    :goto_4e
    move-object v1, v0

    goto :goto_2a

    .line 3087
    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit v4
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0

    .line 3101
    :cond_53
    const/4 v2, -0x1

    .line 3102
    const/16 v0, -0xa

    .line 3103
    if-eqz v1, :cond_95

    .line 3104
    invoke-virtual {v1}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->d()B

    move-result v2

    .line 3105
    const/16 v0, 0xa

    invoke-virtual {v3, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 3107
    invoke-virtual {v1}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    .line 3108
    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 3110
    const/16 v4, 0xe

    invoke-virtual {v1}, LaM/i;->aA()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move v1, v2

    .line 3115
    :goto_7c
    iget-boolean v2, p0, LaM/am;->z:Z

    if-eqz v2, :cond_88

    iget-byte v2, p0, LaM/am;->x:B

    if-ne v1, v2, :cond_88

    iget v2, p0, LaM/am;->y:I

    if-eq v0, v2, :cond_94

    .line 3117
    :cond_88
    const-string v2, "PROTO_SAVED_LAYER_STATE"

    invoke-direct {p0, v3, v2}, LaM/am;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, LaM/am;->z:Z

    .line 3118
    iput-byte v1, p0, LaM/am;->x:B

    .line 3119
    iput v0, p0, LaM/am;->y:I

    .line 3121
    :cond_94
    return-void

    :cond_95
    move v1, v2

    goto :goto_7c

    :cond_97
    move-object v0, v1

    goto :goto_4e
.end method

.method private ag()V
    .registers 7

    .prologue
    .line 3127
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ag;->o:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 3132
    iget-object v3, p0, LaM/am;->q:Ljava/util/Vector;

    monitor-enter v3

    .line 3134
    :try_start_a
    iget-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_13
    if-ltz v1, :cond_39

    .line 3135
    iget-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 3136
    invoke-virtual {v0}, LaM/i;->aM()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 3137
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v2, v0, v5}, LaM/am;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaM/i;Z)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 3139
    iget-object v4, p0, LaM/am;->F:Lcom/google/googlenav/layer/r;

    if-eqz v4, :cond_35

    .line 3140
    iget-object v4, p0, LaM/am;->F:Lcom/google/googlenav/layer/r;

    invoke-interface {v4, v0}, Lcom/google/googlenav/layer/r;->a(LaM/i;)V

    .line 3134
    :cond_35
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_13

    .line 3144
    :cond_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_a .. :try_end_3a} :catchall_47

    .line 3147
    iget-boolean v0, p0, LaM/am;->A:Z

    if-nez v0, :cond_46

    .line 3148
    const-string v0, "PROTO_SAVED_RECENT_LAYERS"

    invoke-direct {p0, v2, v0}, LaM/am;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, LaM/am;->A:Z

    .line 3150
    :cond_46
    return-void

    .line 3144
    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0
.end method

.method private ah()V
    .registers 3

    .prologue
    .line 3640
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 3643
    const-string v1, "PROTO_SAVED_LAYER_STATE"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 3644
    const-string v1, "PROTO_SAVED_RECENT_LAYERS"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 3645
    const-string v1, "LAYER_"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->c(Ljava/lang/String;)V

    .line 3646
    return-void
.end method

.method private ai()V
    .registers 3

    .prologue
    .line 3652
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 3653
    const-string v1, "SAVED_SEARCH_1_DB"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 3654
    const-string v1, "SAVED_SEARCH_1"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 3655
    const-string v1, "PROTO_SAVED_SEARCH_DB"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 3656
    const-string v1, "SAVED_SEARCH_INFO"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 3660
    invoke-static {v0}, LaM/a;->a(Lcom/google/googlenav/common/io/j;)V

    .line 3661
    return-void
.end method

.method private aj()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4007
    move v2, v3

    :goto_2
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2c

    .line 4008
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 4009
    invoke-virtual {v0}, LaM/i;->av()I

    move-result v1

    if-nez v1, :cond_28

    move-object v1, v0

    .line 4010
    check-cast v1, LaM/bj;

    invoke-virtual {v1}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->ad()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 4011
    invoke-virtual {v0, v3}, LaM/i;->h(Z)V

    .line 4007
    :cond_28
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 4015
    :cond_2c
    return-void
.end method

.method private ak()V
    .registers 4

    .prologue
    .line 4197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4198
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_22

    .line 4199
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    invoke-static {v0}, LaM/am;->p(LaM/i;)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4198
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 4201
    :cond_22
    const/16 v0, 0x43

    const-string v1, "v"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4203
    return-void
.end method

.method private al()V
    .registers 4

    .prologue
    .line 4209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4210
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_22

    .line 4211
    iget-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    invoke-static {v0}, LaM/am;->p(LaM/i;)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4210
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 4213
    :cond_22
    const/16 v0, 0x43

    const-string v1, "r"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 4215
    return-void
.end method

.method private b(IZ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 968
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 969
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    .line 970
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 972
    invoke-virtual {v0}, LaM/i;->av()I

    move-result v3

    if-ne v3, p1, :cond_2b

    invoke-virtual {v0}, LaM/i;->ay()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 973
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 969
    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 976
    :cond_2f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 977
    const/4 v2, 0x1

    invoke-virtual {p0, v0, p2, v2}, LaM/am;->b(LaM/i;ZZ)V

    goto :goto_33

    .line 979
    :cond_44
    invoke-virtual {p0}, LaM/am;->d()V

    .line 980
    return-void
.end method

.method static synthetic b(LaM/am;Ljava/io/DataInput;IZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, LaM/am;->b(Ljava/io/DataInput;IZZ)V

    return-void
.end method

.method private b(LaM/i;)V
    .registers 4
    .parameter

    .prologue
    .line 935
    new-instance v0, LaM/an;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aj()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, LaM/an;-><init>(LaM/am;LY/c;LaM/i;)V

    invoke-virtual {v0}, LaM/an;->g()V

    .line 941
    return-void
.end method

.method private b(LaM/i;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2303
    invoke-virtual {p1}, LaM/i;->ah()Z

    move-result v0

    .line 2306
    invoke-virtual {p1, p2}, LaM/i;->b(I)V

    .line 2308
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2311
    invoke-virtual {p1}, LaM/i;->n()V

    .line 2316
    if-eqz v0, :cond_20

    invoke-virtual {p1}, LaM/i;->av()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    .line 2317
    invoke-virtual {p0, p1}, LaM/am;->c(LaM/i;)V

    .line 2329
    :cond_20
    :goto_20
    return-void

    .line 2323
    :cond_21
    invoke-virtual {p1}, LaM/i;->al()V

    .line 2324
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LaM/i;->b(B)V

    .line 2327
    invoke-virtual {p0, p1}, LaM/am;->d(LaM/i;)V

    goto :goto_20
.end method

.method private b(Ljava/io/DataInput;IZZ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 3508
    new-instance v0, LaM/aI;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    sget-object v5, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iget-object v6, p0, LaM/am;->h:Lat/k;

    iget-object v7, p0, LaM/am;->Q:Lcom/google/googlenav/offers/j;

    invoke-direct/range {v0 .. v7}, LaM/aI;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;Lcom/google/googlenav/ui/view/dialog/bs;)V

    .line 3510
    invoke-virtual {v0, p1}, LaM/aI;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 3511
    invoke-virtual {v0, p2}, LaM/aI;->e(I)V

    .line 3512
    invoke-virtual {v0, p3}, LaM/aI;->h(Z)V

    .line 3513
    if-eqz p4, :cond_30

    invoke-virtual {v0}, LaM/aI;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->ab()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3514
    invoke-virtual {p0, v0, v8, v8}, LaM/am;->a(LaM/i;ZZ)Z

    .line 3522
    :goto_2f
    return-void

    .line 3516
    :cond_30
    invoke-direct {p0, v0}, LaM/am;->a(LaM/i;)V

    goto :goto_2f

    .line 3519
    :cond_34
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    goto :goto_2f
.end method

.method public static c(I)I
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1943
    packed-switch p0, :pswitch_data_3a

    .line 1980
    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown layer of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    move v0, v1

    .line 1977
    :goto_1f
    :pswitch_1f
    return v0

    :pswitch_20
    move v0, v1

    .line 1949
    goto :goto_1f

    :pswitch_22
    move v0, v1

    .line 1951
    goto :goto_1f

    :pswitch_24
    move v0, v1

    .line 1953
    goto :goto_1f

    :pswitch_26
    move v0, v1

    .line 1955
    goto :goto_1f

    :pswitch_28
    move v0, v1

    .line 1959
    goto :goto_1f

    :pswitch_2a
    move v0, v1

    .line 1963
    goto :goto_1f

    :pswitch_2c
    move v0, v1

    .line 1965
    goto :goto_1f

    :pswitch_2e
    move v0, v1

    .line 1967
    goto :goto_1f

    :pswitch_30
    move v0, v1

    .line 1969
    goto :goto_1f

    :pswitch_32
    move v0, v1

    .line 1971
    goto :goto_1f

    :pswitch_34
    move v0, v1

    .line 1973
    goto :goto_1f

    :pswitch_36
    move v0, v1

    .line 1975
    goto :goto_1f

    :pswitch_38
    move v0, v1

    .line 1977
    goto :goto_1f

    .line 1943
    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_22
        :pswitch_24
        :pswitch_5
        :pswitch_26
        :pswitch_1f
        :pswitch_28
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1f
        :pswitch_5
        :pswitch_2a
        :pswitch_5
        :pswitch_2c
        :pswitch_2e
        :pswitch_5
        :pswitch_30
        :pswitch_32
        :pswitch_5
        :pswitch_20
        :pswitch_34
        :pswitch_36
        :pswitch_5
        :pswitch_5
        :pswitch_38
    .end packed-switch
.end method

.method static synthetic c(LaM/am;Ljava/io/DataInput;IZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, LaM/am;->g(Ljava/io/DataInput;IZZ)V

    return-void
.end method

.method private c(LaM/i;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2342
    invoke-virtual {p1, p2}, LaM/i;->b(I)V

    .line 2343
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 2345
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2349
    invoke-virtual {p1}, LaM/i;->ae()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2353
    invoke-virtual {p1}, LaM/i;->l()V

    .line 2382
    :goto_16
    return-void

    .line 2354
    :cond_17
    invoke-virtual {p1}, LaM/i;->af()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2355
    invoke-virtual {p1}, LaM/i;->m()V

    goto :goto_16

    .line 2357
    :cond_21
    invoke-virtual {p1}, LaM/i;->n()V

    goto :goto_16

    .line 2363
    :cond_25
    invoke-virtual {p1}, LaM/i;->al()V

    .line 2367
    if-eqz v0, :cond_41

    invoke-virtual {v0}, LaM/i;->ai()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2370
    invoke-virtual {p0, p1}, LaM/am;->d(LaM/i;)V

    .line 2371
    invoke-virtual {p1}, LaM/i;->ad()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2372
    invoke-virtual {p1}, LaM/i;->m()V

    goto :goto_16

    .line 2374
    :cond_3d
    invoke-virtual {p1}, LaM/i;->l()V

    goto :goto_16

    .line 2379
    :cond_41
    invoke-virtual {p0, p1}, LaM/am;->d(LaM/i;)V

    goto :goto_16
.end method

.method private c(Lcom/google/googlenav/aW;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2857
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->i()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Lcom/google/googlenav/friend/ae;->a()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2859
    invoke-virtual {p0}, LaM/am;->B()LaM/X;

    move-result-object v0

    .line 2863
    if-nez v0, :cond_2c

    sget-boolean v1, LaM/am;->v:Z

    if-eqz v1, :cond_2c

    .line 2864
    invoke-virtual {p0, p1}, LaM/am;->e(Lcom/google/googlenav/aW;)LaM/X;

    move-result-object v0

    .line 2875
    :cond_1e
    :goto_1e
    invoke-virtual {p0, p1}, LaM/am;->f(Lcom/google/googlenav/aW;)V

    .line 2880
    sget-boolean v1, LaM/am;->v:Z

    if-eqz v1, :cond_2b

    if-nez p2, :cond_2b

    .line 2881
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, LaM/X;->a(ZLcom/google/googlenav/aW;)V

    .line 2884
    :cond_2b
    return-void

    .line 2868
    :cond_2c
    if-eqz v0, :cond_1e

    .line 2869
    invoke-virtual {p0, v0}, LaM/am;->a(LaM/X;)V

    goto :goto_1e
.end method

.method private c(Ljava/io/DataInput;IZZ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 3526
    new-instance v0, LaM/O;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    iget-object v5, p0, LaM/am;->d:Lan/h;

    invoke-direct/range {v0 .. v5}, LaM/O;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lan/h;)V

    .line 3528
    invoke-virtual {v0, p1}, LaM/O;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 3529
    invoke-virtual {v0, p2}, LaM/O;->e(I)V

    .line 3530
    invoke-virtual {v0, p3}, LaM/O;->h(Z)V

    .line 3531
    if-eqz p4, :cond_26

    .line 3532
    invoke-virtual {p0, v0, v6, v6}, LaM/am;->a(LaM/i;ZZ)Z

    .line 3533
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaM/O;->b(B)V

    .line 3541
    :goto_25
    return-void

    .line 3535
    :cond_26
    invoke-direct {p0, v0}, LaM/am;->a(LaM/i;)V

    goto :goto_25

    .line 3538
    :cond_2a
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    goto :goto_25
.end method

.method private c(Lat/B;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1315
    invoke-direct {p0}, LaM/am;->ad()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    .line 1316
    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v2

    .line 1317
    if-eqz v2, :cond_1e

    .line 1318
    invoke-static {}, Lcom/google/googlenav/ui/bn;->U()[LS/f;

    move-result-object v0

    aget-object v0, v0, v6

    .line 1322
    if-nez v0, :cond_1f

    move v4, v6

    .line 1323
    :goto_14
    const/4 v3, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v7, v6

    invoke-virtual/range {v0 .. v8}, LaM/am;->a(Lat/B;Lat/B;IIIIILS/e;)Z

    move-result v6

    .line 1326
    :cond_1e
    return v6

    .line 1322
    :cond_1f
    invoke-interface {v0}, LS/f;->a()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    goto :goto_14
.end method

.method static synthetic d(LaM/am;Ljava/io/DataInput;IZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, LaM/am;->f(Ljava/io/DataInput;IZZ)V

    return-void
.end method

.method private d(Ljava/io/DataInput;IZZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 3545
    new-instance v0, LaM/bK;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    invoke-direct {v0, v1, v2, v3, v4}, LaM/bK;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;)V

    .line 3547
    invoke-virtual {v0, p1}, LaM/bK;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3548
    invoke-virtual {v0, p2}, LaM/bK;->e(I)V

    .line 3549
    invoke-virtual {v0, p3}, LaM/bK;->h(Z)V

    .line 3550
    if-eqz p4, :cond_24

    .line 3551
    invoke-virtual {p0, v0, v5, v5}, LaM/am;->a(LaM/i;ZZ)Z

    .line 3552
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaM/bK;->b(B)V

    .line 3560
    :goto_23
    return-void

    .line 3554
    :cond_24
    invoke-direct {p0, v0}, LaM/am;->a(LaM/i;)V

    goto :goto_23

    .line 3557
    :cond_28
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    goto :goto_23
.end method

.method static synthetic e(LaM/am;Ljava/io/DataInput;IZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, LaM/am;->c(Ljava/io/DataInput;IZZ)V

    return-void
.end method

.method private e(Ljava/io/DataInput;IZZ)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 3564
    new-instance v0, LaM/bU;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    iget-object v5, p0, LaM/am;->h:Lat/k;

    new-instance v6, Lcom/google/googlenav/Y;

    invoke-direct {v6}, Lcom/google/googlenav/Y;-><init>()V

    invoke-direct/range {v0 .. v7}, LaM/bU;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lat/k;Lcom/google/googlenav/F;Z)V

    .line 3566
    invoke-virtual {v0, p1}, LaM/bU;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 3567
    invoke-virtual {v0, p2}, LaM/bU;->e(I)V

    .line 3568
    invoke-virtual {v0, p3}, LaM/bU;->h(Z)V

    .line 3569
    if-eqz p4, :cond_27

    .line 3570
    invoke-virtual {p0, v0, v7, v7}, LaM/am;->a(LaM/i;ZZ)Z

    .line 3578
    :goto_26
    return-void

    .line 3572
    :cond_27
    invoke-direct {p0, v0}, LaM/am;->a(LaM/i;)V

    goto :goto_26

    .line 3575
    :cond_2b
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    goto :goto_26
.end method

.method private f(I)I
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1067
    move v1, v0

    move v2, v0

    .line 1068
    :goto_3
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    .line 1069
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    invoke-virtual {v0}, LaM/i;->av()I

    move-result v0

    if-ne v0, p1, :cond_1b

    .line 1070
    add-int/lit8 v2, v2, 0x1

    .line 1068
    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1073
    :cond_1f
    return v2
.end method

.method static synthetic f(LaM/am;Ljava/io/DataInput;IZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, LaM/am;->d(Ljava/io/DataInput;IZZ)V

    return-void
.end method

.method private f(Ljava/io/DataInput;IZZ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 3582
    new-instance v0, LaM/y;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    iget-object v5, p0, LaM/am;->h:Lat/k;

    invoke-direct/range {v0 .. v5}, LaM/y;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lat/k;)V

    .line 3584
    invoke-virtual {v0, p1}, LaM/y;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 3588
    invoke-virtual {v0}, LaM/y;->b()Lcom/google/googlenav/layer/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v1

    .line 3589
    const-string v2, "msid:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 3590
    new-instance v7, LaM/bC;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    invoke-virtual {v0}, LaM/y;->b()Lcom/google/googlenav/layer/m;

    move-result-object v5

    iget-object v6, p0, LaM/am;->h:Lat/k;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LaM/bC;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;)V

    move-object v0, v7

    .line 3597
    :cond_3b
    :goto_3b
    invoke-virtual {v0, p2}, LaM/y;->e(I)V

    .line 3598
    invoke-virtual {v0, p3}, LaM/y;->h(Z)V

    .line 3599
    if-eqz p4, :cond_5d

    .line 3600
    invoke-virtual {p0, v0, v8, v8}, LaM/am;->a(LaM/i;ZZ)Z

    .line 3608
    :goto_46
    return-void

    .line 3592
    :cond_47
    const-string v2, "LayerTransit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 3593
    invoke-virtual {v0}, LaM/y;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    .line 3594
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/layer/m;->a(Ljava/lang/String;)V

    .line 3595
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LaM/am;->a(Lcom/google/googlenav/layer/m;Z)LaM/y;

    move-result-object v0

    goto :goto_3b

    .line 3602
    :cond_5d
    invoke-direct {p0, v0}, LaM/am;->a(LaM/i;)V

    goto :goto_46

    .line 3605
    :cond_61
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    goto :goto_46
.end method

.method private g(I)LaM/i;
    .registers 5
    .parameter

    .prologue
    .line 1821
    packed-switch p1, :pswitch_data_4a

    .line 1846
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has MAX_ALLOWED_INSTANCES > 1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1836
    :pswitch_22
    const/4 v0, 0x0

    move v1, v0

    :goto_24
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    .line 1837
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    invoke-virtual {v0}, LaM/i;->av()I

    move-result v0

    if-ne v0, p1, :cond_43

    .line 1838
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 1849
    :goto_42
    return-object v0

    .line 1836
    :cond_43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    .line 1849
    :cond_47
    const/4 v0, 0x0

    goto :goto_42

    .line 1821
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_3
        :pswitch_22
        :pswitch_3
        :pswitch_22
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_22
        :pswitch_3
        :pswitch_22
        :pswitch_22
        :pswitch_3
        :pswitch_3
        :pswitch_22
        :pswitch_3
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_3
        :pswitch_3
        :pswitch_22
    .end packed-switch
.end method

.method static synthetic g(LaM/am;Ljava/io/DataInput;IZZ)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, LaM/am;->e(Ljava/io/DataInput;IZZ)V

    return-void
.end method

.method private g(Lcom/google/googlenav/aW;)V
    .registers 4
    .parameter

    .prologue
    .line 2840
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, LaM/am;->g(I)LaM/i;

    move-result-object v0

    check-cast v0, LaM/aI;

    .line 2841
    if-nez v0, :cond_e

    .line 2842
    invoke-virtual {p0, p1}, LaM/am;->a(Lcom/google/googlenav/aW;)LaM/aI;

    move-result-object v0

    .line 2844
    :cond_e
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LaM/aI;->b(Lcom/google/googlenav/aW;Z)V

    .line 2845
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/am;->f(Z)V

    .line 2846
    return-void
.end method

.method private g(Ljava/io/DataInput;IZZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    .line 3612
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->i()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3634
    :goto_b
    return-void

    .line 3618
    :cond_c
    new-instance v0, LaM/X;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->n:Lcom/google/googlenav/android/Y;

    iget-object v5, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    iget-object v6, p0, LaM/am;->k:Lcom/google/googlenav/friend/J;

    iget-object v7, p0, LaM/am;->l:Lcom/google/googlenav/friend/p;

    iget-object v8, p0, LaM/am;->m:Lcom/google/googlenav/friend/ai;

    iget-object v9, p0, LaM/am;->G:LaM/a;

    invoke-direct/range {v0 .. v9}, LaM/X;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/friend/J;Lcom/google/googlenav/friend/p;Lcom/google/googlenav/friend/ai;LaM/a;)V

    .line 3621
    invoke-virtual {v0, p1}, LaM/X;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 3622
    invoke-virtual {v0, p2}, LaM/X;->e(I)V

    .line 3623
    invoke-virtual {v0, p3}, LaM/X;->h(Z)V

    .line 3624
    if-eqz p4, :cond_38

    .line 3625
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v10, v1}, LaM/am;->a(LaM/i;ZZ)Z

    .line 3626
    sput-boolean v10, LaM/am;->v:Z

    goto :goto_b

    .line 3628
    :cond_38
    invoke-direct {p0, v0}, LaM/am;->a(LaM/i;)V

    goto :goto_b

    .line 3631
    :cond_3c
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    goto :goto_b
.end method

.method private g(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 1720
    invoke-virtual {p0, p1}, LaM/am;->b(Ljava/lang/String;)LaM/y;

    move-result-object v0

    .line 1721
    if-eqz v0, :cond_9

    .line 1722
    invoke-virtual {p0, v0}, LaM/am;->g(LaM/i;)V

    .line 1724
    :cond_9
    return-void
.end method

.method private static h(I)C
    .registers 2
    .parameter

    .prologue
    .line 4225
    add-int/lit8 v0, p0, 0x61

    int-to-char v0, v0

    return v0
.end method

.method private h(Lcom/google/googlenav/aW;)V
    .registers 4
    .parameter

    .prologue
    .line 3007
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->k()Lcom/google/googlenav/aX;

    move-result-object v1

    .line 3008
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    .line 3009
    if-eqz v0, :cond_10

    .line 3010
    invoke-interface {v1, v0, p1}, Lcom/google/googlenav/aX;->a(Lcom/google/googlenav/ai;Lcom/google/googlenav/aW;)V

    .line 3012
    :cond_10
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .registers 15
    .parameter

    .prologue
    .line 3297
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v9

    .line 3298
    invoke-interface {v9, p1}, Lcom/google/googlenav/common/io/j;->d(Ljava/lang/String;)[B

    move-result-object v0

    .line 3299
    if-eqz v0, :cond_11

    array-length v1, v0

    if-nez v1, :cond_12

    .line 3480
    :cond_11
    :goto_11
    return-void

    .line 3304
    :cond_12
    invoke-virtual {p0, p1}, LaM/am;->c(Ljava/lang/String;)Z

    move-result v3

    .line 3306
    :try_start_16
    new-instance v10, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->o:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v10, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 3307
    invoke-virtual {v10, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse([B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 3309
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v11

    .line 3313
    const/4 v0, 0x0

    move v8, v0

    :goto_27
    if-ge v8, v11, :cond_61

    .line 3314
    const/4 v0, 0x1

    invoke-virtual {v10, v0, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 3316
    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v2

    .line 3318
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/googlenav/common/util/e;->a([B)I

    move-result v5

    .line 3323
    sget v1, LaM/am;->w:I

    if-lt v5, v1, :cond_45

    .line 3324
    add-int/lit8 v1, v5, 0x1

    sput v1, LaM/am;->w:I

    .line 3327
    :cond_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LAYER_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3328
    invoke-static {v9, v1}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/io/j;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v4

    .line 3329
    if-nez v4, :cond_7b

    .line 3334
    invoke-direct {p0}, LaM/am;->ah()V

    .line 3419
    :cond_61
    iget-object v0, p0, LaM/am;->n:Lcom/google/googlenav/android/Y;

    new-instance v1, LaM/as;

    move-object v2, p0

    move-object v4, p1

    move-object v5, v10

    move v6, v11

    invoke-direct/range {v1 .. v6}, LaM/as;-><init>(LaM/am;ZLjava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_70} :catch_71

    goto :goto_11

    .line 3465
    :catch_71
    move-exception v0

    .line 3476
    const-string v1, "LAYER_MANAGER-LayersManager load"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3478
    invoke-direct {p0}, LaM/am;->ah()V

    goto :goto_11

    .line 3339
    :cond_7b
    const/4 v1, 0x4

    :try_start_7c
    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v6

    .line 3343
    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v7

    .line 3353
    if-eqz v7, :cond_95

    invoke-direct {p0, v2}, LaM/am;->f(I)I

    move-result v0

    invoke-static {v2}, LaM/am;->c(I)I

    move-result v1

    if-lt v0, v1, :cond_95

    .line 3313
    :goto_91
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_27

    .line 3361
    :cond_95
    iget-object v12, p0, LaM/am;->n:Lcom/google/googlenav/android/Y;

    new-instance v0, LaM/ar;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, LaM/ar;-><init>(LaM/am;IZLjava/io/DataInput;IZZ)V

    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_a1} :catch_71

    goto :goto_91
.end method

.method private h(Z)V
    .registers 5
    .parameter

    .prologue
    .line 2087
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 2088
    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 2089
    iget-object v2, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2088
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2091
    :cond_19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 2092
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, p1}, LaM/am;->b(LaM/i;ZZ)V

    goto :goto_1d

    .line 2094
    :cond_2e
    return-void
.end method

.method private i(Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter

    .prologue
    .line 4177
    const/16 v0, 0x43

    const/16 v1, 0xd

    invoke-static {v1}, LaM/am;->h(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, LaT/p;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method private i(Lcom/google/googlenav/aW;)V
    .registers 10
    .parameter

    .prologue
    .line 3019
    new-instance v5, Lcom/google/googlenav/n;

    new-instance v0, Lcom/google/googlenav/T;

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ac()Lcom/google/googlenav/layer/m;

    move-result-object v1

    iget-object v2, p0, LaM/am;->h:Lat/k;

    iget-object v3, p0, LaM/am;->e:Lat/p;

    iget-object v4, p0, LaM/am;->f:Lat/u;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/T;-><init>(Lcom/google/googlenav/layer/m;Lat/o;Lat/p;Lat/u;)V

    invoke-direct {v5, p1, v0}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/F;Lcom/google/googlenav/F;)V

    .line 3021
    new-instance v0, LaM/cg;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    iget-object v6, p0, LaM/am;->h:Lat/k;

    invoke-static {}, LaM/am;->X()I

    move-result v7

    invoke-direct/range {v0 .. v7}, LaM/cg;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/n;Lat/k;I)V

    .line 3025
    invoke-virtual {v0}, LaM/cg;->av()I

    move-result v1

    invoke-virtual {p0, v1}, LaM/am;->b(I)V

    .line 3028
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LaM/am;->a(LaM/i;Z)V

    .line 3029
    invoke-virtual {v0}, LaM/cg;->l()V

    .line 3030
    return-void
.end method

.method public static l(LaM/i;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 3066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LAYER_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LaM/i;->aO()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n(LaM/i;)V
    .registers 4
    .parameter

    .prologue
    .line 949
    new-instance v0, LaM/ao;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->aj()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, LaM/ao;-><init>(LaM/am;LY/c;LaM/i;)V

    invoke-virtual {v0}, LaM/ao;->g()V

    .line 956
    return-void
.end method

.method private o(LaM/i;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1019
    iget-object v2, p0, LaM/am;->q:Ljava/util/Vector;

    monitor-enter v2

    .line 1020
    :try_start_4
    iget-object v1, p0, LaM/am;->q:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_2c

    .line 1021
    iget-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 1022
    invoke-virtual {v0, p1}, LaM/i;->a(LaM/i;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1023
    iget-object v1, p0, LaM/am;->q:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1024
    invoke-direct {p0, v0}, LaM/am;->n(LaM/i;)V

    .line 1025
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/am;->A:Z

    .line 1026
    monitor-exit v2

    .line 1030
    :goto_27
    return-void

    .line 1020
    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 1029
    :cond_2c
    monitor-exit v2

    goto :goto_27

    :catchall_2e
    move-exception v0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method private static p(LaM/i;)C
    .registers 4
    .parameter

    .prologue
    .line 4230
    invoke-virtual {p0}, LaM/i;->av()I

    move-result v0

    .line 4231
    const/4 v1, 0x6

    if-ne v0, v1, :cond_27

    .line 4232
    check-cast p0, LaM/y;

    invoke-virtual {p0}, LaM/y;->b()Lcom/google/googlenav/layer/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v1

    .line 4233
    const-string v2, "LayerTransit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4234
    const/16 v0, 0x54

    .line 4239
    :goto_1b
    return v0

    .line 4235
    :cond_1c
    const-string v2, "LayerWikipedia"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4236
    const/16 v0, 0x57

    goto :goto_1b

    .line 4239
    :cond_27
    invoke-static {v0}, LaM/am;->h(I)C

    move-result v0

    goto :goto_1b
.end method


# virtual methods
.method public A()LaM/bw;
    .registers 2

    .prologue
    .line 1915
    const/16 v0, 0x10

    invoke-direct {p0, v0}, LaM/am;->g(I)LaM/i;

    move-result-object v0

    check-cast v0, LaM/bw;

    return-object v0
.end method

.method public B()LaM/X;
    .registers 2

    .prologue
    .line 1924
    const/4 v0, 0x3

    invoke-direct {p0, v0}, LaM/am;->g(I)LaM/i;

    move-result-object v0

    check-cast v0, LaM/X;

    return-object v0
.end method

.method protected C()I
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 2233
    iget-object v1, p0, LaM/am;->L:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_c

    .line 2270
    :goto_b
    return v5

    .line 2238
    :cond_c
    iget-object v1, p0, LaM/am;->L:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v1, v8, :cond_16

    move v5, v0

    .line 2239
    goto :goto_b

    .line 2244
    :cond_16
    const-wide v1, 0x7fffffffffffffffL

    move v4, v5

    move-wide v9, v1

    move-wide v2, v9

    move v1, v0

    .line 2245
    :goto_1f
    iget-object v0, p0, LaM/am;->L:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    .line 2246
    iget-object v0, p0, LaM/am;->L:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/ai;

    .line 2247
    invoke-virtual {v0}, LaM/ai;->e()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 2245
    :cond_35
    :goto_35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    .line 2250
    :cond_39
    invoke-virtual {v0}, LaM/ai;->d()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_35

    .line 2252
    invoke-virtual {v0}, LaM/ai;->d()J

    move-result-wide v2

    move v4, v1

    goto :goto_35

    .line 2258
    :cond_47
    if-ne v4, v5, :cond_62

    .line 2259
    invoke-direct {p0}, LaM/am;->ae()V

    .line 2263
    iget v0, p0, LaM/am;->O:I

    if-eq v0, v5, :cond_5d

    .line 2264
    iget-object v0, p0, LaM/am;->L:Ljava/util/Vector;

    iget v1, p0, LaM/am;->O:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/ai;

    invoke-virtual {v0, v8}, LaM/ai;->a(Z)V

    .line 2267
    :cond_5d
    invoke-virtual {p0}, LaM/am;->C()I

    move-result v5

    goto :goto_b

    :cond_62
    move v5, v4

    .line 2270
    goto :goto_b
.end method

.method public D()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 2277
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 2283
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, LaM/i;->av()I

    move-result v2

    if-nez v2, :cond_2b

    .line 2284
    check-cast v0, LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2286
    invoke-static {v0}, Laa/b;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    move-object v0, v1

    .line 2290
    :cond_22
    :goto_22
    iget-object v2, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    const-string v3, "22"

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2292
    return-void

    :cond_2b
    move-object v0, v1

    goto :goto_22
.end method

.method public E()V
    .registers 1

    .prologue
    .line 2530
    return-void
.end method

.method public F()V
    .registers 6

    .prologue
    .line 2538
    invoke-direct {p0}, LaM/am;->ad()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    .line 2539
    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v1

    .line 2540
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    invoke-virtual {v0}, LaM/i;->av()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_31

    .line 2542
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    check-cast v0, LaM/C;

    .line 2543
    invoke-virtual {v0}, LaM/C;->bG()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v0}, LaM/C;->aa()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2545
    if-nez v1, :cond_32

    .line 2546
    invoke-virtual {p0, v0}, LaM/am;->g(LaM/i;)V

    .line 2557
    :cond_31
    :goto_31
    return-void

    .line 2547
    :cond_32
    invoke-virtual {v0}, LaM/C;->bH()Z

    move-result v2

    if-nez v2, :cond_31

    .line 2548
    iget-object v2, p0, LaM/am;->f:Lat/u;

    invoke-virtual {v0}, LaM/C;->a()Lat/B;

    move-result-object v3

    sget v4, LaM/am;->R:I

    invoke-virtual {v2, v1, v3, v4}, Lat/u;->a(Lat/B;Lat/B;I)Z

    move-result v1

    if-nez v1, :cond_31

    .line 2552
    invoke-virtual {p0, v0}, LaM/am;->g(LaM/i;)V

    goto :goto_31
.end method

.method public G()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 2663
    move v1, v0

    move v2, v0

    .line 2664
    :goto_3
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    .line 2665
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    invoke-virtual {v0}, LaM/i;->X()Z

    move-result v0

    or-int/2addr v2, v0

    .line 2664
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2667
    :cond_1c
    if-eqz v2, :cond_22

    .line 2668
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/am;->e(Z)V

    .line 2670
    :cond_22
    return v2
.end method

.method public H()V
    .registers 1

    .prologue
    .line 2679
    return-void
.end method

.method public I()LaM/i;
    .registers 2

    .prologue
    .line 2762
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    goto :goto_9
.end method

.method public J()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 2766
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    return-object v0
.end method

.method public K()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 2770
    iget-object v0, p0, LaM/am;->p:Ljava/util/Vector;

    return-object v0
.end method

.method public L()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 2774
    iget-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    return-object v0
.end method

.method public M()V
    .registers 2

    .prologue
    .line 3189
    iget-object v0, p0, LaM/am;->F:Lcom/google/googlenav/layer/r;

    if-eqz v0, :cond_9

    .line 3190
    iget-object v0, p0, LaM/am;->F:Lcom/google/googlenav/layer/r;

    invoke-interface {v0}, Lcom/google/googlenav/layer/r;->a()V

    .line 3196
    :cond_9
    sget-object v0, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    invoke-static {v0}, Lcom/google/googlenav/u;->c(Lcom/google/googlenav/z;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 3198
    invoke-direct {p0}, LaM/am;->af()V

    .line 3199
    invoke-direct {p0}, LaM/am;->ag()V

    .line 3201
    :cond_17
    return-void
.end method

.method public N()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 3222
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->M()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3223
    invoke-direct {p0}, LaM/am;->ai()V

    .line 3231
    :cond_e
    sget-object v0, Lak/h;->a:Lak/h;

    invoke-virtual {v0}, Lak/h;->e()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3232
    iget-object v0, p0, LaM/am;->n:Lcom/google/googlenav/android/Y;

    new-instance v1, LaM/ap;

    invoke-direct {v1, p0}, LaM/ap;-><init>(LaM/am;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 3241
    :cond_20
    const-string v0, "PROTO_SAVED_LAYER_STATE"

    invoke-direct {p0, v0}, LaM/am;->h(Ljava/lang/String;)V

    .line 3247
    iget-object v0, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->a()V

    .line 3250
    iget-object v0, p0, LaM/am;->n:Lcom/google/googlenav/android/Y;

    new-instance v1, LaM/aq;

    invoke-direct {v1, p0}, LaM/aq;-><init>(LaM/am;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 3256
    return-void
.end method

.method public O()V
    .registers 2

    .prologue
    .line 3264
    const-string v0, "PROTO_SAVED_RECENT_LAYERS"

    invoke-direct {p0, v0}, LaM/am;->h(Ljava/lang/String;)V

    .line 3265
    invoke-direct {p0}, LaM/am;->al()V

    .line 3266
    return-void
.end method

.method public P()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 3668
    invoke-virtual {p0}, LaM/am;->n()LaM/az;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, LaM/am;->n()LaM/az;

    move-result-object v1

    invoke-virtual {v1}, LaM/az;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3674
    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-object v1, p0, LaM/am;->p:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_11

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->b()I

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->c()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v1

    invoke-virtual {v1}, LaM/i;->ah()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_3a
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v1

    invoke-virtual {v1}, LaM/i;->av()I

    move-result v1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_11

    :cond_4c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public Q()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3690
    iget-object v0, p0, LaM/am;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v1, :cond_24

    iget-object v0, p0, LaM/am;->p:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    invoke-virtual {v0}, LaM/i;->av()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_24

    move v0, v1

    .line 3692
    :goto_1a
    if-nez v0, :cond_26

    invoke-virtual {p0}, LaM/am;->P()Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v1

    :goto_23
    return v0

    :cond_24
    move v0, v2

    .line 3690
    goto :goto_1a

    :cond_26
    move v0, v2

    .line 3692
    goto :goto_23
.end method

.method public R()V
    .registers 2

    .prologue
    .line 3891
    const/4 v0, 0x0

    iput-object v0, p0, LaM/am;->D:Ljava/lang/String;

    .line 3893
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    if-nez v0, :cond_a

    .line 3911
    :goto_9
    return-void

    .line 3901
    :cond_a
    invoke-virtual {p0}, LaM/am;->A()LaM/bw;

    move-result-object v0

    .line 3902
    if-eqz v0, :cond_13

    .line 3903
    invoke-virtual {v0}, LaM/bw;->Y()V

    .line 3907
    :cond_13
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 3908
    invoke-virtual {v0}, LaM/i;->Y()V

    .line 3910
    iget-object v0, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->U()V

    goto :goto_9
.end method

.method public S()Z
    .registers 2

    .prologue
    .line 3917
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 3918
    if-eqz v0, :cond_c

    invoke-virtual {v0}, LaM/i;->aa()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public T()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 3965
    invoke-direct {p0}, LaM/am;->ac()V

    .line 3968
    invoke-direct {p0, v5, v2}, LaM/am;->b(IZ)V

    .line 3971
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v2}, LaM/am;->b(IZ)V

    .line 3974
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 3975
    :goto_12
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3d

    .line 3976
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 3977
    invoke-virtual {v0}, LaM/i;->av()I

    move-result v4

    if-nez v4, :cond_39

    check-cast v0, LaM/bj;

    invoke-virtual {v0}, LaM/bj;->bk()Z

    move-result v0

    if-nez v0, :cond_39

    .line 3978
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3975
    :cond_39
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_12

    .line 3981
    :cond_3d
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 3982
    invoke-virtual {p0, v0, v2, v5}, LaM/am;->b(LaM/i;ZZ)V

    goto :goto_41

    .line 3984
    :cond_51
    invoke-virtual {p0}, LaM/am;->d()V

    .line 3987
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    invoke-virtual {p0, v0}, LaM/am;->d(LaM/i;)V

    .line 3988
    return-void
.end method

.method protected U()V
    .registers 2

    .prologue
    .line 3992
    const/4 v0, 0x1

    .line 3993
    invoke-virtual {p0, v0}, LaM/am;->a(Z)LaM/bx;

    .line 3994
    invoke-virtual {p0}, LaM/am;->s()V

    .line 3995
    invoke-virtual {p0}, LaM/am;->t()LaM/bw;

    .line 3997
    sget-object v0, Lak/h;->a:Lak/h;

    invoke-virtual {v0}, Lak/h;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3998
    invoke-virtual {p0}, LaM/am;->m()LaM/az;

    .line 4000
    :cond_15
    return-void
.end method

.method public V()V
    .registers 3

    .prologue
    .line 4019
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 4020
    if-eqz v0, :cond_26

    .line 4021
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4027
    invoke-virtual {v0}, LaM/i;->al()V

    .line 4033
    :goto_13
    invoke-virtual {v0}, LaM/i;->av()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_26

    invoke-virtual {p0}, LaM/am;->w()LaM/bK;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 4035
    iget-object v0, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->G()V

    .line 4038
    :cond_26
    return-void

    .line 4029
    :cond_27
    invoke-virtual {v0}, LaM/i;->Z()V

    goto :goto_13
.end method

.method public W()Lcom/google/googlenav/E;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 4046
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v1

    .line 4049
    if-eqz v1, :cond_e

    invoke-virtual {v1}, LaM/i;->av()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_10

    :cond_e
    move-object v0, v2

    .line 4064
    :goto_f
    return-object v0

    .line 4052
    :cond_10
    invoke-virtual {v1}, LaM/i;->av()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_23

    move-object v0, v1

    check-cast v0, LaM/C;

    invoke-virtual {v0}, LaM/C;->bG()Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, v2

    .line 4054
    goto :goto_f

    .line 4059
    :cond_23
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {v1}, LaM/i;->av()I

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {v1}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_48

    .line 4062
    invoke-virtual {v1}, LaM/i;->ar()Lcom/google/googlenav/F;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    goto :goto_f

    .line 4064
    :cond_48
    invoke-virtual {v1}, LaM/i;->s()Lcom/google/googlenav/E;

    move-result-object v0

    goto :goto_f
.end method

.method public Z()V
    .registers 2

    .prologue
    .line 4123
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 4124
    invoke-virtual {p0, v0}, LaM/am;->d(LaM/i;)V

    .line 4125
    if-eqz v0, :cond_c

    .line 4126
    invoke-virtual {v0}, LaM/i;->aV()V

    .line 4128
    :cond_c
    return-void
.end method

.method public a(Lat/B;Ln/B;Ljava/lang/String;Z[Ljava/lang/String;)LaM/C;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1228
    new-instance v0, Lcom/google/googlenav/ai;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Lcom/google/googlenav/ai;-><init>(Lat/g;Ljava/lang/String;B)V

    .line 1229
    invoke-virtual {v0, p2}, Lcom/google/googlenav/ai;->a(Ln/B;)V

    .line 1231
    new-instance v1, Lcom/google/googlenav/bi;

    invoke-direct {v1, v0}, Lcom/google/googlenav/bi;-><init>(Lcom/google/googlenav/ai;)V

    .line 1234
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, p4, p5}, LaM/am;->a(Lcom/google/googlenav/bi;BZ[Ljava/lang/String;)LaM/C;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/bi;BZ[Ljava/lang/String;)LaM/C;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1256
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, LaM/am;->b(I)V

    .line 1258
    invoke-virtual {p1}, Lcom/google/googlenav/bi;->e()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->a()Lat/B;

    move-result-object v0

    .line 1259
    invoke-direct {p0, v0}, LaM/am;->c(Lat/B;)Z

    move-result v8

    .line 1260
    if-eqz v8, :cond_44

    .line 1263
    invoke-direct {p0}, LaM/am;->ad()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    .line 1264
    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    .line 1267
    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->e()[Ljava/lang/String;

    move-result-object v7

    .line 1268
    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->y()V

    .line 1272
    :goto_21
    if-nez v8, :cond_27

    .line 1273
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaM/am;->e(Z)V

    .line 1278
    :cond_27
    const-string v0, "s"

    invoke-direct {p0, v0}, LaM/am;->i(Ljava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v9

    .line 1280
    new-instance v0, LaM/C;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v0 .. v9}, LaM/C;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;Z[Ljava/lang/String;ZLcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1284
    const/4 v1, 0x0

    .line 1285
    invoke-virtual {p0, v0, v1, v9}, LaM/am;->a(LaM/i;ZLcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1286
    invoke-virtual {v0, p2}, LaM/C;->a(B)V

    .line 1288
    return-object v0

    :cond_44
    move-object v7, p4

    goto :goto_21
.end method

.method public a(Lad/b;)LaM/O;
    .registers 9
    .parameter

    .prologue
    .line 1352
    invoke-virtual {p0}, LaM/am;->i()V

    .line 1354
    new-instance v0, LaM/O;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    iget-object v5, p0, LaM/am;->d:Lan/h;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, LaM/O;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lan/h;Lcom/google/googlenav/F;)V

    .line 1356
    invoke-virtual {p0, v0}, LaM/am;->e(LaM/i;)V

    .line 1357
    return-object v0
.end method

.method public a(Lcom/google/googlenav/aW;)LaM/aI;
    .registers 4
    .parameter

    .prologue
    .line 1126
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1127
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1130
    :cond_f
    invoke-direct {p0}, LaM/am;->ac()V

    .line 1132
    invoke-virtual {p0, p1}, LaM/am;->d(Lcom/google/googlenav/aW;)LaM/aI;

    move-result-object v0

    .line 1133
    invoke-virtual {p0, v0}, LaM/am;->e(LaM/i;)V

    .line 1134
    return-object v0
.end method

.method public a(Lat/B;Lat/Y;Ljava/lang/String;)LaM/aL;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1540
    iget-object v0, p0, LaM/am;->f:Lat/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lat/u;->a(I)V

    .line 1541
    iget-object v0, p0, LaM/am;->f:Lat/u;

    invoke-virtual {v0, p1, p2}, Lat/u;->e(Lat/B;Lat/Y;)V

    .line 1542
    const/16 v0, 0x16

    invoke-direct {p0, v0}, LaM/am;->g(I)LaM/i;

    move-result-object v0

    check-cast v0, LaM/aL;

    .line 1544
    if-eqz v0, :cond_19

    .line 1545
    invoke-virtual {v0}, LaM/aL;->aW()V

    .line 1548
    :goto_18
    return-object v0

    :cond_19
    invoke-virtual {p0, p3}, LaM/am;->a(Ljava/lang/String;)LaM/aL;

    move-result-object v0

    goto :goto_18
.end method

.method public a(Ljava/lang/String;)LaM/aL;
    .registers 8
    .parameter

    .prologue
    .line 1531
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1532
    new-instance v0, LaM/aL;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LaM/aL;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Ljava/lang/String;)V

    .line 1534
    invoke-virtual {p0, v0}, LaM/am;->e(LaM/i;)V

    .line 1535
    return-object v0
.end method

.method public a(Lcom/google/googlenav/F;)LaM/aT;
    .registers 9
    .parameter

    .prologue
    .line 1582
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LaM/am;->b(I)V

    .line 1583
    new-instance v0, LaM/aT;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    invoke-static {}, LaM/am;->X()I

    move-result v6

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LaM/aT;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;I)V

    .line 1586
    invoke-virtual {p0, v0}, LaM/am;->e(LaM/i;)V

    .line 1587
    return-object v0
.end method

.method public a(Lcom/google/googlenav/ai;ZBZZ)LaM/ak;
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1777
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, LaM/am;->b(I)V

    .line 1779
    new-instance v0, LaM/ak;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    iget-object v5, p0, LaM/am;->h:Lat/k;

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, LaM/ak;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lat/k;Lcom/google/googlenav/ai;ZBZ)V

    .line 1781
    invoke-virtual {p0, v0, p5}, LaM/am;->a(LaM/i;Z)V

    .line 1782
    return-object v0
.end method

.method protected a(Lcom/google/googlenav/layer/m;)LaM/bD;
    .registers 9
    .parameter

    .prologue
    .line 1619
    new-instance v0, LaM/bD;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    new-instance v6, Lat/k;

    invoke-direct {v6}, Lat/k;-><init>()V

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LaM/bD;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;)V

    .line 1621
    return-object v0
.end method

.method public a(Lcom/google/googlenav/bO;)LaM/bH;
    .registers 8
    .parameter

    .prologue
    .line 1431
    invoke-virtual {p0}, LaM/am;->k()V

    .line 1433
    new-instance v0, LaM/bH;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LaM/bH;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 1435
    invoke-virtual {p0, v0}, LaM/am;->e(LaM/i;)V

    .line 1436
    return-object v0
.end method

.method public a(Lad/w;)LaM/bK;
    .registers 8
    .parameter

    .prologue
    .line 1382
    invoke-virtual {p0}, LaM/am;->j()V

    .line 1384
    new-instance v0, LaM/bK;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LaM/bK;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/F;)V

    .line 1386
    invoke-virtual {p0, v0}, LaM/am;->e(LaM/i;)V

    .line 1387
    return-object v0
.end method

.method public a(Lcom/google/googlenav/Y;Z)LaM/bU;
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 1419
    invoke-virtual {p0}, LaM/am;->l()V

    .line 1421
    new-instance v0, LaM/bU;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    iget-object v5, p0, LaM/am;->h:Lat/k;

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, LaM/bU;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lat/k;Lcom/google/googlenav/F;Z)V

    .line 1423
    invoke-virtual {p0, v0}, LaM/am;->e(LaM/i;)V

    .line 1424
    return-object v0
.end method

.method public a(Lcom/google/googlenav/aW;Z)LaM/bj;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1091
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->as()Z

    move-result v0

    .line 1092
    if-nez p2, :cond_d

    if-eqz v0, :cond_10

    .line 1093
    :cond_d
    invoke-direct {p0, v1, v1}, LaM/am;->b(IZ)V

    .line 1099
    :cond_10
    if-eqz v0, :cond_16

    .line 1100
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1103
    :cond_16
    invoke-direct {p0}, LaM/am;->ac()V

    .line 1105
    invoke-virtual {p0, v1}, LaM/am;->b(I)V

    .line 1107
    new-instance v5, Lcom/google/googlenav/n;

    new-instance v0, Lcom/google/googlenav/T;

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ac()Lcom/google/googlenav/layer/m;

    move-result-object v1

    iget-object v2, p0, LaM/am;->h:Lat/k;

    iget-object v3, p0, LaM/am;->e:Lat/p;

    iget-object v4, p0, LaM/am;->f:Lat/u;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/T;-><init>(Lcom/google/googlenav/layer/m;Lat/o;Lat/p;Lat/u;)V

    invoke-direct {v5, p1, v0}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/F;Lcom/google/googlenav/F;)V

    .line 1109
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ar()Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v8, 0x5

    .line 1110
    :goto_37
    new-instance v0, LaM/bj;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ac()Lcom/google/googlenav/layer/m;

    move-result-object v6

    iget-object v7, p0, LaM/am;->h:Lat/k;

    invoke-direct/range {v0 .. v8}, LaM/bj;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;Lat/k;I)V

    .line 1112
    invoke-virtual {p0, v0}, LaM/am;->e(LaM/i;)V

    .line 1113
    return-object v0

    .line 1109
    :cond_4e
    invoke-static {}, LaM/am;->X()I

    move-result v8

    goto :goto_37
.end method

.method public a(Z)LaM/bx;
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1556
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, LaM/am;->b(I)V

    .line 1557
    new-instance v1, LaM/bx;

    iget-object v2, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v3, p0, LaM/am;->e:Lat/p;

    iget-object v4, p0, LaM/am;->f:Lat/u;

    iget-object v5, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    invoke-direct {v1, v2, v3, v4, v5}, LaM/bx;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;)V

    .line 1562
    sget-object v2, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    invoke-static {v2}, Lcom/google/googlenav/u;->c(Lcom/google/googlenav/z;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1564
    invoke-virtual {p0, v1, v0, v0}, LaM/am;->a(LaM/i;ZZ)Z

    .line 1568
    :goto_1d
    return-object v1

    .line 1566
    :cond_1e
    if-nez p1, :cond_21

    const/4 v0, 0x1

    :cond_21
    invoke-virtual {p0, v1, v0}, LaM/am;->a(LaM/i;Z)V

    goto :goto_1d
.end method

.method protected a(Lcom/google/googlenav/layer/m;Z)LaM/y;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 1636
    new-instance v0, LaM/y;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    iget-object v6, p0, LaM/am;->h:Lat/k;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LaM/y;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;)V

    .line 1638
    return-object v0
.end method

.method public a(Lcom/google/googlenav/layer/m;ZZZ)LaM/y;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1661
    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerTransit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1662
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LaM/am;->a(Lcom/google/googlenav/layer/m;Z)LaM/y;

    move-result-object v3

    :goto_11
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 1677
    invoke-virtual/range {v0 .. v5}, LaM/am;->a(Lcom/google/googlenav/layer/m;ZLaM/y;ZZ)V

    .line 1679
    return-object v3

    .line 1668
    :cond_1a
    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->i()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_39

    .line 1669
    new-instance v6, Lat/k;

    invoke-direct {v6}, Lat/k;-><init>()V

    .line 1673
    :goto_29
    new-instance v0, LaM/y;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LaM/y;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;)V

    move-object v3, v0

    goto :goto_11

    .line 1671
    :cond_39
    iget-object v6, p0, LaM/am;->h:Lat/k;

    goto :goto_29
.end method

.method public a()V
    .registers 3

    .prologue
    .line 4279
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, LaM/am;->r:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 4280
    iget-object v0, p0, LaM/am;->r:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/l;

    invoke-interface {v0}, Lcom/google/googlenav/layer/l;->a()V

    .line 4279
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 4282
    :cond_19
    return-void
.end method

.method public a(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4292
    return-void
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 4297
    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 4144
    iput p1, p0, LaM/am;->B:I

    .line 4145
    iput-object p2, p0, LaM/am;->C:Ljava/lang/Object;

    .line 4146
    return-void
.end method

.method public a(LaM/X;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 2894
    iget v0, p0, LaM/am;->B:I

    iget-object v1, p0, LaM/am;->C:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, LaM/X;->a(IILjava/lang/Object;)Z

    .line 2898
    iput v2, p0, LaM/am;->B:I

    .line 2899
    const/4 v0, 0x0

    iput-object v0, p0, LaM/am;->C:Ljava/lang/Object;

    .line 2900
    return-void
.end method

.method public a(LaM/aT;)V
    .registers 4
    .parameter

    .prologue
    .line 3818
    invoke-virtual {p1}, LaM/aT;->a()I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aW;->v()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3820
    invoke-virtual {p1}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LaM/am;->b(Lcom/google/googlenav/aW;Z)V

    .line 3822
    :cond_18
    return-void
.end method

.method public a(LaM/au;)V
    .registers 4
    .parameter

    .prologue
    .line 886
    iget-object v1, p0, LaM/am;->H:Ljava/util/Map;

    monitor-enter v1

    .line 887
    :try_start_3
    iget-object v0, p0, LaM/am;->H:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    monitor-exit v1

    .line 889
    return-void

    .line 888
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a(LaM/au;Lt/a;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 877
    iget-object v1, p0, LaM/am;->H:Ljava/util/Map;

    monitor-enter v1

    .line 878
    :try_start_3
    iget-object v0, p0, LaM/am;->H:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    monitor-exit v1

    .line 880
    return-void

    .line 879
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method protected a(LaM/i;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 2394
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->an()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2395
    invoke-direct {p0, p1, p2}, LaM/am;->c(LaM/i;I)V

    .line 2403
    :goto_d
    invoke-virtual {p1}, LaM/i;->ag()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2406
    iget-object v0, p0, LaM/am;->f:Lat/u;

    invoke-virtual {v0}, Lat/u;->c()Lat/B;

    move-result-object v0

    iget-object v1, p0, LaM/am;->f:Lat/u;

    invoke-virtual {v1}, Lat/u;->d()Lat/Y;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LaM/i;->a(Lat/B;Lat/Y;)Lat/B;

    move-result-object v0

    .line 2408
    iget-object v1, p0, LaM/am;->f:Lat/u;

    invoke-virtual {v1, v0}, Lat/u;->b(Lat/B;)V

    .line 2410
    :cond_28
    return-void

    .line 2397
    :cond_29
    invoke-direct {p0, p1, p2}, LaM/am;->b(LaM/i;I)V

    goto :goto_d
.end method

.method public a(LaM/i;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LaM/am;->a(LaM/i;ZLcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 547
    return-void
.end method

.method public a(LaM/i;ZLcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 571
    if-nez p2, :cond_f

    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 572
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    invoke-virtual {v0}, LaM/i;->aX()V

    .line 575
    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LaM/am;->a(LaM/i;ZZ)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 577
    invoke-virtual {p1}, LaM/i;->aW()V

    .line 580
    invoke-virtual {p1}, LaM/i;->aM()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 581
    invoke-static {}, LaM/am;->Y()I

    move-result v0

    invoke-virtual {p1, v0}, LaM/i;->e(I)V

    .line 582
    invoke-direct {p0, p1}, LaM/am;->b(LaM/i;)V

    .line 586
    :cond_29
    invoke-virtual {p0}, LaM/am;->d()V

    .line 589
    :cond_2c
    if-eqz p3, :cond_32

    .line 590
    invoke-direct {p0, p3}, LaM/am;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 594
    :goto_31
    return-void

    .line 592
    :cond_32
    const-string v0, "s"

    invoke-direct {p0, p1, v0}, LaM/am;->a(LaM/i;Ljava/lang/String;)V

    goto :goto_31
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter

    .prologue
    .line 3054
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 3055
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    invoke-virtual {v0, p1}, LaM/i;->a(Landroid/content/res/Configuration;)V

    .line 3054
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 3057
    :cond_19
    return-void
.end method

.method protected a(Lat/B;)V
    .registers 6
    .parameter

    .prologue
    .line 2144
    iget-object v0, p0, LaM/am;->L:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 2147
    iput-object p1, p0, LaM/am;->N:Lat/B;

    .line 2150
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_10
    if-ltz v1, :cond_25

    .line 2151
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 2152
    iget-object v2, p0, LaM/am;->L:Ljava/util/Vector;

    sget v3, LaM/am;->J:I

    invoke-virtual {v0, v2, p1, v3}, LaM/i;->a(Ljava/util/Vector;Lat/B;I)V

    .line 2150
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_10

    .line 2156
    :cond_25
    invoke-direct {p0}, LaM/am;->ad()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    .line 2157
    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v0

    .line 2158
    if-eqz v0, :cond_49

    .line 2159
    iget-object v1, p0, LaM/am;->f:Lat/u;

    invoke-virtual {v1}, Lat/u;->d()Lat/Y;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lat/B;->a(Lat/B;Lat/Y;)J

    move-result-wide v0

    .line 2160
    sget v2, LaM/am;->J:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_49

    .line 2161
    iget-object v2, p0, LaM/am;->L:Ljava/util/Vector;

    invoke-static {v0, v1}, LaM/ai;->a(J)LaM/ai;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 2164
    :cond_49
    return-void
.end method

.method public a(Lcom/google/googlenav/J;LaM/aT;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    .line 3728
    invoke-virtual {p2}, LaM/aT;->f()Lcom/google/googlenav/aW;

    move-result-object v1

    .line 3737
    new-instance v0, Lcom/google/googlenav/bd;

    invoke-direct {v0}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->z()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->a(I)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->P()Lat/M;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->a(Lat/M;)Lcom/google/googlenav/bd;

    move-result-object v0

    iget-object v2, p0, LaM/am;->f:Lat/u;

    invoke-virtual {v2}, Lat/u;->f()Lat/H;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->X()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v2

    .line 3744
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->s()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 3754
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, LaM/aT;->bd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3756
    invoke-virtual {v2, v0}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    .line 3757
    invoke-virtual {v2}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    .line 3787
    :cond_4c
    :goto_4c
    return-void

    .line 3758
    :cond_4d
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->F()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 3761
    invoke-virtual {p2}, LaM/aT;->bd()Ljava/lang/String;

    move-result-object v0

    .line 3762
    invoke-virtual {v2, v0}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    .line 3765
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->U()Lat/H;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    .line 3766
    invoke-virtual {v2}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    goto :goto_4c

    .line 3767
    :cond_6e
    invoke-virtual {p2}, LaM/aT;->b()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3768
    invoke-virtual {p2}, LaM/aT;->be()Lcom/google/googlenav/ai;

    move-result-object v3

    .line 3769
    invoke-virtual {v3}, Lcom/google/googlenav/ai;->G()Ljava/lang/String;

    move-result-object v0

    .line 3770
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 3771
    invoke-virtual {v3}, Lcom/google/googlenav/ai;->ak()Ljava/lang/String;

    move-result-object v0

    .line 3773
    :cond_86
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->E()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/googlenav/aW;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3775
    invoke-virtual {v2, v0}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    .line 3778
    invoke-virtual {p2}, LaM/aT;->be()Lcom/google/googlenav/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ai;->al()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bd;->a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/bd;

    .line 3783
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->U()Lat/H;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    .line 3785
    invoke-virtual {v2}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/googlenav/J;->a(Lcom/google/googlenav/bc;)V

    goto :goto_4c
.end method

.method public a(Lcom/google/googlenav/aW;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3002
    invoke-virtual {p0, p1}, LaM/am;->a(Lcom/google/googlenav/F;)LaM/aT;

    move-result-object v0

    .line 3003
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, LaM/aT;->a(Lcom/google/googlenav/aW;ZI)V

    .line 3004
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;ILcom/google/googlenav/aX;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2996
    invoke-virtual {p0, p1}, LaM/am;->a(Lcom/google/googlenav/F;)LaM/aT;

    move-result-object v0

    .line 2998
    invoke-virtual {v0, p1, p3, p2}, LaM/aT;->a(Lcom/google/googlenav/aW;Lcom/google/googlenav/aX;I)V

    .line 2999
    return-void
.end method

.method public a(Lcom/google/googlenav/aW;Lcom/google/googlenav/A;Z)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2781
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->k()Lcom/google/googlenav/aX;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2782
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->aC()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    if-ne v0, v3, :cond_18

    .line 2784
    invoke-direct {p0, p1}, LaM/am;->h(Lcom/google/googlenav/aW;)V

    .line 2836
    :goto_17
    return-void

    .line 2786
    :cond_18
    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->k()Lcom/google/googlenav/aX;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, LaM/am;->a(Lcom/google/googlenav/aW;ILcom/google/googlenav/aX;)V

    goto :goto_17

    .line 2791
    :cond_21
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->s()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2792
    invoke-virtual {p0, p1, v2}, LaM/am;->a(Lcom/google/googlenav/aW;I)V

    .line 2829
    :cond_2a
    :goto_2a
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ad()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 2831
    invoke-virtual {p1, v2}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    invoke-virtual {p0, v0}, LaM/am;->a(Lcom/google/googlenav/ai;)V

    .line 2835
    :cond_39
    invoke-virtual {p2}, Lcom/google/googlenav/A;->d()V

    goto :goto_17

    .line 2793
    :cond_3d
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->m()Lcom/google/googlenav/bc;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/googlenav/bc;->H:Z

    if-eqz v0, :cond_4f

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->af()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 2797
    invoke-direct {p0, p1}, LaM/am;->i(Lcom/google/googlenav/aW;)V

    goto :goto_2a

    .line 2798
    :cond_4f
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    if-ne v0, v3, :cond_68

    invoke-virtual {p2}, Lcom/google/googlenav/A;->a()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2803
    invoke-virtual {p0, p1, v2}, LaM/am;->a(Lcom/google/googlenav/aW;Z)LaM/bj;

    .line 2804
    invoke-virtual {p1, v2}, Lcom/google/googlenav/aW;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ai;

    invoke-virtual {p2, v0}, Lcom/google/googlenav/A;->a(Lcom/google/googlenav/ai;)V

    goto :goto_2a

    .line 2805
    :cond_68
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->f()I

    move-result v0

    if-gtz v0, :cond_7a

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->w()Z

    move-result v0

    if-nez v0, :cond_7a

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->H()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2811
    :cond_7a
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->z()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_85

    .line 2812
    invoke-direct {p0, p1, p3}, LaM/am;->c(Lcom/google/googlenav/aW;Z)V

    goto :goto_2a

    .line 2813
    :cond_85
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->au()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 2814
    invoke-direct {p0, p1}, LaM/am;->g(Lcom/google/googlenav/aW;)V

    goto :goto_2a

    .line 2816
    :cond_8f
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->w()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2817
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->F()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->K()Z

    move-result v0

    if-nez v0, :cond_ab

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->N()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 2822
    invoke-virtual {p0, p1, v2}, LaM/am;->a(Lcom/google/googlenav/aW;I)V

    goto :goto_2a

    .line 2824
    :cond_ab
    invoke-virtual {p0, p1, v3}, LaM/am;->b(Lcom/google/googlenav/aW;Z)V

    goto/16 :goto_2a
.end method

.method public a(Lcom/google/googlenav/ai;)V
    .registers 4
    .parameter

    .prologue
    .line 3859
    const-string v0, "locationMemory"

    invoke-static {v0}, Lad/z;->b(Ljava/lang/String;)Lad/z;

    move-result-object v0

    .line 3861
    invoke-static {p1}, Lad/y;->b(Lcom/google/googlenav/ai;)Lad/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/z;->a(Lad/y;)Z

    .line 3862
    return-void
.end method

.method protected a(Lcom/google/googlenav/layer/m;ZLaM/y;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1684
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LaM/am;->a(Lcom/google/googlenav/layer/m;ZLaM/y;ZZ)V

    .line 1685
    return-void
.end method

.method protected a(Lcom/google/googlenav/layer/m;ZLaM/y;ZZ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x6

    .line 1703
    if-eqz p2, :cond_7

    .line 1704
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, LaM/am;->b(IZ)V

    .line 1707
    :cond_7
    if-eqz p5, :cond_c

    .line 1708
    invoke-direct {p0}, LaM/am;->ac()V

    .line 1711
    :cond_c
    invoke-virtual {p0, v1}, LaM/am;->b(I)V

    .line 1714
    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LaM/am;->g(Ljava/lang/String;)V

    .line 1716
    invoke-virtual {p0, p3, p4}, LaM/am;->a(LaM/i;Z)V

    .line 1717
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/u;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2704
    move v1, v2

    :goto_2
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    .line 2705
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    invoke-virtual {v0, p1}, LaM/i;->b(Lcom/google/googlenav/ui/u;)V

    .line 2704
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2709
    :cond_19
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    invoke-virtual {v0, p1}, LaM/i;->e(Lcom/google/googlenav/ui/u;)V

    .line 2712
    :goto_20
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_36

    .line 2713
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    invoke-virtual {v0, p1}, LaM/i;->d(Lcom/google/googlenav/ui/u;)V

    .line 2712
    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 2715
    :cond_36
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/ju;LaM/aT;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3830
    invoke-virtual {p2}, LaM/aT;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_30

    .line 3851
    :goto_7
    :pswitch_7
    return-void

    .line 3832
    :pswitch_8
    const-string v0, "100"

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Ljava/lang/String;)V

    goto :goto_7

    .line 3835
    :pswitch_e
    invoke-virtual {p2}, LaM/aT;->bf()Lad/b;

    move-result-object v0

    .line 3838
    invoke-virtual {v0}, Lad/b;->y()I

    move-result v1

    if-nez v1, :cond_1c

    .line 3840
    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/wizard/ju;->a(Lad/b;)V

    goto :goto_7

    .line 3842
    :cond_1c
    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/wizard/ju;->c(Lad/b;)V

    goto :goto_7

    .line 3846
    :pswitch_20
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->y()Lcom/google/googlenav/ui/wizard/dp;

    move-result-object v0

    .line 3848
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dp;->j()V

    .line 3849
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/dp;->h()V

    goto :goto_7

    .line 3830
    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_8
        :pswitch_e
        :pswitch_7
        :pswitch_7
        :pswitch_20
    .end packed-switch
.end method

.method public a(ZZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 3932
    invoke-direct {p0, p2}, LaM/am;->h(Z)V

    .line 3935
    if-eqz p1, :cond_f

    .line 3938
    iget-object v2, p0, LaM/am;->q:Ljava/util/Vector;

    monitor-enter v2

    .line 3939
    :try_start_9
    iget-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 3940
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_2a

    .line 3944
    :cond_f
    if-eqz p3, :cond_14

    .line 3945
    invoke-virtual {p0}, LaM/am;->U()V

    .line 3950
    :cond_14
    iget-object v0, p0, LaM/am;->e:Lat/p;

    invoke-virtual {v0}, Lat/p;->a()Lat/D;

    move-result-object v0

    invoke-virtual {v0}, Lat/D;->l()V

    move v0, v1

    .line 3953
    :goto_1e
    sget-object v2, LaM/am;->t:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2d

    .line 3954
    sget-object v2, LaM/am;->u:[Z

    aput-boolean v1, v2, v0

    .line 3953
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 3940
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    .line 3956
    :cond_2d
    return-void
.end method

.method public a(LZ/a;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2098
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v2

    .line 2102
    if-eqz v2, :cond_e

    invoke-virtual {v2}, LaM/i;->aa()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2104
    :cond_e
    invoke-virtual {p1}, LZ/a;->e()C

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_1c

    .line 2105
    iget-object v0, p0, LaM/am;->o:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/ju;->a(LaM/am;Z)V

    .line 2121
    :goto_1b
    return v1

    .line 2107
    :cond_1c
    invoke-virtual {p1}, LZ/a;->e()C

    move-result v3

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_2f

    .line 2108
    iget-object v2, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/v;->j()LaM/bx;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, LaM/bx;->e(ILjava/lang/Object;)V

    goto :goto_1b

    .line 2113
    :cond_2f
    if-eqz v2, :cond_38

    invoke-virtual {v2, p1}, LaM/i;->a(LZ/a;)Z

    move-result v2

    if-eqz v2, :cond_38

    move v0, v1

    .line 2115
    :cond_38
    invoke-virtual {p1}, LZ/a;->c()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4e

    if-nez v0, :cond_4e

    invoke-virtual {p0}, LaM/am;->w()LaM/bK;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 2118
    iget-object v0, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->G()V

    move v0, v1

    :cond_4e
    move v1, v0

    .line 2121
    goto :goto_1b
.end method

.method public a(LZ/b;)Z
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2473
    iget-object v0, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->C()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 2476
    invoke-virtual {p0}, LaM/am;->n()LaM/az;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 2477
    invoke-virtual {p0}, LaM/am;->n()LaM/az;

    move-result-object v0

    invoke-virtual {v0, p1}, LaM/az;->a(LZ/b;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 2520
    :cond_1a
    :goto_1a
    return v2

    .line 2487
    :cond_1b
    invoke-virtual {p1}, LZ/b;->h()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p1}, LZ/b;->f()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 2489
    :cond_27
    iget-object v0, p0, LaM/am;->e:Lat/p;

    invoke-virtual {p1}, LZ/b;->k()I

    move-result v3

    invoke-virtual {p1}, LZ/b;->l()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lat/p;->b(II)Lat/B;

    move-result-object v3

    .line 2493
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 2494
    iget-boolean v4, p0, LaM/am;->M:Z

    if-nez v4, :cond_45

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, LaM/i;->aj()Z

    move-result v0

    if-nez v0, :cond_7a

    :cond_45
    move v0, v2

    .line 2499
    :goto_46
    if-nez v0, :cond_5f

    iget-object v0, p0, LaM/am;->N:Lat/B;

    if-eqz v0, :cond_5f

    iget-object v0, p0, LaM/am;->N:Lat/B;

    iget-object v4, p0, LaM/am;->e:Lat/p;

    invoke-virtual {v4}, Lat/p;->c()Lat/Y;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lat/B;->a(Lat/B;Lat/Y;)J

    move-result-wide v4

    sget v0, LaM/am;->J:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_7c

    .line 2502
    :cond_5f
    invoke-virtual {p0, v1}, LaM/am;->e(Z)V

    .line 2503
    invoke-virtual {p0, v3}, LaM/am;->a(Lat/B;)V

    move v0, v2

    .line 2510
    :goto_66
    invoke-virtual {p0, v0}, LaM/am;->c(Z)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2519
    :cond_6c
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 2520
    if-eqz v0, :cond_78

    invoke-virtual {v0, p1}, LaM/i;->a(LZ/b;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_78
    move v2, v1

    goto :goto_1a

    :cond_7a
    move v0, v1

    .line 2494
    goto :goto_46

    .line 2506
    :cond_7c
    invoke-virtual {p0, v3}, LaM/am;->b(Lat/B;)V

    move v0, v1

    goto :goto_66
.end method

.method protected a(LaM/i;ZZ)Z
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 606
    invoke-virtual {p1}, LaM/i;->aS()Z

    move-result v0

    if-nez v0, :cond_9

    .line 666
    :goto_8
    return v2

    .line 614
    :cond_9
    invoke-virtual {p1}, LaM/i;->aB()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, LaM/am;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sget v1, LaM/am;->a:I

    if-lt v0, v1, :cond_33

    move v1, v2

    .line 616
    :goto_1a
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    .line 617
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 618
    invoke-virtual {v0}, LaM/i;->aB()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 619
    invoke-virtual {p0, v0, v2, v3}, LaM/am;->b(LaM/i;ZZ)V

    .line 625
    :cond_33
    if-eqz p2, :cond_6d

    .line 626
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 635
    :goto_3a
    invoke-virtual {p1}, LaM/i;->aB()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 636
    if-eqz p2, :cond_76

    .line 637
    iget-object v0, p0, LaM/am;->p:Ljava/util/Vector;

    invoke-virtual {v0, p1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 646
    :cond_47
    :goto_47
    invoke-virtual {p1}, LaM/i;->aB()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 647
    invoke-direct {p0, p1}, LaM/am;->o(LaM/i;)V

    .line 650
    :cond_50
    iget-object v0, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/ac;->a(Lcom/google/googlenav/ui/ad;)V

    .line 653
    invoke-virtual {p0, p1}, LaM/am;->i(LaM/i;)V

    .line 656
    if-eqz p3, :cond_67

    .line 657
    invoke-virtual {p1, v3}, LaM/i;->f(I)V

    .line 661
    invoke-virtual {p1}, LaM/i;->at()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 662
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, LaM/i;->f(I)V

    :cond_67
    move v2, v3

    .line 666
    goto :goto_8

    .line 616
    :cond_69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    .line 628
    :cond_6d
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 631
    invoke-virtual {p0, p1}, LaM/am;->c(LaM/i;)V

    goto :goto_3a

    .line 639
    :cond_76
    iget-object v0, p0, LaM/am;->p:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_47
.end method

.method public a(Lat/B;Lat/B;IIIIILS/e;)Z
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2577
    if-nez p2, :cond_4

    .line 2653
    :goto_3
    return v2

    .line 2580
    :cond_4
    iget-object v0, p0, LaM/am;->f:Lat/u;

    invoke-virtual {v0}, Lat/u;->d()Lat/Y;

    move-result-object v0

    .line 2581
    invoke-virtual {p1, v0}, Lat/B;->a(Lat/Y;)I

    move-result v1

    invoke-virtual {p2, v0}, Lat/B;->a(Lat/Y;)I

    move-result v3

    sub-int v4, v1, v3

    .line 2582
    invoke-virtual {p1, v0}, Lat/B;->b(Lat/Y;)I

    move-result v1

    invoke-virtual {p2, v0}, Lat/B;->b(Lat/Y;)I

    move-result v0

    sub-int v5, v1, v0

    .line 2589
    packed-switch p3, :pswitch_data_74

    .line 2611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Feature.ANCHOR_* type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2591
    :pswitch_3a
    div-int/lit8 v0, p4, 0x2

    neg-int v1, v0

    .line 2592
    neg-int v0, p5

    .line 2626
    :goto_3e
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/common/Config;->i()I

    move-result v3

    .line 2630
    if-ge p4, v3, :cond_4e

    .line 2631
    sub-int v6, v3, p4

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    move p4, v3

    .line 2635
    :cond_4e
    if-ge p5, v3, :cond_56

    .line 2636
    sub-int v6, v3, p5

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v0, v6

    move p5, v3

    .line 2648
    :cond_56
    add-int v3, v1, p4

    .line 2649
    add-int v6, v0, p5

    .line 2653
    if-lt v4, v1, :cond_72

    if-gt v4, v3, :cond_72

    if-lt v5, v0, :cond_72

    if-gt v5, v6, :cond_72

    const/4 v0, 0x1

    :goto_63
    move v2, v0

    goto :goto_3

    .line 2596
    :pswitch_65
    div-int/lit8 v0, p4, 0x2

    neg-int v1, v0

    .line 2597
    div-int/lit8 v0, p5, 0x2

    neg-int v0, v0

    .line 2598
    goto :goto_3e

    .line 2601
    :pswitch_6c
    neg-int v1, p4

    .line 2602
    neg-int v0, p5

    .line 2603
    goto :goto_3e

    .line 2606
    :pswitch_6f
    neg-int v1, p6

    .line 2607
    neg-int v0, p7

    .line 2608
    goto :goto_3e

    :cond_72
    move v0, v2

    .line 2653
    goto :goto_63

    .line 2589
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_65
        :pswitch_6c
        :pswitch_6f
    .end packed-switch
.end method

.method public aa()I
    .registers 2

    .prologue
    .line 4153
    iget v0, p0, LaM/am;->B:I

    return v0
.end method

.method public ab()LaM/a;
    .registers 2

    .prologue
    .line 4246
    iget-object v0, p0, LaM/am;->G:LaM/a;

    return-object v0
.end method

.method public b(Lad/b;)LaM/O;
    .registers 5
    .parameter

    .prologue
    .line 1443
    invoke-virtual {p0}, LaM/am;->v()LaM/O;

    move-result-object v0

    .line 1444
    if-eqz v0, :cond_c

    invoke-virtual {v0}, LaM/O;->ae()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1445
    :cond_c
    invoke-virtual {p0, p1}, LaM/am;->a(Lad/b;)LaM/O;

    move-result-object v0

    .line 1468
    :cond_10
    :goto_10
    return-object v0

    .line 1451
    :cond_11
    iget-object v1, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1452
    iget-object v1, p0, LaM/am;->p:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1453
    invoke-virtual {p0, v0}, LaM/am;->h(LaM/i;)V

    .line 1454
    invoke-virtual {v0, p1}, LaM/O;->b(Lcom/google/googlenav/F;)V

    .line 1455
    invoke-virtual {v0}, LaM/O;->J()V

    .line 1456
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, LaM/am;->a(LaM/i;ZZ)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1459
    invoke-virtual {v0}, LaM/O;->aM()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 1460
    invoke-static {}, LaM/am;->Y()I

    move-result v1

    invoke-virtual {v0, v1}, LaM/O;->e(I)V

    .line 1461
    invoke-direct {p0, v0}, LaM/am;->b(LaM/i;)V

    .line 1465
    :cond_3c
    invoke-virtual {p0}, LaM/am;->d()V

    goto :goto_10
.end method

.method public b(Lcom/google/googlenav/aW;)LaM/x;
    .registers 11
    .parameter

    .prologue
    const/16 v4, 0x28

    const/16 v3, 0x24

    .line 1144
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 1145
    if-eqz v0, :cond_7c

    invoke-virtual {v0}, LaM/i;->av()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7c

    const/4 v0, 0x1

    .line 1147
    :goto_13
    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/z;->c()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v1

    .line 1152
    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v2

    if-eq v2, v3, :cond_2e

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v2

    if-eq v2, v4, :cond_2e

    .line 1159
    if-nez v0, :cond_7e

    .line 1160
    invoke-direct {p0}, LaM/am;->ac()V

    .line 1169
    :cond_2e
    :goto_2e
    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    const/16 v2, 0x11

    if-eq v0, v2, :cond_42

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    if-eq v0, v3, :cond_42

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v0

    if-ne v0, v4, :cond_51

    .line 1172
    :cond_42
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 1173
    if-eqz v0, :cond_51

    invoke-virtual {v0}, LaM/i;->ah()Z

    move-result v1

    if-nez v1, :cond_51

    .line 1175
    invoke-virtual {v0}, LaM/i;->aQ()V

    .line 1179
    :cond_51
    invoke-static {}, LaM/am;->X()I

    move-result v8

    .line 1180
    new-instance v5, Lcom/google/googlenav/n;

    new-instance v0, Lcom/google/googlenav/T;

    sget-object v1, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iget-object v2, p0, LaM/am;->h:Lat/k;

    iget-object v3, p0, LaM/am;->e:Lat/p;

    iget-object v4, p0, LaM/am;->f:Lat/u;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/T;-><init>(Lcom/google/googlenav/layer/m;Lat/o;Lat/p;Lat/u;)V

    invoke-direct {v5, p1, v0}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/F;Lcom/google/googlenav/F;)V

    .line 1182
    new-instance v0, LaM/x;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    sget-object v6, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iget-object v7, p0, LaM/am;->h:Lat/k;

    invoke-direct/range {v0 .. v8}, LaM/x;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;Lat/k;I)V

    .line 1185
    invoke-virtual {p0, v0}, LaM/am;->e(LaM/i;)V

    .line 1186
    return-object v0

    .line 1145
    :cond_7c
    const/4 v0, 0x0

    goto :goto_13

    .line 1162
    :cond_7e
    invoke-virtual {p0}, LaM/am;->e()V

    goto :goto_2e
.end method

.method public b(Lcom/google/googlenav/layer/m;Z)LaM/y;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1642
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, LaM/am;->a(Lcom/google/googlenav/layer/m;ZZZ)LaM/y;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)LaM/y;
    .registers 7
    .parameter

    .prologue
    .line 1733
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1734
    const/4 v0, 0x0

    move v2, v0

    :goto_a
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_41

    .line 1735
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 1736
    invoke-virtual {v0}, LaM/i;->av()I

    move-result v1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_3d

    move-object v1, v0

    .line 1737
    check-cast v1, LaM/y;

    invoke-virtual {v1}, LaM/y;->b()Lcom/google/googlenav/layer/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1738
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 1739
    check-cast v0, LaM/y;

    .line 1743
    :goto_3c
    return-object v0

    .line 1734
    :cond_3d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    .line 1743
    :cond_41
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method public b()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 457
    invoke-virtual {p0}, LaM/am;->U()V

    .line 461
    iget-object v0, p0, LaM/am;->e:Lat/p;

    invoke-virtual {v0}, Lat/p;->a()Lat/D;

    move-result-object v0

    invoke-virtual {v0}, Lat/D;->l()V

    move v0, v1

    .line 464
    :goto_e
    sget-object v2, LaM/am;->t:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1a

    .line 465
    sget-object v2, LaM/am;->u:[Z

    aput-boolean v1, v2, v0

    .line 464
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 467
    :cond_1a
    return-void
.end method

.method protected b(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 990
    invoke-static {p1}, LaM/am;->c(I)I

    move-result v0

    .line 992
    invoke-direct {p0, p1}, LaM/am;->f(I)I

    move-result v1

    if-lt v1, v0, :cond_26

    move v1, v2

    .line 993
    :goto_c
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    .line 994
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 995
    invoke-virtual {v0}, LaM/i;->av()I

    move-result v3

    if-ne v3, p1, :cond_27

    .line 998
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, LaM/am;->b(LaM/i;ZZ)V

    .line 1005
    :cond_26
    return-void

    .line 993
    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c
.end method

.method protected b(LaM/i;ZZ)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 815
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 818
    invoke-virtual {p0, p1}, LaM/am;->j(LaM/i;)V

    .line 821
    invoke-virtual {p1, v2}, LaM/i;->h(Z)V

    .line 824
    invoke-virtual {p1}, LaM/i;->aX()V

    .line 827
    invoke-virtual {p1}, LaM/i;->aU()V

    .line 829
    iget-object v1, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 830
    iget-object v1, p0, LaM/am;->p:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 831
    invoke-virtual {p0, p1}, LaM/am;->h(LaM/i;)V

    .line 834
    if-eqz v0, :cond_33

    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    if-eqz v0, :cond_33

    if-eqz p2, :cond_33

    .line 835
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    invoke-virtual {v0}, LaM/i;->aW()V

    .line 839
    :cond_33
    invoke-virtual {p1}, LaM/i;->av()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3d

    .line 840
    invoke-virtual {p0, v2}, LaM/am;->g(Z)V

    .line 843
    :cond_3d
    invoke-virtual {p0, p1}, LaM/am;->c(LaM/i;)V

    .line 845
    invoke-direct {p0, p1}, LaM/am;->a(LaM/i;)V

    .line 850
    invoke-virtual {p1}, LaM/i;->aM()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 851
    iget-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 852
    if-eqz p3, :cond_5c

    invoke-virtual {p1}, LaM/i;->aN()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 853
    invoke-direct {p0, p1}, LaM/am;->b(LaM/i;)V

    .line 862
    :cond_5c
    :goto_5c
    if-eqz p3, :cond_62

    .line 863
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, LaM/i;->f(I)V

    .line 865
    :cond_62
    return-void

    .line 856
    :cond_63
    invoke-direct {p0, p1}, LaM/am;->n(LaM/i;)V

    goto :goto_5c
.end method

.method protected b(Lat/B;)V
    .registers 9
    .parameter

    .prologue
    .line 2174
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, LaM/am;->L:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6f

    .line 2175
    iget-object v0, p0, LaM/am;->L:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/ai;

    .line 2176
    invoke-virtual {v0}, LaM/ai;->f()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 2177
    invoke-direct {p0}, LaM/am;->ad()Lcom/google/googlenav/ui/ap;

    move-result-object v2

    .line 2178
    invoke-virtual {v2}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v2

    .line 2179
    if-eqz v2, :cond_33

    .line 2180
    iget-object v3, p0, LaM/am;->f:Lat/u;

    invoke-virtual {v3}, Lat/u;->d()Lat/Y;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lat/B;->a(Lat/B;Lat/Y;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, LaM/ai;->b(J)V

    .line 2174
    :goto_2f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2183
    :cond_33
    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, LaM/ai;->b(J)V

    goto :goto_2f

    .line 2186
    :cond_3c
    invoke-virtual {v0}, LaM/ai;->a()LaM/i;

    move-result-object v4

    .line 2187
    invoke-virtual {v0}, LaM/ai;->b()Lcom/google/googlenav/E;

    move-result-object v2

    invoke-virtual {v4, v2, p1}, LaM/i;->a(Lcom/google/googlenav/E;Lat/B;)J

    move-result-wide v2

    .line 2190
    invoke-virtual {v4}, LaM/i;->ax()Z

    move-result v5

    if-nez v5, :cond_52

    .line 2191
    sget v5, LaM/am;->j:I

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 2196
    :cond_52
    invoke-virtual {v4}, LaM/i;->av()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5d

    .line 2197
    sget v5, LaM/am;->j:I

    int-to-long v5, v5

    add-long/2addr v2, v5

    .line 2203
    :cond_5d
    invoke-virtual {v4}, LaM/i;->av()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_6b

    .line 2204
    sget v4, LaM/am;->j:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 2207
    :cond_6b
    invoke-virtual {v0, v2, v3}, LaM/ai;->b(J)V

    goto :goto_2f

    .line 2210
    :cond_6f
    return-void
.end method

.method public b(Lcom/google/googlenav/J;LaM/aT;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 3796
    invoke-virtual {p2}, LaM/aT;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 3807
    :goto_7
    :pswitch_7
    return-void

    .line 3800
    :pswitch_8
    invoke-virtual {p0, p1, p2}, LaM/am;->a(Lcom/google/googlenav/J;LaM/aT;)V

    goto :goto_7

    .line 3803
    :pswitch_c
    iget-object v0, p0, LaM/am;->o:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v0

    invoke-virtual {p2}, LaM/aT;->bf()Lad/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/bZ;->c(Lad/b;)V

    goto :goto_7

    .line 3796
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public b(Lcom/google/googlenav/aW;Z)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2907
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->af()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2908
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->l()Lcom/google/googlenav/aY;

    move-result-object v0

    check-cast v0, LaM/bj;

    .line 2911
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, LaM/bj;->ax()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2914
    invoke-virtual {v0}, LaM/bj;->ae()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 2915
    invoke-virtual {v0, p1, p2}, LaM/bj;->b(Lcom/google/googlenav/aW;Z)V

    .line 2992
    :cond_1f
    :goto_1f
    return-void

    .line 2924
    :cond_20
    const-string v0, "20"

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->X()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->H()Z

    move-result v0

    if-nez v0, :cond_93

    .line 2926
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->l()Lcom/google/googlenav/aY;

    move-result-object v0

    instance-of v0, v0, LaM/bj;

    if-eqz v0, :cond_93

    .line 2927
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->l()Lcom/google/googlenav/aY;

    move-result-object v0

    check-cast v0, LaM/bj;

    .line 2928
    invoke-virtual {v0}, LaM/bj;->ax()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 2929
    invoke-virtual {v0}, LaM/bj;->ae()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 2930
    new-instance v1, Lcom/google/googlenav/n;

    new-instance v2, Lcom/google/googlenav/T;

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ac()Lcom/google/googlenav/layer/m;

    move-result-object v3

    iget-object v4, p0, LaM/am;->h:Lat/k;

    iget-object v5, p0, LaM/am;->e:Lat/p;

    iget-object v6, p0, LaM/am;->f:Lat/u;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/googlenav/T;-><init>(Lcom/google/googlenav/layer/m;Lat/o;Lat/p;Lat/u;)V

    invoke-direct {v1, p1, v2}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/F;Lcom/google/googlenav/F;)V

    invoke-virtual {v0, v1}, LaM/bj;->c(Lcom/google/googlenav/F;)V

    .line 2932
    invoke-virtual {v0, p1, p2}, LaM/bj;->b(Lcom/google/googlenav/aW;Z)V

    goto :goto_1f

    .line 2934
    :cond_67
    invoke-virtual {v0}, LaM/bj;->af()Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->W()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_93

    .line 2937
    invoke-virtual {v0}, LaM/bj;->h()V

    .line 2938
    new-instance v1, Lcom/google/googlenav/n;

    new-instance v2, Lcom/google/googlenav/T;

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ac()Lcom/google/googlenav/layer/m;

    move-result-object v3

    iget-object v4, p0, LaM/am;->h:Lat/k;

    iget-object v5, p0, LaM/am;->e:Lat/p;

    iget-object v6, p0, LaM/am;->f:Lat/u;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/googlenav/T;-><init>(Lcom/google/googlenav/layer/m;Lat/o;Lat/p;Lat/u;)V

    invoke-direct {v1, p1, v2}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/F;Lcom/google/googlenav/F;)V

    invoke-virtual {v0, v1}, LaM/bj;->c(Lcom/google/googlenav/F;)V

    .line 2940
    invoke-virtual {v0, p1, p2}, LaM/bj;->b(Lcom/google/googlenav/aW;Z)V

    goto :goto_1f

    :cond_93
    move v2, v3

    .line 2949
    :goto_94
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_e4

    .line 2950
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 2951
    invoke-virtual {v0}, LaM/i;->av()I

    move-result v1

    if-nez v1, :cond_149

    .line 2952
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 2953
    invoke-virtual {v0}, LaM/i;->aK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e1

    move-object v1, v0

    check-cast v1, LaM/bj;

    invoke-virtual {v1}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_149

    .line 2955
    :cond_e1
    invoke-virtual {p0, v0}, LaM/am;->g(LaM/i;)V

    :cond_e4
    move v2, v3

    .line 2965
    :goto_e5
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_10d

    .line 2966
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 2967
    invoke-virtual {v0}, LaM/i;->av()I

    move-result v1

    if-nez v1, :cond_14e

    move-object v1, v0

    check-cast v1, LaM/bj;

    invoke-virtual {v1}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->ae()Z

    move-result v1

    if-eqz v1, :cond_14e

    .line 2969
    check-cast v0, LaM/bj;

    invoke-virtual {v0, v3}, LaM/bj;->k(I)V

    .line 2974
    :cond_10d
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ad()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 2975
    invoke-direct {p0}, LaM/am;->aj()V

    .line 2978
    :cond_116
    iget-boolean v0, p0, LaM/am;->s:Z

    if-nez v0, :cond_152

    move v0, v4

    :goto_11b
    invoke-virtual {p0, p1, v0}, LaM/am;->a(Lcom/google/googlenav/aW;Z)LaM/bj;

    move-result-object v0

    .line 2979
    invoke-virtual {v0, p1, p2}, LaM/bj;->b(Lcom/google/googlenav/aW;Z)V

    .line 2982
    iget-boolean v1, p0, LaM/am;->s:Z

    if-nez v1, :cond_12c

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ae()Z

    move-result v1

    if-eqz v1, :cond_12f

    .line 2983
    :cond_12c
    invoke-virtual {v0, v4}, LaM/bj;->h(Z)V

    .line 2985
    :cond_12f
    invoke-virtual {p0, v3}, LaM/am;->f(Z)V

    .line 2989
    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ad()Z

    move-result v0

    if-nez v0, :cond_142

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->M()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2990
    :cond_142
    iget-object v0, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->i()V

    goto/16 :goto_1f

    .line 2949
    :cond_149
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_94

    .line 2965
    :cond_14e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e5

    :cond_152
    move v0, v3

    .line 2978
    goto :goto_11b
.end method

.method public b(Lcom/google/googlenav/ui/u;)V
    .registers 4
    .parameter

    .prologue
    .line 2729
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 2730
    if-eqz v0, :cond_26

    .line 2731
    invoke-virtual {v0, p1}, LaM/i;->a(Lcom/google/googlenav/ui/u;)V

    .line 2735
    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->A()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, LaM/i;->ai()Z

    move-result v0

    if-nez v0, :cond_26

    .line 2737
    invoke-virtual {p0}, LaM/am;->y()LaM/bx;

    move-result-object v0

    .line 2738
    if-eqz v0, :cond_26

    iget-object v1, p0, LaM/am;->D:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 2739
    iget-object v1, p0, LaM/am;->D:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, LaM/bx;->a(Lcom/google/googlenav/ui/u;Ljava/lang/String;)V

    .line 2743
    :cond_26
    return-void
.end method

.method public b(Z)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1992
    iget-object v0, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/v;->a(I)Z

    .line 1995
    iget-object v0, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/v;->b_(Z)V

    .line 1996
    iget-object v0, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0, v2, v2}, Lcom/google/googlenav/ui/v;->a(ZZ)V

    .line 2003
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 2004
    :goto_16
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_59

    .line 2005
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 2006
    invoke-virtual {v0}, LaM/i;->av()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3a

    .line 2007
    if-eqz p1, :cond_36

    .line 2008
    invoke-virtual {p0}, LaM/am;->V()V

    .line 2004
    :cond_32
    :goto_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    .line 2010
    :cond_36
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 2014
    :cond_3a
    invoke-virtual {v0}, LaM/i;->aB()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2015
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 2016
    :cond_44
    invoke-virtual {v0}, LaM/i;->aj()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2017
    invoke-virtual {v0}, LaM/i;->av()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_55

    .line 2019
    invoke-virtual {v0}, LaM/i;->al()V

    goto :goto_32

    .line 2023
    :cond_55
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 2027
    :cond_59
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 2028
    invoke-virtual {p0, v0, v6, v6}, LaM/am;->b(LaM/i;ZZ)V

    goto :goto_5d

    .line 2033
    :cond_6d
    sget-object v0, Lak/h;->a:Lak/h;

    invoke-virtual {v0}, Lak/h;->e()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {p0}, LaM/am;->n()LaM/az;

    move-result-object v0

    if-eqz v0, :cond_82

    .line 2034
    invoke-virtual {p0}, LaM/am;->n()LaM/az;

    move-result-object v0

    invoke-virtual {v0, v2}, LaM/az;->k(Z)V

    .line 2039
    :cond_82
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    if-eqz v0, :cond_97

    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    invoke-virtual {v0}, LaM/i;->av()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_97

    .line 2041
    invoke-virtual {p0}, LaM/am;->p()V

    .line 2045
    :cond_97
    iget-object v0, p0, LaM/am;->e:Lat/p;

    invoke-virtual {v0}, Lat/p;->a()Lat/D;

    move-result-object v0

    invoke-virtual {v0}, Lat/D;->l()V

    move v0, v2

    .line 2048
    :goto_a1
    sget-object v1, LaM/am;->t:[I

    array-length v1, v1

    if-ge v0, v1, :cond_ad

    .line 2049
    sget-object v1, LaM/am;->u:[Z

    aput-boolean v2, v1, v0

    .line 2048
    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    .line 2052
    :cond_ad
    invoke-virtual {p0}, LaM/am;->d()V

    .line 2056
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LaM/am;->c(LaM/i;)V

    .line 2057
    return-void
.end method

.method public b(LZ/a;)Z
    .registers 3
    .parameter

    .prologue
    .line 2126
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 2127
    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, LaM/i;->b(LZ/a;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public c(Lcom/google/googlenav/aW;)LaM/bj;
    .registers 11
    .parameter

    .prologue
    .line 1194
    new-instance v5, Lcom/google/googlenav/n;

    new-instance v0, Lcom/google/googlenav/T;

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ac()Lcom/google/googlenav/layer/m;

    move-result-object v1

    iget-object v2, p0, LaM/am;->h:Lat/k;

    iget-object v3, p0, LaM/am;->e:Lat/p;

    iget-object v4, p0, LaM/am;->f:Lat/u;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/T;-><init>(Lcom/google/googlenav/layer/m;Lat/o;Lat/p;Lat/u;)V

    invoke-direct {v5, p1, v0}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/F;Lcom/google/googlenav/F;)V

    .line 1196
    invoke-static {}, LaM/am;->X()I

    move-result v8

    .line 1197
    new-instance v0, LaM/bj;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ac()Lcom/google/googlenav/layer/m;

    move-result-object v6

    iget-object v7, p0, LaM/am;->h:Lat/k;

    invoke-direct/range {v0 .. v8}, LaM/bj;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;Lat/k;I)V

    .line 1199
    return-object v0
.end method

.method public c(Lcom/google/googlenav/layer/m;Z)LaM/y;
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 1757
    new-instance v0, LaM/bC;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    iget-object v6, p0, LaM/am;->h:Lat/k;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LaM/bC;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;)V

    .line 1759
    invoke-virtual {p0, p1, p2, v0}, LaM/am;->a(Lcom/google/googlenav/layer/m;ZLaM/y;)V

    .line 1760
    return-object v0
.end method

.method public c()V
    .registers 1

    .prologue
    .line 471
    return-void
.end method

.method c(LaM/i;)V
    .registers 4
    .parameter

    .prologue
    .line 474
    iget-object v0, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->n()Lcom/google/googlenav/ui/av;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 475
    if-eqz p1, :cond_10

    invoke-virtual {p1}, LaM/i;->aE()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 481
    :cond_10
    if-eqz p1, :cond_23

    invoke-virtual {p1}, LaM/i;->av()I

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x1

    .line 483
    :goto_19
    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/v;->n()Lcom/google/googlenav/ui/av;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/av;->a(Z)V

    .line 486
    :cond_22
    return-void

    .line 481
    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public c(Lad/b;)V
    .registers 4
    .parameter

    .prologue
    .line 3041
    invoke-virtual {p0, p1}, LaM/am;->a(Lcom/google/googlenav/F;)LaM/aT;

    move-result-object v0

    .line 3043
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LaM/aT;->a(Lad/b;I)V

    .line 3045
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 3285
    const-string v0, "PROTO_SAVED_LAYER_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3286
    if-eqz v0, :cond_10

    iget-object v0, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->ar()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected c(Z)Z
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2420
    iget v0, p0, LaM/am;->O:I

    .line 2421
    invoke-virtual {p0}, LaM/am;->C()I

    move-result v3

    iput v3, p0, LaM/am;->O:I

    .line 2422
    iget v3, p0, LaM/am;->O:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_49

    .line 2423
    if-nez p1, :cond_15

    iget v3, p0, LaM/am;->O:I

    if-eq v0, v3, :cond_3b

    .line 2424
    :cond_15
    iget-object v0, p0, LaM/am;->L:Ljava/util/Vector;

    iget v3, p0, LaM/am;->O:I

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/ai;

    .line 2425
    invoke-virtual {v0, v2}, LaM/ai;->a(Z)V

    .line 2427
    invoke-virtual {v0}, LaM/ai;->f()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 2430
    invoke-virtual {p0}, LaM/am;->h()LaM/C;

    move-result-object v0

    .line 2431
    if-nez v0, :cond_30

    move v0, v1

    .line 2442
    :goto_2f
    return v0

    .line 2434
    :cond_30
    invoke-virtual {v0}, LaM/C;->ar()Lcom/google/googlenav/F;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/F;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LaM/am;->a(LaM/i;I)V

    :cond_3b
    :goto_3b
    move v0, v2

    .line 2440
    goto :goto_2f

    .line 2437
    :cond_3d
    invoke-virtual {v0}, LaM/ai;->a()LaM/i;

    move-result-object v1

    invoke-virtual {v0}, LaM/ai;->c()I

    move-result v0

    invoke-virtual {p0, v1, v0}, LaM/am;->a(LaM/i;I)V

    goto :goto_3b

    :cond_49
    move v0, v1

    .line 2442
    goto :goto_2f
.end method

.method public d(Lcom/google/googlenav/aW;)LaM/aI;
    .registers 11
    .parameter

    .prologue
    .line 1207
    new-instance v5, Lcom/google/googlenav/n;

    new-instance v0, Lcom/google/googlenav/T;

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ac()Lcom/google/googlenav/layer/m;

    move-result-object v1

    iget-object v2, p0, LaM/am;->h:Lat/k;

    iget-object v3, p0, LaM/am;->e:Lat/p;

    iget-object v4, p0, LaM/am;->f:Lat/u;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/T;-><init>(Lcom/google/googlenav/layer/m;Lat/o;Lat/p;Lat/u;)V

    invoke-direct {v5, p1, v0}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/F;Lcom/google/googlenav/F;)V

    .line 1209
    new-instance v0, LaM/aI;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    invoke-virtual {p1}, Lcom/google/googlenav/aW;->ac()Lcom/google/googlenav/layer/m;

    move-result-object v6

    iget-object v7, p0, LaM/am;->h:Lat/k;

    iget-object v8, p0, LaM/am;->Q:Lcom/google/googlenav/offers/j;

    invoke-direct/range {v0 .. v8}, LaM/aI;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;Lat/k;Lcom/google/googlenav/ui/view/dialog/bs;)V

    .line 1211
    return-object v0
.end method

.method protected d()V
    .registers 2

    .prologue
    .line 779
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/am;->z:Z

    .line 780
    iget-object v0, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    invoke-interface {v0}, Lcom/google/googlenav/ui/ac;->e()V

    .line 781
    iget-object v0, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->U()V

    .line 782
    return-void
.end method

.method public d(I)V
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2064
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    .line 2065
    :goto_6
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 2066
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 2068
    invoke-virtual {v0}, LaM/i;->av()I

    move-result v4

    if-ne v4, p1, :cond_25

    invoke-virtual {v0}, LaM/i;->aD()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 2069
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2065
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 2072
    :cond_29
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 2073
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, LaM/am;->b(LaM/i;ZZ)V

    .line 2074
    invoke-direct {p0, v0}, LaM/am;->o(LaM/i;)V

    goto :goto_2d

    .line 2076
    :cond_41
    invoke-virtual {p0}, LaM/am;->d()V

    .line 2077
    return-void
.end method

.method public d(LaM/i;)V
    .registers 5
    .parameter

    .prologue
    .line 493
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_2c

    .line 495
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 496
    invoke-virtual {v0}, LaM/i;->aX()V

    .line 497
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 498
    iget-object v0, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/ac;->b(Lcom/google/googlenav/ui/ad;)V

    .line 499
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 500
    iget-object v0, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/ac;->a(Lcom/google/googlenav/ui/ad;)V

    .line 501
    invoke-virtual {p1}, LaM/i;->aW()V

    .line 502
    invoke-virtual {p0}, LaM/am;->d()V

    .line 504
    invoke-virtual {p0, p1}, LaM/am;->c(LaM/i;)V

    .line 515
    :cond_2c
    :goto_2c
    return-void

    .line 505
    :cond_2d
    invoke-virtual {v0}, LaM/i;->ax()Z

    move-result v1

    if-nez v1, :cond_37

    .line 506
    invoke-virtual {v0}, LaM/i;->aW()V

    goto :goto_2c

    .line 507
    :cond_37
    invoke-virtual {v0}, LaM/i;->k()Lcom/google/googlenav/settings/e;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, LaM/i;->k()Lcom/google/googlenav/settings/e;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->aw()Lcom/google/googlenav/settings/e;

    move-result-object v2

    if-eq v1, v2, :cond_2c

    .line 511
    const/4 v1, 0x1

    .line 512
    invoke-virtual {v0, v1}, LaM/i;->g(Z)Z

    goto :goto_2c
.end method

.method public d(Z)V
    .registers 4
    .parameter

    .prologue
    .line 2452
    invoke-virtual {p0}, LaM/am;->I()LaM/i;

    move-result-object v0

    .line 2453
    if-eqz v0, :cond_15

    .line 2454
    if-eqz p1, :cond_16

    .line 2455
    invoke-virtual {v0}, LaM/i;->aj()Z

    move-result v1

    iput-boolean v1, p0, LaM/am;->P:Z

    .line 2456
    iget-boolean v1, p0, LaM/am;->P:Z

    if-eqz v1, :cond_15

    .line 2457
    invoke-virtual {v0}, LaM/i;->al()V

    .line 2465
    :cond_15
    :goto_15
    return-void

    .line 2460
    :cond_16
    iget-boolean v1, p0, LaM/am;->P:Z

    if-eqz v1, :cond_15

    .line 2461
    invoke-virtual {v0}, LaM/i;->an()Z

    goto :goto_15
.end method

.method public d(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 3702
    invoke-virtual {p0, p1}, LaM/am;->e(Ljava/lang/String;)LaM/i;

    move-result-object v0

    check-cast v0, LaM/y;

    .line 3703
    if-eqz v0, :cond_d

    .line 3704
    invoke-virtual {v0}, LaM/y;->bF()Z

    move-result v0

    .line 3706
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public e(Lcom/google/googlenav/aW;)LaM/X;
    .registers 13
    .parameter

    .prologue
    .line 1478
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LaM/am;->b(I)V

    .line 1482
    new-instance v0, LaM/X;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->n:Lcom/google/googlenav/android/Y;

    iget-object v5, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    iget-object v6, p0, LaM/am;->k:Lcom/google/googlenav/friend/J;

    iget-object v7, p0, LaM/am;->l:Lcom/google/googlenav/friend/p;

    iget-object v8, p0, LaM/am;->m:Lcom/google/googlenav/friend/ai;

    iget-object v10, p0, LaM/am;->G:LaM/a;

    move-object v9, p1

    invoke-direct/range {v0 .. v10}, LaM/X;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/android/Y;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/friend/J;Lcom/google/googlenav/friend/p;Lcom/google/googlenav/friend/ai;Lcom/google/googlenav/F;LaM/a;)V

    .line 1485
    invoke-virtual {p0, v0}, LaM/am;->e(LaM/i;)V

    .line 1486
    invoke-virtual {p0, v0}, LaM/am;->a(LaM/X;)V

    .line 1487
    return-object v0
.end method

.method public e(Ljava/lang/String;)LaM/i;
    .registers 6
    .parameter

    .prologue
    .line 3715
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2f

    .line 3716
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 3717
    invoke-virtual {v0}, LaM/i;->av()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_2b

    move-object v1, v0

    check-cast v1, LaM/y;

    invoke-virtual {v1}, LaM/y;->b()Lcom/google/googlenav/layer/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 3722
    :goto_2a
    return-object v0

    .line 3715
    :cond_2b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 3722
    :cond_2f
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public e()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1048
    const/16 v0, 0x12

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1049
    const/16 v0, 0xf

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1050
    return-void
.end method

.method public e(I)V
    .registers 3
    .parameter

    .prologue
    .line 4149
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LaM/am;->a(ILjava/lang/Object;)V

    .line 4150
    return-void
.end method

.method public e(LaM/i;)V
    .registers 4
    .parameter

    .prologue
    .line 529
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, LaM/am;->a(LaM/i;ZLcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 530
    return-void
.end method

.method protected e(Z)V
    .registers 2
    .parameter

    .prologue
    .line 2690
    iput-boolean p1, p0, LaM/am;->M:Z

    .line 2691
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 1059
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1060
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1061
    return-void
.end method

.method public f(LaM/i;)V
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 679
    invoke-virtual {p1}, LaM/i;->av()I

    move-result v1

    invoke-virtual {p0, v1}, LaM/am;->b(I)V

    .line 682
    invoke-virtual {p1}, LaM/i;->av()I

    move-result v1

    sparse-switch v1, :sswitch_data_b8

    .line 737
    :goto_10
    return-void

    .line 684
    :sswitch_11
    invoke-virtual {p0, v5}, LaM/am;->f(Z)V

    .line 685
    check-cast p1, LaM/bj;

    invoke-virtual {p1}, LaM/bj;->bN()Lcom/google/googlenav/aW;

    move-result-object v1

    .line 686
    new-instance v2, Lcom/google/googlenav/aW;

    new-instance v3, Lcom/google/googlenav/bd;

    invoke-direct {v3}, Lcom/google/googlenav/bd;-><init>()V

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->A()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/bd;->a(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->z()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/bd;->a(I)Lcom/google/googlenav/bd;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->W()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/bd;->b(I)Lcom/google/googlenav/bd;

    move-result-object v3

    const-string v4, "13"

    invoke-virtual {v3, v4}, Lcom/google/googlenav/bd;->b(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->C()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/bd;->c(Ljava/lang/String;)Lcom/google/googlenav/bd;

    move-result-object v3

    iget-object v4, p0, LaM/am;->f:Lat/u;

    invoke-virtual {v4}, Lat/u;->f()Lat/H;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/bd;->a(Lat/H;)Lcom/google/googlenav/bd;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/googlenav/bd;->f(Z)Lcom/google/googlenav/bd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bd;->a()Lcom/google/googlenav/bc;

    move-result-object v3

    iget-object v4, p0, LaM/am;->f:Lat/u;

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/aW;-><init>(Lcom/google/googlenav/bc;Lat/u;)V

    .line 695
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->N()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/aW;->a(Z)V

    .line 696
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->aN()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/aW;->c(Z)V

    .line 698
    invoke-virtual {v1}, Lcom/google/googlenav/aW;->ar()Z

    move-result v3

    if-eqz v3, :cond_7b

    .line 701
    iget-object v3, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/v;->ao()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/z;->a()V

    .line 705
    :cond_7b
    iget-object v3, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1}, Lcom/google/googlenav/aW;->ar()Z

    move-result v1

    if-eqz v1, :cond_87

    :goto_83
    invoke-virtual {v3, v2, v0, v5}, Lcom/google/googlenav/ui/v;->a(Lcom/google/googlenav/aW;IZ)V

    goto :goto_10

    :cond_87
    const/4 v0, 0x6

    goto :goto_83

    .line 714
    :sswitch_89
    invoke-virtual {p0, p1}, LaM/am;->e(LaM/i;)V

    .line 716
    invoke-virtual {p1, v5}, LaM/i;->h(Z)V

    goto :goto_10

    .line 719
    :sswitch_90
    check-cast p1, LaM/y;

    invoke-virtual {p1}, LaM/y;->b()Lcom/google/googlenav/layer/m;

    move-result-object v1

    .line 721
    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "msid:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab

    .line 722
    invoke-virtual {p0, v1, v0}, LaM/am;->c(Lcom/google/googlenav/layer/m;Z)LaM/y;

    move-result-object v0

    .line 727
    :goto_a6
    invoke-virtual {v0, v5}, LaM/y;->h(Z)V

    goto/16 :goto_10

    .line 724
    :cond_ab
    invoke-virtual {p0, v1, v0}, LaM/am;->b(Lcom/google/googlenav/layer/m;Z)LaM/y;

    move-result-object v0

    goto :goto_a6

    .line 730
    :sswitch_b0
    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    invoke-virtual {v1, v5, v0}, Lcom/google/googlenav/ui/v;->a(ZZ)V

    goto/16 :goto_10

    .line 682
    nop

    :sswitch_data_b8
    .sparse-switch
        0x0 -> :sswitch_11
        0x1 -> :sswitch_89
        0x3 -> :sswitch_89
        0x6 -> :sswitch_90
        0x7 -> :sswitch_b0
        0x15 -> :sswitch_89
    .end sparse-switch
.end method

.method public f(Lcom/google/googlenav/aW;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1495
    iget-object v0, p0, LaM/am;->G:LaM/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v2, v2}, LaM/a;->a(ILcom/google/googlenav/F;Lcom/google/googlenav/android/Y;LaM/g;)V

    .line 1497
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 4274
    iput-object p1, p0, LaM/am;->D:Ljava/lang/String;

    .line 4275
    return-void
.end method

.method public f(Z)V
    .registers 2
    .parameter

    .prologue
    .line 3876
    iput-boolean p1, p0, LaM/am;->s:Z

    .line 3877
    return-void
.end method

.method public g()Lcom/google/googlenav/common/util/l;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 4301
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v3

    .line 4304
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    .line 4305
    :goto_a
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 4306
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 4307
    invoke-virtual {v0}, LaM/i;->g()Lcom/google/googlenav/common/util/l;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4305
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    .line 4309
    :cond_25
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v1, "visible layers"

    invoke-direct {v0, v1, v2, v4}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4312
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 4313
    iget-object v5, p0, LaM/am;->q:Ljava/util/Vector;

    monitor-enter v5

    move v1, v2

    .line 4314
    :goto_37
    :try_start_37
    iget-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_52

    .line 4315
    iget-object v0, p0, LaM/am;->q:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    .line 4316
    invoke-virtual {v0}, LaM/i;->g()Lcom/google/googlenav/common/util/l;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4314
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_37

    .line 4318
    :cond_52
    monitor-exit v5
    :try_end_53
    .catchall {:try_start_37 .. :try_end_53} :catchall_65

    .line 4319
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v1, "recent layers"

    invoke-direct {v0, v1, v2, v4}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4322
    new-instance v0, Lcom/google/googlenav/common/util/l;

    const-string v1, "LayerManager"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/common/util/l;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v0

    .line 4318
    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v5
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v0
.end method

.method public g(LaM/i;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 788
    if-nez p1, :cond_4

    .line 794
    :goto_3
    return-void

    .line 791
    :cond_4
    invoke-virtual {p0, p1, v0, v0}, LaM/am;->b(LaM/i;ZZ)V

    .line 792
    invoke-virtual {p0}, LaM/am;->d()V

    .line 793
    const-string v0, "h"

    invoke-direct {p0, p1, v0}, LaM/am;->a(LaM/i;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public g(Z)V
    .registers 2
    .parameter

    .prologue
    .line 3880
    sput-boolean p1, LaM/am;->v:Z

    .line 3881
    return-void
.end method

.method protected h()LaM/C;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 1298
    invoke-direct {p0}, LaM/am;->ad()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    .line 1299
    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->h()Lat/B;

    move-result-object v1

    .line 1300
    if-eqz v1, :cond_1d

    .line 1301
    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->g()Lan/s;

    move-result-object v2

    invoke-static {v2}, Lan/s;->d(Landroid/location/Location;)Ln/B;

    move-result-object v2

    .line 1302
    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->e()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LaM/am;->a(Lat/B;Ln/B;Ljava/lang/String;Z[Ljava/lang/String;)LaM/C;

    move-result-object v3

    .line 1305
    :cond_1d
    return-object v3
.end method

.method protected h(LaM/i;)V
    .registers 3
    .parameter

    .prologue
    .line 800
    iget-object v0, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/ac;->b(Lcom/google/googlenav/ui/ad;)V

    .line 801
    return-void
.end method

.method public i()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1334
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1335
    invoke-direct {p0, v1, v1}, LaM/am;->b(IZ)V

    .line 1336
    invoke-direct {p0, v2, v1}, LaM/am;->b(IZ)V

    .line 1339
    invoke-direct {p0}, LaM/am;->ac()V

    .line 1341
    invoke-virtual {p0, v2}, LaM/am;->b(I)V

    .line 1343
    return-void
.end method

.method protected i(LaM/i;)V
    .registers 7
    .parameter

    .prologue
    .line 895
    iget-object v2, p0, LaM/am;->H:Ljava/util/Map;

    monitor-enter v2

    .line 896
    :try_start_3
    iget-object v0, p0, LaM/am;->H:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/au;

    .line 897
    iget-object v1, p0, LaM/am;->H:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/a;

    invoke-virtual {p1}, LaM/i;->av()I

    move-result v4

    invoke-virtual {v1, v4}, Lt/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 898
    invoke-interface {v0, p1}, LaM/au;->a(LaM/i;)V

    goto :goto_d

    .line 901
    :catchall_2f
    move-exception v0

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2f

    .line 902
    return-void
.end method

.method public j()V
    .registers 4

    .prologue
    const/16 v2, 0x15

    const/4 v1, 0x0

    .line 1365
    const/16 v0, 0x1a

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1366
    invoke-direct {p0, v1, v1}, LaM/am;->b(IZ)V

    .line 1367
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1368
    invoke-direct {p0, v2, v1}, LaM/am;->b(IZ)V

    .line 1371
    invoke-direct {p0}, LaM/am;->ac()V

    .line 1373
    invoke-virtual {p0, v2}, LaM/am;->b(I)V

    .line 1374
    return-void
.end method

.method protected j(LaM/i;)V
    .registers 7
    .parameter

    .prologue
    .line 908
    iget-object v2, p0, LaM/am;->H:Ljava/util/Map;

    monitor-enter v2

    .line 909
    :try_start_3
    iget-object v0, p0, LaM/am;->H:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/au;

    .line 910
    iget-object v1, p0, LaM/am;->H:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/a;

    invoke-virtual {p1}, LaM/i;->av()I

    move-result v4

    invoke-virtual {v1, v4}, Lt/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 911
    invoke-interface {v0, p1}, LaM/au;->b(LaM/i;)V

    goto :goto_d

    .line 914
    :catchall_2f
    move-exception v0

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2f

    .line 915
    return-void
.end method

.method public k()V
    .registers 3

    .prologue
    .line 1395
    invoke-direct {p0}, LaM/am;->ac()V

    .line 1396
    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1397
    return-void
.end method

.method protected k(LaM/i;)V
    .registers 7
    .parameter

    .prologue
    .line 921
    iget-object v2, p0, LaM/am;->H:Ljava/util/Map;

    monitor-enter v2

    .line 922
    :try_start_3
    iget-object v0, p0, LaM/am;->H:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/au;

    .line 923
    iget-object v1, p0, LaM/am;->H:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt/a;

    invoke-virtual {p1}, LaM/i;->av()I

    move-result v4

    invoke-virtual {v1, v4}, Lt/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 924
    invoke-interface {v0, p1}, LaM/au;->c(LaM/i;)V

    goto :goto_d

    .line 927
    :catchall_2f
    move-exception v0

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2f

    .line 928
    return-void
.end method

.method public l()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1404
    invoke-direct {p0}, LaM/am;->ac()V

    .line 1405
    const/16 v0, 0x18

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1406
    const/16 v0, 0x17

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1407
    return-void
.end method

.method public m()LaM/az;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1501
    const/16 v0, 0x13

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1502
    const/16 v0, 0xd

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1504
    new-instance v0, LaM/az;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    invoke-direct {v0, v1, v2, v3, v4}, LaM/az;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;)V

    .line 1506
    invoke-virtual {p0, v0}, LaM/am;->e(LaM/i;)V

    .line 1507
    return-object v0
.end method

.method public m(LaM/i;)V
    .registers 3
    .parameter

    .prologue
    .line 4286
    iget-object v0, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    invoke-interface {v0}, Lcom/google/googlenav/ui/ac;->e()V

    .line 4287
    return-void
.end method

.method public n()LaM/az;
    .registers 2

    .prologue
    .line 1516
    const/16 v0, 0x13

    invoke-direct {p0, v0}, LaM/am;->g(I)LaM/i;

    move-result-object v0

    check-cast v0, LaM/az;

    return-object v0
.end method

.method public o()V
    .registers 3

    .prologue
    .line 1521
    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1522
    return-void
.end method

.method public p()V
    .registers 3

    .prologue
    .line 1526
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1527
    return-void
.end method

.method public q()LaM/bD;
    .registers 3

    .prologue
    .line 1596
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/f;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    .line 1602
    if-nez v0, :cond_11

    .line 1603
    new-instance v0, Lcom/google/googlenav/layer/m;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/googlenav/layer/m;-><init>(Ljava/lang/String;)V

    .line 1606
    :cond_11
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, LaM/am;->b(I)V

    .line 1608
    invoke-virtual {p0, v0}, LaM/am;->a(Lcom/google/googlenav/layer/m;)LaM/bD;

    move-result-object v0

    .line 1613
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LaM/am;->a(LaM/i;Z)V

    .line 1614
    return-object v0
.end method

.method public r()V
    .registers 2

    .prologue
    .line 1626
    invoke-virtual {p0}, LaM/am;->z()LaM/bD;

    move-result-object v0

    invoke-virtual {p0, v0}, LaM/am;->g(LaM/i;)V

    .line 1627
    return-void
.end method

.method public s()V
    .registers 9

    .prologue
    .line 1789
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaM/am;->b(IZ)V

    .line 1791
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlenav/layer/m;

    .line 1792
    new-instance v0, LaM/D;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    iget-object v6, p0, LaM/am;->h:Lat/k;

    invoke-direct/range {v0 .. v6}, LaM/D;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;Lcom/google/googlenav/layer/m;Lat/k;)V

    .line 1794
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LaM/am;->a(LaM/i;Z)V

    goto :goto_12

    .line 1796
    :cond_32
    return-void
.end method

.method public t()LaM/bw;
    .registers 6

    .prologue
    .line 1804
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, LaM/am;->b(I)V

    .line 1806
    new-instance v0, LaM/bw;

    iget-object v1, p0, LaM/am;->c:Lcom/google/googlenav/ui/v;

    iget-object v2, p0, LaM/am;->e:Lat/p;

    iget-object v3, p0, LaM/am;->f:Lat/u;

    iget-object v4, p0, LaM/am;->g:Lcom/google/googlenav/ui/ac;

    invoke-direct {v0, v1, v2, v3, v4}, LaM/bw;-><init>(Lcom/google/googlenav/ui/v;Lat/p;Lat/u;Lcom/google/googlenav/ui/ac;)V

    .line 1808
    invoke-virtual {p0, v0}, LaM/am;->e(LaM/i;)V

    .line 1809
    return-object v0
.end method

.method public u()LaM/bj;
    .registers 3

    .prologue
    .line 1858
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_26

    .line 1859
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/i;

    invoke-virtual {v0}, LaM/i;->av()I

    move-result v0

    if-nez v0, :cond_22

    .line 1860
    iget-object v0, p0, LaM/am;->i:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaM/bj;

    .line 1863
    :goto_21
    return-object v0

    .line 1858
    :cond_22
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    .line 1863
    :cond_26
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public v()LaM/O;
    .registers 2

    .prologue
    .line 1872
    const/4 v0, 0x1

    invoke-direct {p0, v0}, LaM/am;->g(I)LaM/i;

    move-result-object v0

    check-cast v0, LaM/O;

    return-object v0
.end method

.method public w()LaM/bK;
    .registers 2

    .prologue
    .line 1881
    const/16 v0, 0x15

    invoke-direct {p0, v0}, LaM/am;->g(I)LaM/i;

    move-result-object v0

    check-cast v0, LaM/bK;

    return-object v0
.end method

.method public x()LaM/bU;
    .registers 2

    .prologue
    .line 1890
    const/16 v0, 0x17

    invoke-direct {p0, v0}, LaM/am;->g(I)LaM/i;

    move-result-object v0

    check-cast v0, LaM/bU;

    return-object v0
.end method

.method public y()LaM/bx;
    .registers 2

    .prologue
    .line 1897
    const/4 v0, 0x2

    invoke-direct {p0, v0}, LaM/am;->g(I)LaM/i;

    move-result-object v0

    check-cast v0, LaM/bx;

    return-object v0
.end method

.method public z()LaM/bD;
    .registers 2

    .prologue
    .line 1906
    const/4 v0, 0x7

    invoke-direct {p0, v0}, LaM/am;->g(I)LaM/i;

    move-result-object v0

    check-cast v0, LaM/bD;

    return-object v0
.end method
