.class public abstract Lad/b;
.super Lac/a;
.source "SourceFile"

# interfaces
.implements Lad/k;
.implements Lcom/google/googlenav/F;


# static fields
.field public static final d:Lat/Y;

.field private static final m:Ljava/lang/Object;

.field private static n:I

.field private static final q:LaT/h;

.field private static final r:LaT/h;


# instance fields
.field private A:[Lad/y;

.field private B:Lad/y;

.field private C:Lad/y;

.field private D:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private E:I

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Z

.field private I:Z

.field private J:I

.field private K:Z

.field private L:I

.field private M:I

.field private N:B

.field private O:I

.field private P:I

.field private Q:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private R:Z

.field private S:Z

.field private T:I

.field private U:Z

.field private V:Ljava/lang/String;

.field private W:I

.field private X:Lad/e;

.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:I

.field e:Lcom/google/googlenav/ui/p;

.field protected f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field protected g:I

.field protected h:[Lad/h;

.field i:[Lad/d;

.field j:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field protected k:I

.field protected l:[I

.field private final o:I

.field private p:I

.field private s:Z

.field private t:Lad/l;

.field private u:Lad/y;

.field private v:Z

.field private w:[Lad/y;

.field private x:Lad/y;

.field private y:Z

.field private z:[Lad/y;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x16

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/b;->m:Ljava/lang/Object;

    .line 86
    const/4 v0, 0x1

    sput v0, Lad/b;->n:I

    .line 103
    new-instance v0, LaT/h;

    const-string v1, "directions"

    const-string v2, "r"

    invoke-direct {v0, v1, v2, v3}, LaT/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lad/b;->q:LaT/h;

    .line 109
    new-instance v0, LaT/h;

    const-string v1, "directions time update"

    const-string v2, "T"

    invoke-direct {v0, v1, v2, v3}, LaT/h;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lad/b;->r:LaT/h;

    .line 148
    const/16 v0, 0xf

    invoke-static {v0}, Lat/Y;->b(I)Lat/Y;

    move-result-object v0

    sput-object v0, Lad/b;->d:Lat/Y;

    return-void
.end method

.method protected constructor <init>(Lad/k;Lcom/google/googlenav/ui/p;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 387
    invoke-interface {p1}, Lad/k;->aq()Lad/y;

    move-result-object v0

    invoke-interface {p1}, Lad/k;->as()Lad/y;

    move-result-object v1

    invoke-interface {p1}, Lad/k;->au()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lad/b;-><init>(Lad/y;Lad/y;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/p;)V

    .line 389
    return-void
.end method

.method protected constructor <init>(Lad/y;Lad/y;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/p;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 371
    invoke-direct {p0, p4}, Lad/b;-><init>(Lcom/google/googlenav/ui/p;)V

    .line 372
    iput-object p1, p0, Lad/b;->u:Lad/y;

    .line 373
    iput-object p2, p0, Lad/b;->x:Lad/y;

    .line 374
    iput-object p3, p0, Lad/b;->D:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lad/b;->h:[Lad/h;

    .line 376
    const/4 v0, -0x1

    iput v0, p0, Lad/b;->k:I

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lad/b;->S:Z

    .line 380
    sget-object v0, Lad/b;->q:LaT/h;

    invoke-virtual {v0}, LaT/h;->a()V

    .line 381
    sget-object v0, Lad/b;->r:LaT/h;

    invoke-virtual {v0}, LaT/h;->a()V

    .line 382
    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/p;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 359
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lad/b;->a:Ljava/lang/String;

    .line 94
    iput v3, p0, Lad/b;->b:I

    .line 97
    iput v1, p0, Lad/b;->c:I

    .line 100
    iput v3, p0, Lad/b;->p:I

    .line 157
    iput-boolean v1, p0, Lad/b;->s:Z

    .line 162
    invoke-static {}, Lad/l;->a()Lad/l;

    move-result-object v0

    iput-object v0, p0, Lad/b;->t:Lad/l;

    .line 172
    new-array v0, v1, [Lad/y;

    iput-object v0, p0, Lad/b;->A:[Lad/y;

    .line 179
    iput-object v2, p0, Lad/b;->D:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 182
    iput-object v2, p0, Lad/b;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 187
    iput v1, p0, Lad/b;->E:I

    .line 193
    iput-object v2, p0, Lad/b;->G:Ljava/lang/String;

    .line 201
    iput-boolean v1, p0, Lad/b;->H:Z

    .line 212
    new-array v0, v1, [Lad/d;

    iput-object v0, p0, Lad/b;->i:[Lad/d;

    .line 214
    new-array v0, v1, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-object v0, p0, Lad/b;->j:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 218
    iput-boolean v4, p0, Lad/b;->I:Z

    .line 221
    iput v1, p0, Lad/b;->J:I

    .line 224
    iput-boolean v1, p0, Lad/b;->K:Z

    .line 230
    iput v1, p0, Lad/b;->L:I

    .line 253
    iput v1, p0, Lad/b;->P:I

    .line 258
    new-array v0, v1, [I

    iput-object v0, p0, Lad/b;->l:[I

    .line 265
    new-array v0, v1, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-object v0, p0, Lad/b;->Q:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 282
    const/16 v0, 0xf

    iput v0, p0, Lad/b;->T:I

    .line 288
    iput-boolean v4, p0, Lad/b;->U:Z

    .line 294
    iput-object v2, p0, Lad/b;->V:Ljava/lang/String;

    .line 302
    iput v3, p0, Lad/b;->W:I

    .line 360
    iput-object p1, p0, Lad/b;->e:Lcom/google/googlenav/ui/p;

    .line 361
    invoke-static {}, Lad/b;->aV()I

    move-result v0

    iput v0, p0, Lad/b;->o:I

    .line 364
    sget-object v0, Lad/b;->q:LaT/h;

    invoke-virtual {v0}, LaT/h;->a()V

    .line 365
    sget-object v0, Lad/b;->r:LaT/h;

    invoke-virtual {v0}, LaT/h;->a()V

    .line 366
    return-void
.end method

.method protected constructor <init>([Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/p;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 393
    invoke-direct {p0, p2}, Lad/b;-><init>(Lcom/google/googlenav/ui/p;)V

    .line 394
    array-length v0, p1

    .line 397
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Lad/y;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/y;

    move-result-object v1

    iput-object v1, p0, Lad/b;->u:Lad/y;

    .line 398
    add-int/lit8 v1, v0, -0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Lad/y;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/y;

    move-result-object v1

    iput-object v1, p0, Lad/b;->x:Lad/y;

    .line 401
    const/4 v1, 0x2

    if-le v0, v1, :cond_35

    .line 402
    add-int/lit8 v0, v0, -0x2

    new-array v0, v0, [Lad/y;

    iput-object v0, p0, Lad/b;->A:[Lad/y;

    .line 403
    const/4 v0, 0x1

    :goto_21
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_35

    .line 404
    iget-object v1, p0, Lad/b;->A:[Lad/y;

    add-int/lit8 v2, v0, -0x1

    aget-object v3, p1, v0

    invoke-static {v3}, Lad/y;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/y;

    move-result-object v3

    aput-object v3, v1, v2

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 407
    :cond_35
    return-void
.end method

.method static synthetic a(Lad/b;)I
    .registers 2
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lad/b;->O:I

    return v0
.end method

.method static synthetic a(Lad/b;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lad/b;->O:I

    return p1
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/googlenav/ui/p;)Lad/b;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 1145
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1147
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    .line 1148
    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v0, p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;I)I

    .line 1149
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 1151
    if-nez v1, :cond_1f

    .line 1152
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed directions stream. directionsResponse is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1154
    :cond_1f
    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 1155
    invoke-static {v1, p1}, Lad/b;->b(ILcom/google/googlenav/ui/p;)Lad/b;

    move-result-object v1

    .line 1156
    invoke-virtual {v1, v0}, Lad/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1157
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed directions stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1159
    :cond_35
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lad/b;->b(Z)V

    .line 1160
    return-object v1
.end method

.method protected static a(Lad/y;Lad/y;)Lad/y;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 601
    if-nez p0, :cond_3

    .line 623
    :cond_2
    :goto_2
    return-object p1

    .line 606
    :cond_3
    invoke-virtual {p0}, Lad/y;->o()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lad/y;->t()Z

    move-result v0

    if-nez v0, :cond_2

    .line 611
    invoke-virtual {p0}, Lad/y;->d()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2b

    invoke-virtual {p0}, Lad/y;->d()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    invoke-virtual {p0}, Lad/y;->d()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2b

    invoke-virtual {p0}, Lad/y;->d()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_38

    .line 615
    :cond_2b
    invoke-virtual {p0}, Lad/y;->h()Ljava/lang/String;

    move-result-object v0

    .line 623
    :goto_2f
    invoke-virtual {p1}, Lad/y;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lad/y;->a(Lad/y;Ljava/lang/String;Ljava/lang/String;)Lad/y;

    move-result-object p1

    goto :goto_2

    .line 616
    :cond_38
    invoke-virtual {p1}, Lad/y;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 617
    invoke-virtual {p1}, Lad/y;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 620
    :cond_47
    invoke-virtual {p1}, Lad/y;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method private a(Lad/y;[Lad/y;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x7

    const/4 v1, 0x0

    .line 1182
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/bz;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 1186
    if-nez p2, :cond_33

    move v0, v1

    .line 1189
    :goto_11
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1191
    invoke-static {p1}, Lad/y;->a(Lad/y;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1193
    if-eqz p2, :cond_35

    .line 1194
    :goto_1e
    array-length v0, p2

    if-ge v1, v0, :cond_35

    .line 1195
    aget-object v0, p2, v1

    .line 1199
    invoke-virtual {v0, p1}, Lad/y;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 1200
    invoke-static {v0}, Lad/y;->a(Lad/y;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1194
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1186
    :cond_33
    const/4 v0, 0x1

    goto :goto_11

    .line 1205
    :cond_35
    return-object v2
.end method

.method public static a(Lat/B;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2021
    if-ne p1, v3, :cond_8

    .line 2022
    invoke-static {p0}, Lat/C;->d(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 2030
    :goto_7
    return-object v0

    .line 2024
    :cond_8
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/do;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 2026
    const/16 v1, 0xd

    invoke-static {p0}, Lat/C;->a(Lat/B;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2028
    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_7
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 2042
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 2043
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2044
    if-eqz p1, :cond_12

    .line 2045
    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 2047
    :cond_12
    return-object v0
.end method

.method protected static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lad/y;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 504
    invoke-static {p1}, Lad/y;->a(Lad/y;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 505
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 506
    return-void
.end method

.method private aU()V
    .registers 2

    .prologue
    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lad/b;->s:Z

    .line 555
    return-void
.end method

.method private static aV()I
    .registers 2

    .prologue
    .line 1304
    sget-object v1, Lad/b;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 1305
    :try_start_3
    sget v0, Lad/b;->n:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lad/b;->n:I

    monitor-exit v1

    return v0

    .line 1306
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private aW()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1671
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    if-nez v0, :cond_c

    .line 1672
    const-string v0, ""

    .line 1698
    :goto_b
    return-object v0

    .line 1674
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1675
    invoke-virtual {p0}, Lad/b;->Q()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    .line 1676
    invoke-virtual {p0}, Lad/b;->R()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v2

    .line 1677
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7c

    invoke-static {v2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7c

    const/16 v3, 0x5bf

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1682
    :goto_3d
    invoke-virtual {p0}, Lad/b;->N()Z

    move-result v2

    if-eqz v2, :cond_64

    .line 1683
    invoke-virtual {p0}, Lad/b;->M()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 1685
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7f

    .line 1686
    const/16 v3, 0x374

    invoke-static {v3}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    :cond_64
    :goto_64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_77

    invoke-virtual {p0}, Lad/b;->O()I

    move-result v0

    if-lez v0, :cond_77

    .line 1696
    invoke-virtual {p0}, Lad/b;->am()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    :cond_77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1677
    :cond_7c
    const-string v0, ""

    goto :goto_3d

    .line 1690
    :cond_7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64
.end method

.method static synthetic b(Lad/b;I)I
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lad/b;->M:I

    return p1
.end method

.method private static b(ILcom/google/googlenav/ui/p;)Lad/b;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1126
    packed-switch p0, :pswitch_data_1c

    .line 1134
    new-instance v0, Lad/s;

    invoke-direct {v0, p1}, Lad/s;-><init>(Lcom/google/googlenav/ui/p;)V

    :goto_8
    return-object v0

    .line 1128
    :pswitch_9
    new-instance v0, Lad/w;

    invoke-direct {v0, p1}, Lad/w;-><init>(Lcom/google/googlenav/ui/p;)V

    goto :goto_8

    .line 1130
    :pswitch_f
    new-instance v0, Lad/x;

    invoke-direct {v0, p1}, Lad/x;-><init>(Lcom/google/googlenav/ui/p;)V

    goto :goto_8

    .line 1132
    :pswitch_15
    new-instance v0, Lad/i;

    invoke-direct {v0, p1}, Lad/i;-><init>(Lcom/google/googlenav/ui/p;)V

    goto :goto_8

    .line 1126
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
        :pswitch_15
    .end packed-switch
.end method

.method static synthetic b(Lad/b;)Lad/y;
    .registers 2
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lad/b;->x:Lad/y;

    return-object v0
.end method

.method public static b(II)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 3140
    shl-int v1, v0, p0

    and-int/2addr v1, p1

    if-lez v1, :cond_7

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/b;
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1167
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 1168
    invoke-static {v0, v2}, Lad/b;->b(ILcom/google/googlenav/ui/p;)Lad/b;

    move-result-object v0

    .line 1169
    const-string v1, ""

    invoke-static {v1}, Lad/y;->a(Ljava/lang/String;)Lad/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/b;->a(Lad/y;)V

    .line 1170
    const-string v1, ""

    invoke-static {v1}, Lad/y;->a(Ljava/lang/String;)Lad/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/b;->b(Lad/y;)V

    .line 1171
    invoke-virtual {v0, p0, v2}, Lad/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    .line 1172
    return-object v0
.end method

.method public static e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I
    .registers 2
    .parameter

    .prologue
    .line 1997
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static f(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)I
    .registers 2
    .parameter

    .prologue
    .line 2007
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v0

    .line 2008
    if-eqz v0, :cond_e

    .line 2009
    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    .line 2011
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/h;
    .registers 4
    .parameter

    .prologue
    .line 565
    new-instance v0, Lad/h;

    invoke-direct {v0, p0, p1}, Lad/h;-><init>(Lad/b;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 566
    invoke-virtual {v0}, Lad/h;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 569
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 577
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 578
    if-eqz v1, :cond_d

    if-eq v1, v0, :cond_d

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 10
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 1023
    iget-object v0, p0, Lad/b;->e:Lcom/google/googlenav/ui/p;

    if-nez v0, :cond_6

    .line 1049
    :goto_5
    return-void

    .line 1027
    :cond_6
    invoke-static {p1}, Lad/b;->j(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Set;

    move-result-object v0

    .line 1028
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/bz;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1030
    const/16 v2, 0x11

    iget-object v3, p0, Lad/b;->e:Lcom/google/googlenav/ui/p;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/p;->f()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1033
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1034
    iget-object v0, p0, Lad/b;->e:Lcom/google/googlenav/ui/p;

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/ui/p;->d(J)[B

    move-result-object v0

    .line 1035
    if-eqz v0, :cond_20

    array-length v5, v0

    if-eqz v5, :cond_20

    .line 1039
    invoke-virtual {v1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 1041
    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1042
    const/4 v3, 0x3

    invoke-virtual {v5, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBytes(I[B)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1044
    invoke-virtual {v1, v7, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_20

    .line 1048
    :cond_4b
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_5
.end method

.method private static j(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Set;
    .registers 12
    .parameter

    .prologue
    .line 1056
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1059
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    .line 1060
    const/4 v0, 0x0

    move v2, v0

    :goto_d
    if-ge v2, v4, :cond_54

    .line 1061
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 1063
    const/16 v0, 0x9

    invoke-virtual {v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v6

    .line 1064
    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, v6, :cond_50

    .line 1065
    const/16 v0, 0x9

    invoke-virtual {v5, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v7

    .line 1067
    const/16 v0, 0xa

    invoke-virtual {v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v8

    .line 1068
    const/4 v0, 0x0

    :goto_2c
    if-ge v0, v8, :cond_4c

    .line 1069
    const/16 v9, 0xa

    invoke-virtual {v7, v9, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v9

    .line 1070
    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v10

    if-eqz v10, :cond_49

    .line 1071
    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1068
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 1064
    :cond_4c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    .line 1060
    :cond_50
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    .line 1077
    :cond_54
    return-object v3
.end method


# virtual methods
.method public A()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 696
    iget-boolean v2, p0, Lad/b;->U:Z

    if-nez v2, :cond_7

    .line 708
    :cond_6
    :goto_6
    return v0

    .line 699
    :cond_7
    iget v2, p0, Lad/b;->p:I

    packed-switch v2, :pswitch_data_1c

    goto :goto_6

    .line 706
    :pswitch_d
    invoke-virtual {p0, v0}, Lad/b;->t(I)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {p0, v1}, Lad/b;->t(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_19
    move v0, v1

    goto :goto_6

    .line 699
    nop

    :pswitch_data_1c
    .packed-switch 0x4
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public B()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x31a

    .line 723
    .line 724
    invoke-virtual {p0}, Lad/b;->y()I

    move-result v0

    packed-switch v0, :pswitch_data_56

    .line 748
    :pswitch_a
    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 752
    :cond_e
    :goto_e
    return-object v1

    .line 727
    :pswitch_f
    invoke-virtual {p0}, Lad/b;->aD()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 728
    invoke-virtual {p0}, Lad/b;->aq()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->e()Ljava/lang/String;

    move-result-object v0

    .line 732
    :goto_1d
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 733
    const/16 v1, 0x6e

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 729
    :cond_34
    invoke-virtual {p0}, Lad/b;->aE()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 730
    invoke-virtual {p0}, Lad/b;->as()Lad/y;

    move-result-object v0

    invoke-virtual {v0}, Lad/y;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    .line 741
    :pswitch_43
    iget-boolean v0, p0, Lad/b;->U:Z

    if-eqz v0, :cond_4c

    .line 742
    invoke-static {v2}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 744
    :cond_4c
    const/16 v0, 0x31e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_53
    move-object v0, v1

    goto :goto_1d

    .line 724
    nop

    :pswitch_data_56
    .packed-switch 0x3
        :pswitch_f
        :pswitch_a
        :pswitch_43
    .end packed-switch
.end method

.method public C()[Lad/y;
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, Lad/b;->w:[Lad/y;

    return-object v0
.end method

.method public D()[Lad/y;
    .registers 2

    .prologue
    .line 760
    iget-object v0, p0, Lad/b;->z:[Lad/y;

    return-object v0
.end method

.method public E()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 764
    iget v1, p0, Lad/b;->c:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public F()Z
    .registers 2

    .prologue
    .line 769
    iget-boolean v0, p0, Lad/b;->R:Z

    return v0
.end method

.method public G()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 773
    iput v0, p0, Lad/b;->c:I

    .line 774
    iput-boolean v0, p0, Lad/b;->R:Z

    .line 775
    return-void
.end method

.method public H()Lcom/google/googlenav/ui/p;
    .registers 2

    .prologue
    .line 1081
    iget-object v0, p0, Lad/b;->e:Lcom/google/googlenav/ui/p;

    return-object v0
.end method

.method public I()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 1212
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/aY;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1214
    const/4 v0, 0x1

    iget v3, p0, Lad/b;->p:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1215
    const/4 v0, 0x2

    iget v3, p0, Lad/b;->b:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1217
    iget-object v0, p0, Lad/b;->t:Lad/l;

    invoke-virtual {v0}, Lad/l;->b()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1218
    const/4 v0, 0x3

    iget-object v3, p0, Lad/b;->t:Lad/l;

    invoke-virtual {v3}, Lad/l;->c()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Date;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1221
    :cond_2d
    const/4 v0, 0x4

    iget-object v3, p0, Lad/b;->t:Lad/l;

    invoke-virtual {v3}, Lad/l;->d()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1224
    const/16 v0, 0xd

    iget v3, p0, Lad/b;->P:I

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1227
    iget-object v0, p0, Lad/b;->u:Lad/y;

    iget-object v3, p0, Lad/b;->w:[Lad/y;

    invoke-direct {p0, v0, v3}, Lad/b;->a(Lad/y;[Lad/y;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1230
    iget-object v0, p0, Lad/b;->x:Lad/y;

    iget-object v3, p0, Lad/b;->z:[Lad/y;

    invoke-direct {p0, v0, v3}, Lad/b;->a(Lad/y;[Lad/y;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    move v0, v1

    .line 1237
    :goto_55
    iget v3, p0, Lad/b;->J:I

    if-ge v0, v3, :cond_6a

    .line 1238
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 1239
    iget-object v4, p0, Lad/b;->h:[Lad/h;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lad/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1240
    invoke-virtual {v2, v5, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1237
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_6a
    move v0, v1

    .line 1243
    :goto_6b
    iget-object v3, p0, Lad/b;->i:[Lad/d;

    array-length v3, v3

    if-ge v0, v3, :cond_80

    .line 1244
    const/16 v3, 0xc

    iget-object v4, p0, Lad/b;->i:[Lad/d;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lad/d;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1243
    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    :cond_80
    move v0, v1

    .line 1248
    :goto_81
    iget-object v3, p0, Lad/b;->j:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    array-length v3, v3

    if-ge v0, v3, :cond_92

    .line 1249
    const/16 v3, 0x10

    iget-object v4, p0, Lad/b;->j:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1248
    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    .line 1253
    :cond_92
    invoke-direct {p0, v2}, Lad/b;->i(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1256
    :goto_95
    iget-object v0, p0, Lad/b;->Q:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    array-length v0, v0

    if-ge v1, v0, :cond_a6

    .line 1257
    const/16 v0, 0xe

    iget-object v3, p0, Lad/b;->Q:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    aget-object v3, v3, v1

    invoke-virtual {v2, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1256
    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    .line 1261
    :cond_a6
    return-object v2
.end method

.method protected J()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 6

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 1275
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ag;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 1276
    const/4 v1, 0x2

    invoke-virtual {p0}, Lad/b;->I()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1278
    iget-object v1, p0, Lad/b;->u:Lad/y;

    invoke-virtual {v1}, Lad/y;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1280
    iget-object v1, p0, Lad/b;->x:Lad/y;

    invoke-virtual {v1}, Lad/y;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 1282
    invoke-virtual {p0}, Lad/b;->aL()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 1283
    invoke-virtual {p0}, Lad/b;->aL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1285
    :cond_34
    const/4 v1, 0x4

    invoke-virtual {p0}, Lad/b;->az()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1287
    invoke-virtual {p0}, Lad/b;->X()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-virtual {p0}, Lad/b;->W()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 1288
    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1291
    :cond_4c
    return-object v0
.end method

.method public K()I
    .registers 3

    .prologue
    .line 1297
    iget v0, p0, Lad/b;->o:I

    iget v1, p0, Lad/b;->L:I

    add-int/2addr v0, v1

    return v0
.end method

.method abstract L()I
.end method

.method public M()I
    .registers 2

    .prologue
    .line 1327
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0}, Lad/h;->k()I

    move-result v0

    return v0
.end method

.method public N()Z
    .registers 2

    .prologue
    .line 1331
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0}, Lad/h;->l()Z

    move-result v0

    return v0
.end method

.method public O()I
    .registers 2

    .prologue
    .line 1335
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0}, Lad/h;->m()I

    move-result v0

    return v0
.end method

.method public P()Z
    .registers 2

    .prologue
    .line 1339
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0}, Lad/h;->n()Z

    move-result v0

    return v0
.end method

.method public Q()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 1348
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0}, Lad/h;->s()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public R()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 1352
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0}, Lad/h;->t()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public S()Lad/l;
    .registers 2

    .prologue
    .line 1356
    iget-object v0, p0, Lad/b;->t:Lad/l;

    return-object v0
.end method

.method public T()Z
    .registers 2

    .prologue
    .line 1373
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0}, Lad/h;->h()Z

    move-result v0

    return v0
.end method

.method public U()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1413
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v1

    .line 1414
    if-nez v1, :cond_8

    .line 1418
    :cond_7
    :goto_7
    return v0

    .line 1417
    :cond_8
    invoke-virtual {v1}, Lad/h;->g()[Lat/B;

    move-result-object v1

    .line 1418
    if-eqz v1, :cond_7

    array-length v1, v1

    if-lez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public V()V
    .registers 2

    .prologue
    .line 1432
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0}, Lad/h;->w()V

    .line 1433
    return-void
.end method

.method public W()Z
    .registers 2

    .prologue
    .line 1436
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1437
    const/4 v0, 0x1

    .line 1440
    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0}, Lad/h;->x()Z

    move-result v0

    goto :goto_7
.end method

.method public X()Z
    .registers 2

    .prologue
    .line 1444
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    .line 1445
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lad/h;->u()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public Y()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 1472
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lad/b;->ae()I

    move-result v2

    if-ge v0, v2, :cond_13

    .line 1473
    invoke-virtual {p0, v0}, Lad/b;->n(I)Lad/t;

    move-result-object v2

    invoke-virtual {v2}, Lad/t;->D()I

    move-result v2

    if-ltz v2, :cond_14

    .line 1474
    const/4 v1, 0x1

    .line 1477
    :cond_13
    return v1

    .line 1472
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public a()I
    .registers 2

    .prologue
    .line 1837
    const/16 v0, 0x1c

    return v0
.end method

.method public a(Lat/p;)Lat/Y;
    .registers 6
    .parameter

    .prologue
    .line 1914
    iget v0, p0, Lad/b;->L:I

    if-ltz v0, :cond_b

    iget v0, p0, Lad/b;->L:I

    iget-object v1, p0, Lad/b;->h:[Lad/h;

    array-length v1, v1

    if-lt v0, v1, :cond_d

    .line 1915
    :cond_b
    const/4 v0, 0x0

    .line 1922
    :goto_c
    return-object v0

    .line 1918
    :cond_d
    iget-object v0, p0, Lad/b;->h:[Lad/h;

    iget v1, p0, Lad/b;->L:I

    aget-object v0, v0, v1

    .line 1919
    const/4 v1, 0x2

    new-array v1, v1, [Lat/B;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lad/h;->i()Lat/B;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lad/h;->j()Lat/B;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1922
    invoke-static {v0}, Lad/h;->d(Lad/h;)Lat/B;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lat/p;->a([Lat/B;Lat/B;)Lat/Y;

    move-result-object v0

    goto :goto_c
.end method

.method public a(ILcom/google/googlenav/ui/p;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1315
    invoke-virtual {p0}, Lad/b;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_f

    const/16 v0, 0x65

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/16 v0, 0x74

    invoke-static {v0}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public a(B)V
    .registers 2
    .parameter

    .prologue
    .line 1783
    iput-byte p1, p0, Lad/b;->N:B

    .line 1784
    return-void
.end method

.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 1753
    invoke-virtual {p0}, Lad/b;->f()I

    move-result v0

    if-lt p1, v0, :cond_c

    .line 1754
    invoke-virtual {p0}, Lad/b;->f()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 1762
    :cond_c
    if-gez p1, :cond_14

    .line 1763
    const/4 v0, 0x0

    iput-byte v0, p0, Lad/b;->N:B

    .line 1764
    iput p1, p0, Lad/b;->M:I

    .line 1771
    :goto_13
    return-void

    .line 1765
    :cond_14
    iget-byte v0, p0, Lad/b;->N:B

    if-nez v0, :cond_1e

    .line 1766
    iput p1, p0, Lad/b;->M:I

    .line 1767
    const/4 v0, 0x1

    iput-byte v0, p0, Lad/b;->N:B

    goto :goto_13

    .line 1769
    :cond_1e
    iput p1, p0, Lad/b;->M:I

    goto :goto_13
.end method

.method public a(Lad/e;)V
    .registers 2
    .parameter

    .prologue
    .line 525
    iput-object p1, p0, Lad/b;->X:Lad/e;

    .line 526
    return-void
.end method

.method public a(Lad/l;)V
    .registers 2
    .parameter

    .prologue
    .line 1787
    iput-object p1, p0, Lad/b;->t:Lad/l;

    .line 1788
    return-void
.end method

.method public a(Lad/y;)V
    .registers 2
    .parameter

    .prologue
    .line 1847
    iput-object p1, p0, Lad/b;->u:Lad/y;

    .line 1848
    return-void
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lad/b;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 514
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 3122
    iput-object p1, p0, Lad/b;->a:Ljava/lang/String;

    .line 3123
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 3193
    iput-boolean p1, p0, Lad/b;->U:Z

    .line 3194
    return-void
.end method

.method public a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 490
    iput-object p1, p0, Lad/b;->Q:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 491
    return-void
.end method

.method protected a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 833
    const/4 v0, -0x1

    iput v0, p0, Lad/b;->W:I

    .line 834
    iput-boolean v1, p0, Lad/b;->H:Z

    .line 835
    invoke-virtual {p0}, Lad/b;->E()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 836
    iput-boolean v1, p0, Lad/b;->R:Z

    .line 840
    iget-object v0, p0, Lad/b;->h:[Lad/h;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lad/b;->h:[Lad/h;

    array-length v0, v0

    if-nez v0, :cond_22c

    .line 841
    :cond_1b
    new-array v0, v2, [Lad/h;

    new-instance v3, Lad/h;

    invoke-direct {v3, p0}, Lad/h;-><init>(Lad/b;)V

    aput-object v3, v0, v1

    iput-object v0, p0, Lad/b;->h:[Lad/h;

    move v0, v2

    .line 850
    :goto_27
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    if-nez v3, :cond_4c

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-lez v3, :cond_4c

    .line 853
    const/16 v3, 0x8

    invoke-virtual {p1, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 854
    iget-object v4, p0, Lad/b;->h:[Lad/h;

    aget-object v1, v4, v1

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lad/h;->a(Lad/h;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 859
    :goto_48
    invoke-direct {p0}, Lad/b;->aU()V

    .line 1014
    :cond_4b
    :goto_4b
    return v2

    .line 857
    :cond_4c
    iget-object v0, p0, Lad/b;->h:[Lad/h;

    aget-object v0, v0, v1

    invoke-static {v0, v1}, Lad/h;->a(Lad/h;I)I

    goto :goto_48

    .line 863
    :cond_54
    const/4 v0, 0x0

    iput-object v0, p0, Lad/b;->h:[Lad/h;

    .line 864
    iput v1, p0, Lad/b;->J:I

    .line 866
    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lad/b;->P:I

    .line 871
    invoke-virtual {p1, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-lez v0, :cond_16f

    .line 872
    invoke-virtual {p1, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v0

    iput v0, p0, Lad/b;->b:I

    .line 882
    invoke-virtual {p0}, Lad/b;->L()I

    move-result v0

    iput v0, p0, Lad/b;->L:I

    .line 884
    invoke-virtual {p1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lad/b;->p:I

    .line 885
    iget v0, p0, Lad/b;->p:I

    if-eq v0, v10, :cond_173

    move v0, v2

    :goto_7e
    iput-boolean v0, p0, Lad/b;->v:Z

    .line 886
    iget v0, p0, Lad/b;->p:I

    if-eq v0, v10, :cond_176

    move v0, v2

    :goto_85
    iput-boolean v0, p0, Lad/b;->y:Z

    .line 888
    invoke-virtual {p1, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 889
    invoke-virtual {p1, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lad/b;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 891
    invoke-static {p1, v5}, Lcom/google/googlenav/common/io/protocol/b;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)I

    move-result v0

    iput v0, p0, Lad/b;->g:I

    .line 895
    :cond_99
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lad/b;->F:Ljava/lang/String;

    .line 896
    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lad/b;->G:Ljava/lang/String;

    .line 899
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-ne v0, v9, :cond_4b

    .line 903
    iget-object v0, p0, Lad/b;->u:Lad/y;

    iput-object v0, p0, Lad/b;->B:Lad/y;

    .line 904
    iget-object v0, p0, Lad/b;->x:Lad/y;

    iput-object v0, p0, Lad/b;->C:Lad/y;

    .line 906
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 908
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 909
    invoke-direct {p0, v0}, Lad/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v4

    iput-boolean v4, p0, Lad/b;->v:Z

    .line 910
    iget-boolean v4, p0, Lad/b;->v:Z

    if-eqz v4, :cond_d9

    .line 911
    if-eqz p2, :cond_179

    array-length v4, p2

    if-lt v4, v2, :cond_179

    .line 912
    aget-object v4, p2, v1

    .line 913
    invoke-static {v4, v3}, Lad/y;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/y;

    move-result-object v3

    iput-object v3, p0, Lad/b;->u:Lad/y;

    .line 921
    :cond_d9
    :goto_d9
    invoke-virtual {p0, v0}, Lad/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Lad/y;

    move-result-object v3

    iput-object v3, p0, Lad/b;->w:[Lad/y;

    .line 923
    iget-boolean v3, p0, Lad/b;->v:Z

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_187

    move v0, v2

    :goto_e9
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lad/b;->v:Z

    .line 926
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 928
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 929
    invoke-direct {p0, v0}, Lad/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v4

    iput-boolean v4, p0, Lad/b;->y:Z

    .line 930
    iget-boolean v4, p0, Lad/b;->y:Z

    if-eqz v4, :cond_10d

    .line 931
    if-eqz p2, :cond_18a

    array-length v4, p2

    if-lt v4, v9, :cond_18a

    .line 932
    aget-object v4, p2, v2

    .line 933
    invoke-static {v4, v3}, Lad/y;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/y;

    move-result-object v3

    iput-object v3, p0, Lad/b;->x:Lad/y;

    .line 941
    :cond_10d
    :goto_10d
    invoke-virtual {p0, v0}, Lad/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Lad/y;

    move-result-object v3

    iput-object v3, p0, Lad/b;->z:[Lad/y;

    .line 943
    iget-boolean v3, p0, Lad/b;->y:Z

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_198

    move v0, v2

    :goto_11d
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lad/b;->y:Z

    .line 945
    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lad/b;->I:Z

    .line 947
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    iput v0, p0, Lad/b;->J:I

    .line 948
    iget v0, p0, Lad/b;->J:I

    invoke-virtual {p0}, Lad/b;->p()I

    move-result v3

    if-le v0, v3, :cond_140

    .line 949
    invoke-virtual {p0}, Lad/b;->p()I

    move-result v0

    iput v0, p0, Lad/b;->J:I

    .line 950
    iput v5, p0, Lad/b;->p:I

    .line 956
    :cond_140
    iget v0, p0, Lad/b;->J:I

    new-array v0, v0, [Lad/h;

    iput-object v0, p0, Lad/b;->h:[Lad/h;

    .line 957
    iput-boolean v2, p0, Lad/b;->K:Z

    move v0, v1

    .line 960
    :goto_149
    :try_start_149
    iget v3, p0, Lad/b;->J:I

    if-ge v0, v3, :cond_1aa

    .line 961
    const/16 v3, 0x8

    invoke-virtual {p1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 964
    iget-object v4, p0, Lad/b;->h:[Lad/h;

    invoke-direct {p0, v3}, Lad/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/h;

    move-result-object v3

    aput-object v3, v4, v0

    .line 965
    iget-object v3, p0, Lad/b;->h:[Lad/h;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lad/h;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16c

    .line 966
    const/4 v3, 0x0

    iput-boolean v3, p0, Lad/b;->K:Z
    :try_end_16c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_149 .. :try_end_16c} :catch_19a

    .line 960
    :cond_16c
    add-int/lit8 v0, v0, 0x1

    goto :goto_149

    .line 875
    :cond_16f
    iput v5, p0, Lad/b;->p:I

    goto/16 :goto_4b

    :cond_173
    move v0, v1

    .line 885
    goto/16 :goto_7e

    :cond_176
    move v0, v1

    .line 886
    goto/16 :goto_85

    .line 916
    :cond_179
    iget-object v4, p0, Lad/b;->u:Lad/y;

    invoke-static {v3, v0}, Lad/y;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/y;

    move-result-object v3

    invoke-static {v4, v3}, Lad/b;->a(Lad/y;Lad/y;)Lad/y;

    move-result-object v3

    iput-object v3, p0, Lad/b;->u:Lad/y;

    goto/16 :goto_d9

    :cond_187
    move v0, v1

    .line 923
    goto/16 :goto_e9

    .line 936
    :cond_18a
    iget-object v4, p0, Lad/b;->x:Lad/y;

    invoke-static {v3, v0}, Lad/y;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/y;

    move-result-object v3

    invoke-static {v4, v3}, Lad/b;->a(Lad/y;Lad/y;)Lad/y;

    move-result-object v3

    iput-object v3, p0, Lad/b;->x:Lad/y;

    goto/16 :goto_10d

    :cond_198
    move v0, v1

    .line 943
    goto :goto_11d

    .line 969
    :catch_19a
    move-exception v3

    .line 970
    iput v0, p0, Lad/b;->J:I

    .line 971
    iget-object v0, p0, Lad/b;->h:[Lad/h;

    iget v3, p0, Lad/b;->J:I

    const/4 v4, 0x0

    aput-object v4, v0, v3

    .line 972
    iget v0, p0, Lad/b;->J:I

    if-nez v0, :cond_1aa

    .line 973
    iput v5, p0, Lad/b;->p:I

    .line 977
    :cond_1aa
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 978
    new-array v0, v3, [Lad/d;

    iput-object v0, p0, Lad/b;->i:[Lad/d;

    move v0, v1

    .line 979
    :goto_1b5
    if-ge v0, v3, :cond_1d5

    .line 980
    const/16 v4, 0xc

    invoke-virtual {p1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 982
    iget-object v5, p0, Lad/b;->i:[Lad/d;

    new-instance v6, Lad/d;

    invoke-virtual {v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v10}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, p0, v7, v8, v4}, Lad/d;-><init>(Lad/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v0

    .line 979
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b5

    .line 988
    :cond_1d5
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 989
    new-array v0, v3, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-object v0, p0, Lad/b;->j:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move v0, v1

    .line 990
    :goto_1e0
    if-ge v0, v3, :cond_1ef

    .line 991
    iget-object v4, p0, Lad/b;->j:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v5, 0x10

    invoke-virtual {p1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    aput-object v5, v4, v0

    .line 990
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e0

    .line 994
    :cond_1ef
    iget-object v0, p0, Lad/b;->e:Lcom/google/googlenav/ui/p;

    if-eqz v0, :cond_202

    .line 995
    iget-object v0, p0, Lad/b;->e:Lcom/google/googlenav/ui/p;

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-static {p1}, Lad/b;->j(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/ui/p;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/Set;)V

    .line 1000
    :cond_202
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 1004
    new-array v3, v0, [I

    iput-object v3, p0, Lad/b;->l:[I

    .line 1005
    new-array v3, v0, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iput-object v3, p0, Lad/b;->Q:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1006
    :goto_210
    if-ge v1, v0, :cond_227

    .line 1007
    const/16 v3, 0xe

    invoke-virtual {p1, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 1009
    iget-object v4, p0, Lad/b;->l:[I

    invoke-virtual {v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 1010
    iget-object v4, p0, Lad/b;->Q:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    aput-object v3, v4, v1

    .line 1006
    add-int/lit8 v1, v1, 0x1

    goto :goto_210

    .line 1013
    :cond_227
    invoke-direct {p0}, Lad/b;->aU()V

    goto/16 :goto_4b

    :cond_22c
    move v0, v1

    goto/16 :goto_27
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 5
    .parameter

    .prologue
    .line 1094
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/aY;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1096
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lad/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v1

    .line 1102
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lad/b;->t:Lad/l;

    invoke-virtual {v0}, Lad/l;->d()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_29

    .line 1105
    iget-object v0, p0, Lad/b;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->e(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/Date;

    move-result-object v0

    iget v2, p0, Lad/b;->g:I

    invoke-static {v0, v2}, Lad/l;->a(Ljava/util/Date;I)Lad/l;

    move-result-object v0

    iput-object v0, p0, Lad/b;->t:Lad/l;

    .line 1110
    :cond_29
    invoke-virtual {p0}, Lad/b;->E()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 1111
    sget-object v0, Lad/b;->q:LaT/h;

    invoke-virtual {v0}, LaT/h;->c()V

    .line 1112
    sget-object v0, Lad/b;->r:LaT/h;

    invoke-virtual {v0}, LaT/h;->b()V

    .line 1118
    :goto_39
    return v1

    .line 1114
    :cond_3a
    sget-object v0, Lad/b;->r:LaT/h;

    invoke-virtual {v0}, LaT/h;->c()V

    .line 1115
    sget-object v0, Lad/b;->q:LaT/h;

    invoke-virtual {v0}, LaT/h;->b()V

    goto :goto_39
.end method

.method public a(II)[Lat/B;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1385
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v3

    .line 1386
    if-nez v3, :cond_a

    .line 1387
    new-array v0, v1, [Lat/B;

    .line 1406
    :cond_9
    :goto_9
    return-object v0

    .line 1391
    :cond_a
    if-ltz p1, :cond_e

    if-gez p2, :cond_13

    .line 1392
    :cond_e
    invoke-virtual {v3}, Lad/h;->g()[Lat/B;

    move-result-object v0

    goto :goto_9

    .line 1397
    :cond_13
    invoke-virtual {v3, p1}, Lad/h;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v3, p2}, Lad/h;->e(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1398
    :cond_1f
    new-array v0, v1, [Lat/B;

    goto :goto_9

    .line 1400
    :cond_22
    invoke-virtual {v3, p1}, Lad/h;->f(I)I

    move-result v2

    .line 1401
    invoke-virtual {v3, p2}, Lad/h;->f(I)I

    move-result v4

    .line 1402
    sub-int v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Lat/B;

    move v1, v2

    .line 1403
    :goto_31
    if-gt v1, v4, :cond_9

    .line 1404
    sub-int v5, v1, v2

    invoke-virtual {v3}, Lad/h;->g()[Lat/B;

    move-result-object v6

    aget-object v6, v6, v1

    aput-object v6, v0, v5

    .line 1403
    add-int/lit8 v1, v1, 0x1

    goto :goto_31
.end method

.method public aA()I
    .registers 2

    .prologue
    .line 1953
    iget v0, p0, Lad/b;->J:I

    return v0
.end method

.method public aB()Lat/B;
    .registers 2

    .prologue
    .line 1957
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1958
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0}, Lad/h;->i()Lat/B;

    move-result-object v0

    .line 1960
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lad/b;->u:Lad/y;

    invoke-virtual {v0}, Lad/y;->f()Lat/B;

    move-result-object v0

    goto :goto_e
.end method

.method public aC()Lat/B;
    .registers 2

    .prologue
    .line 1964
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1965
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0}, Lad/h;->j()Lat/B;

    move-result-object v0

    .line 1967
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lad/b;->x:Lad/y;

    invoke-virtual {v0}, Lad/y;->f()Lat/B;

    move-result-object v0

    goto :goto_e
.end method

.method public aD()Z
    .registers 3

    .prologue
    .line 1975
    iget v0, p0, Lad/b;->p:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lad/b;->v:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public aE()Z
    .registers 3

    .prologue
    .line 1983
    iget v0, p0, Lad/b;->p:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lad/b;->y:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public aF()[I
    .registers 2

    .prologue
    .line 2070
    iget-object v0, p0, Lad/b;->l:[I

    return-object v0
.end method

.method public aG()I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2078
    iget v1, p0, Lad/b;->W:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    .line 2079
    iget v0, p0, Lad/b;->W:I

    .line 2112
    :goto_8
    return v0

    .line 2081
    :cond_9
    iput v0, p0, Lad/b;->W:I

    .line 2086
    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v2

    .line 2087
    invoke-virtual {v2}, Lcom/google/googlenav/ui/bn;->S()Lcom/google/googlenav/ui/p;

    move-result-object v3

    .line 2089
    :goto_13
    invoke-virtual {p0}, Lad/b;->f()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 2090
    invoke-virtual {p0, v0, v3}, Lad/b;->a(ILcom/google/googlenav/ui/p;)Ljava/lang/String;

    move-result-object v1

    .line 2092
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2089
    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 2097
    :cond_26
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2101
    if-eqz v3, :cond_40

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/p;->a(C)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/p;->c(C)I

    move-result v1

    .line 2104
    :goto_37
    iget v4, p0, Lad/b;->W:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lad/b;->W:I

    goto :goto_23

    .line 2101
    :cond_40
    invoke-virtual {v2}, Lcom/google/googlenav/ui/bn;->f()LS/g;

    move-result-object v4

    invoke-interface {v4, v1}, LS/g;->c(C)I

    move-result v1

    goto :goto_37

    .line 2109
    :cond_49
    iget v0, p0, Lad/b;->W:I

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bn;->f()LS/g;

    move-result-object v1

    const/16 v2, 0x73

    invoke-interface {v1, v2}, LS/g;->c(C)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lad/b;->W:I

    .line 2112
    iget v0, p0, Lad/b;->W:I

    goto :goto_8
.end method

.method public aH()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 2122
    invoke-virtual {p0}, Lad/b;->k()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 2123
    const/4 v0, 0x0

    .line 2127
    :goto_8
    return-object v0

    .line 2125
    :cond_9
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    .line 2127
    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lad/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_19
    const-string v0, ""

    goto :goto_8

    :cond_1c
    const/16 v1, 0x601

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lad/h;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method abstract aI()Lad/b;
.end method

.method public aJ()Lad/b;
    .registers 3

    .prologue
    .line 3096
    invoke-virtual {p0}, Lad/b;->aI()Lad/b;

    move-result-object v0

    .line 3097
    invoke-virtual {p0}, Lad/b;->S()Lad/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/b;->a(Lad/l;)V

    .line 3098
    invoke-virtual {p0}, Lad/b;->o()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/b;->a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 3099
    invoke-virtual {p0}, Lad/b;->aO()I

    move-result v1

    invoke-virtual {v0, v1}, Lad/b;->v(I)V

    .line 3100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lad/b;->b(Z)V

    .line 3101
    return-object v0
.end method

.method public aK()Lad/b;
    .registers 3

    .prologue
    .line 3110
    invoke-virtual {p0}, Lad/b;->aJ()Lad/b;

    move-result-object v0

    .line 3111
    invoke-virtual {p0}, Lad/b;->J()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    .line 3112
    return-object v0
.end method

.method public aL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3117
    iget-object v0, p0, Lad/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lad/b;->a:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public aM()Z
    .registers 2

    .prologue
    .line 3129
    iget-boolean v0, p0, Lad/b;->H:Z

    return v0
.end method

.method public aN()V
    .registers 2

    .prologue
    .line 3133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lad/b;->H:Z

    .line 3134
    return-void
.end method

.method public aO()I
    .registers 2

    .prologue
    .line 3164
    iget v0, p0, Lad/b;->T:I

    return v0
.end method

.method public aR()Lad/b;
    .registers 4

    .prologue
    .line 3179
    const/4 v0, 0x0

    .line 3180
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lad/b;->t(I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3181
    new-instance v0, Lad/s;

    invoke-virtual {p0}, Lad/b;->ap()Lad/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lad/s;-><init>(Lad/k;)V

    .line 3186
    :cond_11
    :goto_11
    if-eqz v0, :cond_18

    .line 3187
    iget v1, p0, Lad/b;->T:I

    invoke-virtual {v0, v1}, Lad/b;->v(I)V

    .line 3189
    :cond_18
    return-object v0

    .line 3182
    :cond_19
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lad/b;->t(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3183
    new-instance v0, Lad/w;

    invoke-virtual {p0}, Lad/b;->ap()Lad/j;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bn;->S()Lcom/google/googlenav/ui/p;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lad/w;-><init>(Lad/k;Lcom/google/googlenav/ui/p;)V

    goto :goto_11
.end method

.method public aS()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3201
    iget-object v0, p0, Lad/b;->V:Ljava/lang/String;

    return-object v0
.end method

.method public aT()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3208
    iget v0, p0, Lad/b;->b:I

    packed-switch v0, :pswitch_data_22

    .line 3216
    const/16 v0, 0x105

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 3210
    :pswitch_c
    const/16 v0, 0x5cb

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 3212
    :pswitch_13
    const/16 v0, 0x608

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 3214
    :pswitch_1a
    const/16 v0, 0x59

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 3208
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_c
        :pswitch_13
        :pswitch_1a
    .end packed-switch
.end method

.method public aa()Z
    .registers 2

    .prologue
    .line 1484
    iget-object v0, p0, Lad/b;->j:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    array-length v0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public ab()Lad/h;
    .registers 2

    .prologue
    .line 1496
    iget v0, p0, Lad/b;->L:I

    invoke-virtual {p0, v0}, Lad/b;->l(I)Lad/h;

    move-result-object v0

    return-object v0
.end method

.method public ac()Ljava/util/List;
    .registers 3

    .prologue
    .line 1514
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    .line 1516
    if-nez v0, :cond_d

    .line 1517
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1520
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {v0}, Lad/h;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_c
.end method

.method public ad()[Lat/B;
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 1529
    invoke-virtual {p0, v0, v0}, Lad/b;->a(II)[Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public ae()I
    .registers 2

    .prologue
    .line 1572
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    .line 1575
    if-nez v0, :cond_8

    .line 1576
    const/4 v0, 0x0

    .line 1578
    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Lad/h;->e()I

    move-result v0

    goto :goto_7
.end method

.method public af()Ljava/util/List;
    .registers 2

    .prologue
    .line 1586
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lad/b;->ae()I

    move-result v0

    if-nez v0, :cond_11

    .line 1587
    :cond_c
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 1590
    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0}, Lad/h;->f()Ljava/util/List;

    move-result-object v0

    goto :goto_10
.end method

.method public ag()I
    .registers 2

    .prologue
    .line 1597
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-static {v0}, Lad/h;->a(Lad/h;)I

    move-result v0

    return v0
.end method

.method public ah()I
    .registers 2

    .prologue
    .line 1604
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-static {v0}, Lad/h;->b(Lad/h;)I

    move-result v0

    return v0
.end method

.method public ai()Lat/B;
    .registers 2

    .prologue
    .line 1611
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-static {v0}, Lad/h;->c(Lad/h;)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public aj()I
    .registers 2

    .prologue
    .line 1624
    iget v0, p0, Lad/b;->E:I

    return v0
.end method

.method public ak()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1632
    iget-object v0, p0, Lad/b;->F:Ljava/lang/String;

    return-object v0
.end method

.method public al()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1640
    iget-object v0, p0, Lad/b;->G:Ljava/lang/String;

    return-object v0
.end method

.method public am()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1658
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1659
    const-string v0, ""

    .line 1661
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0}, Lad/h;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public an()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1708
    iget v0, p0, Lad/b;->L:I

    invoke-virtual {p0, v0}, Lad/b;->p(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ao()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1734
    invoke-direct {p0}, Lad/b;->aW()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1736
    invoke-virtual {p0}, Lad/b;->an()Ljava/lang/String;

    move-result-object v1

    .line 1737
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_21

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_21

    .line 1738
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    :cond_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ap()Lad/j;
    .registers 5

    .prologue
    .line 1778
    new-instance v0, Lad/j;

    invoke-virtual {p0}, Lad/b;->aq()Lad/y;

    move-result-object v1

    invoke-virtual {p0}, Lad/b;->as()Lad/y;

    move-result-object v2

    invoke-virtual {p0}, Lad/b;->au()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lad/j;-><init>(Lad/y;Lad/y;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public aq()Lad/y;
    .registers 2

    .prologue
    .line 1842
    iget-object v0, p0, Lad/b;->u:Lad/y;

    return-object v0
.end method

.method public ar()Lad/y;
    .registers 2

    .prologue
    .line 1851
    iget-object v0, p0, Lad/b;->B:Lad/y;

    return-object v0
.end method

.method public as()Lad/y;
    .registers 2

    .prologue
    .line 1856
    iget-object v0, p0, Lad/b;->x:Lad/y;

    return-object v0
.end method

.method public at()Lad/y;
    .registers 2

    .prologue
    .line 1891
    iget-object v0, p0, Lad/b;->C:Lad/y;

    return-object v0
.end method

.method public au()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lad/b;->D:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public av()I
    .registers 2

    .prologue
    .line 1909
    iget v0, p0, Lad/b;->P:I

    return v0
.end method

.method public aw()Lat/B;
    .registers 3

    .prologue
    .line 1927
    iget v0, p0, Lad/b;->L:I

    if-ltz v0, :cond_b

    iget v0, p0, Lad/b;->L:I

    iget-object v1, p0, Lad/b;->h:[Lad/h;

    array-length v1, v1

    if-lt v0, v1, :cond_d

    .line 1928
    :cond_b
    const/4 v0, 0x0

    .line 1930
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lad/b;->h:[Lad/h;

    iget v1, p0, Lad/b;->L:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lad/h;->d(Lad/h;)Lat/B;

    move-result-object v0

    goto :goto_c
.end method

.method public ax()Z
    .registers 2

    .prologue
    .line 1941
    iget-boolean v0, p0, Lad/b;->I:Z

    return v0
.end method

.method public ay()I
    .registers 2

    .prologue
    .line 1945
    iget v0, p0, Lad/b;->k:I

    return v0
.end method

.method public az()I
    .registers 2

    .prologue
    .line 1949
    iget v0, p0, Lad/b;->L:I

    return v0
.end method

.method public b(I)Lcom/google/googlenav/E;
    .registers 3
    .parameter

    .prologue
    .line 1543
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    .line 1544
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0, p1}, Lad/h;->a(I)Lad/m;

    move-result-object v0

    goto :goto_7
.end method

.method public b(Lad/y;)V
    .registers 2
    .parameter

    .prologue
    .line 1887
    iput-object p1, p0, Lad/b;->x:Lad/y;

    .line 1888
    return-void
.end method

.method public b(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 1269
    invoke-virtual {p0}, Lad/b;->J()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 1270
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 1272
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 3197
    iput-object p1, p0, Lad/b;->V:Ljava/lang/String;

    .line 3198
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 3225
    iput-boolean p1, p0, Lad/b;->S:Z

    .line 3226
    return-void
.end method

.method protected b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Lad/y;
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x7

    const/4 v5, 0x1

    .line 640
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 641
    invoke-virtual {p1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 642
    const/4 v2, 0x2

    if-eq v1, v2, :cond_12

    if-eq v1, v5, :cond_12

    .line 658
    :cond_11
    :goto_11
    return-object v0

    .line 646
    :cond_12
    new-array v1, v3, [Lad/y;

    .line 647
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v3, :cond_24

    .line 648
    invoke-virtual {p1, v6, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 649
    invoke-static {v4, p1}, Lad/y;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lad/y;

    move-result-object v4

    aput-object v4, v1, v2

    .line 647
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 653
    :cond_24
    array-length v2, v1

    if-le v2, v5, :cond_11

    move-object v0, v1

    .line 658
    goto :goto_11
.end method

.method public c()I
    .registers 2

    .prologue
    .line 1797
    iget v0, p0, Lad/b;->M:I

    return v0
.end method

.method public c(I)I
    .registers 2
    .parameter

    .prologue
    .line 1549
    return p1
.end method

.method protected c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 784
    invoke-virtual {p1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    new-array v1, v0, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 786
    const/4 v0, 0x0

    :goto_9
    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 787
    invoke-virtual {p1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    aput-object v2, v1, v0

    .line 786
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 791
    :cond_15
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 792
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lad/b;->a(Ljava/lang/String;)V

    .line 795
    :cond_22
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p0, v0}, Lad/b;->r(I)V

    .line 798
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lad/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    .line 801
    iget-object v1, p0, Lad/b;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_61

    .line 802
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lad/b;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 803
    iget v2, p0, Lad/b;->g:I

    invoke-static {v1, v2}, Lad/l;->a(Ljava/util/Date;I)Lad/l;

    move-result-object v1

    iput-object v1, p0, Lad/b;->t:Lad/l;

    .line 810
    :goto_4b
    if-eqz v0, :cond_60

    .line 811
    const/4 v1, 0x4

    invoke-static {p1, v1}, Lcom/google/googlenav/common/io/protocol/b;->g(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lad/b;->s(I)V

    .line 814
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v1

    if-eqz v1, :cond_60

    .line 816
    invoke-virtual {p0}, Lad/b;->V()V

    .line 819
    :cond_60
    return v0

    .line 806
    :cond_61
    invoke-static {}, Lad/l;->a()Lad/l;

    move-result-object v1

    iput-object v1, p0, Lad/b;->t:Lad/l;

    goto :goto_4b
.end method

.method public d()B
    .registers 2

    .prologue
    .line 1792
    iget-byte v0, p0, Lad/b;->N:B

    return v0
.end method

.method public d(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 442
    new-instance v3, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/aY;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 444
    invoke-virtual {v3, v2, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 446
    invoke-virtual {p0}, Lad/b;->aq()Lad/y;

    move-result-object v0

    invoke-static {v3, v0}, Lad/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lad/y;)V

    move v0, v1

    .line 447
    :goto_14
    iget-object v4, p0, Lad/b;->A:[Lad/y;

    array-length v4, v4

    if-ge v0, v4, :cond_23

    .line 448
    iget-object v4, p0, Lad/b;->A:[Lad/y;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Lad/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lad/y;)V

    .line 447
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 450
    :cond_23
    invoke-virtual {p0}, Lad/b;->as()Lad/y;

    move-result-object v0

    invoke-static {v3, v0}, Lad/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lad/y;)V

    .line 452
    const/4 v0, 0x5

    invoke-virtual {p0}, Lad/b;->p()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 453
    const/4 v0, 0x7

    iget v4, p0, Lad/b;->c:I

    invoke-virtual {v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 454
    const/16 v0, 0xd

    invoke-virtual {v3, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 455
    const/16 v0, 0x1e

    invoke-virtual {v3, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 456
    const/16 v0, 0x1f

    invoke-virtual {v3, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 457
    iget-object v0, p0, Lad/b;->D:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_52

    .line 458
    const/16 v0, 0x9

    iget-object v4, p0, Lad/b;->D:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 460
    :cond_52
    const/16 v0, 0xb

    invoke-virtual {v3, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 463
    const/16 v0, 0x1c

    invoke-virtual {v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move v0, v1

    .line 465
    :goto_5d
    iget-object v4, p0, Lad/b;->Q:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    array-length v4, v4

    if-ge v0, v4, :cond_6e

    .line 466
    const/16 v4, 0xa

    iget-object v5, p0, Lad/b;->Q:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_5d

    .line 472
    :cond_6e
    const/16 v0, 0x10

    invoke-virtual {v3, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 474
    const/16 v0, 0x15

    invoke-virtual {v3, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 484
    const/16 v0, 0x1b

    invoke-virtual {p0}, Lad/b;->m()Z

    move-result v4

    if-nez v4, :cond_81

    move v1, v2

    :cond_81
    invoke-virtual {v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 485
    return-object v3
.end method

.method public e()Lcom/google/googlenav/E;
    .registers 3

    .prologue
    .line 1619
    invoke-virtual {p0}, Lad/b;->c()I

    move-result v0

    .line 1620
    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    invoke-virtual {p0, v0}, Lad/b;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public e(I)V
    .registers 2
    .parameter

    .prologue
    .line 521
    iput p1, p0, Lad/b;->g:I

    .line 522
    return-void
.end method

.method public f()I
    .registers 2

    .prologue
    .line 1554
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    .line 1557
    if-nez v0, :cond_8

    .line 1558
    const/4 v0, 0x0

    .line 1560
    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Lad/h;->d()I

    move-result v0

    goto :goto_7
.end method

.method public f(I)J
    .registers 4
    .parameter

    .prologue
    .line 1323
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lad/h;->h(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1343
    invoke-virtual {p0, p1}, Lad/b;->l(I)Lad/h;

    move-result-object v0

    .line 1344
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lad/h;->p()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 1802
    const/4 v0, 0x1

    return v0
.end method

.method public h(I)Lat/B;
    .registers 3
    .parameter

    .prologue
    .line 1360
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lad/h;->c(I)Lat/B;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Ln/B;
    .registers 3
    .parameter

    .prologue
    .line 1364
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lad/h;->d(I)Ln/B;

    move-result-object v0

    return-object v0
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 1817
    const/4 v0, 0x1

    return v0
.end method

.method public j(I)Lad/d;
    .registers 3
    .parameter

    .prologue
    .line 1462
    if-ltz p1, :cond_7

    iget-object v0, p0, Lad/b;->i:[Lad/d;

    array-length v0, v0

    if-lt p1, v0, :cond_9

    .line 1463
    :cond_7
    const/4 v0, 0x0

    .line 1465
    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lad/b;->i:[Lad/d;

    aget-object v0, v0, p1

    goto :goto_8
.end method

.method public k()I
    .registers 2

    .prologue
    .line 411
    iget v0, p0, Lad/b;->b:I

    return v0
.end method

.method public k(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter

    .prologue
    .line 1488
    iget-object v0, p0, Lad/b;->j:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public k_()Z
    .registers 2

    .prologue
    .line 1823
    const/4 v0, 0x1

    return v0
.end method

.method public l(I)Lad/h;
    .registers 3
    .parameter

    .prologue
    .line 1506
    iget-object v0, p0, Lad/b;->h:[Lad/h;

    if-eqz v0, :cond_b

    if-ltz p1, :cond_b

    iget-object v0, p0, Lad/b;->h:[Lad/h;

    array-length v0, v0

    if-lt p1, v0, :cond_d

    .line 1507
    :cond_b
    const/4 v0, 0x0

    .line 1510
    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lad/b;->h:[Lad/h;

    aget-object v0, v0, p1

    goto :goto_c
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 415
    iget v0, p0, Lad/b;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final l_()V
    .registers 1

    .prologue
    .line 1833
    return-void
.end method

.method public m(I)I
    .registers 3
    .parameter

    .prologue
    .line 1538
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lad/h;->g(I)I

    move-result v0

    return v0
.end method

.method public m()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 419
    iget v1, p0, Lad/b;->b:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public n(I)Lad/t;
    .registers 3
    .parameter

    .prologue
    .line 1582
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lad/h;->b(I)Lad/t;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .registers 3

    .prologue
    .line 423
    iget v0, p0, Lad/b;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public o(I)V
    .registers 2
    .parameter

    .prologue
    .line 1628
    iput p1, p0, Lad/b;->E:I

    .line 1629
    return-void
.end method

.method public o()[Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lad/b;->Q:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public abstract p()I
.end method

.method public p(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1719
    iget-boolean v0, p0, Lad/b;->K:Z

    if-eqz v0, :cond_9

    .line 1720
    invoke-virtual {p0, p1}, Lad/b;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 1722
    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method public q()Z
    .registers 2

    .prologue
    .line 1812
    const/4 v0, 0x0

    return v0
.end method

.method public q(I)Z
    .registers 3
    .parameter

    .prologue
    .line 1774
    invoke-virtual {p0}, Lad/b;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lad/h;->i(I)Z

    move-result v0

    return v0
.end method

.method public r()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 509
    iget-object v0, p0, Lad/b;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public r(I)V
    .registers 2
    .parameter

    .prologue
    .line 1934
    iput p1, p0, Lad/b;->k:I

    .line 1935
    return-void
.end method

.method public s()I
    .registers 2

    .prologue
    .line 517
    iget v0, p0, Lad/b;->g:I

    return v0
.end method

.method public s(I)V
    .registers 3
    .parameter

    .prologue
    .line 1987
    iput p1, p0, Lad/b;->L:I

    .line 1988
    const/4 v0, 0x0

    iput v0, p0, Lad/b;->M:I

    .line 1989
    return-void
.end method

.method public t()V
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Lad/b;->X:Lad/e;

    if-eqz v0, :cond_9

    .line 530
    iget-object v0, p0, Lad/b;->X:Lad/e;

    invoke-interface {v0}, Lad/e;->a()V

    .line 532
    :cond_9
    return-void
.end method

.method public t(I)Z
    .registers 3
    .parameter

    .prologue
    .line 3147
    iget v0, p0, Lad/b;->T:I

    invoke-static {p1, v0}, Lad/b;->b(II)Z

    move-result v0

    return v0
.end method

.method public u(I)V
    .registers 4
    .parameter

    .prologue
    .line 3154
    invoke-virtual {p0, p1}, Lad/b;->t(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3155
    iget v0, p0, Lad/b;->T:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lad/b;->T:I

    .line 3157
    :cond_d
    return-void
.end method

.method public u()Z
    .registers 2

    .prologue
    .line 542
    const/4 v0, 0x0

    return v0
.end method

.method public v(I)V
    .registers 2
    .parameter

    .prologue
    .line 3160
    iput p1, p0, Lad/b;->T:I

    .line 3161
    return-void
.end method

.method public v()Z
    .registers 2

    .prologue
    .line 546
    iget-boolean v0, p0, Lad/b;->s:Z

    return v0
.end method

.method public w()V
    .registers 2

    .prologue
    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Lad/b;->s:Z

    .line 551
    return-void
.end method

.method public x()Z
    .registers 2

    .prologue
    .line 666
    invoke-virtual {p0}, Lad/b;->C()[Lad/y;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lad/b;->D()[Lad/y;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public y()I
    .registers 2

    .prologue
    .line 671
    iget v0, p0, Lad/b;->p:I

    return v0
.end method

.method public z()Z
    .registers 2

    .prologue
    .line 679
    iget v0, p0, Lad/b;->p:I

    packed-switch v0, :pswitch_data_a

    .line 687
    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 685
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 679
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 1807
    invoke-virtual {p0}, Lad/b;->E()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
