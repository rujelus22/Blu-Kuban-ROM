.class public Lcom/google/android/maps/driveabout/vector/aU;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final I:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final K:Ljava/util/Map;


# instance fields
.field private A:Z

.field private final B:I

.field private C:Z

.field private final D:I

.field private final E:Lz/j;

.field private final F:Lcom/google/android/maps/driveabout/vector/eb;

.field private final G:Lcom/google/android/maps/driveabout/vector/r;

.field private final H:Lcom/google/android/maps/driveabout/vector/dC;

.field private final J:J

.field final a:Ljavax/microedition/khronos/opengles/GL10;

.field final b:Lcom/google/android/maps/driveabout/vector/I;

.field final c:Z

.field public final d:Lcom/google/android/maps/driveabout/vector/cM;

.field public final e:Lcom/google/android/maps/driveabout/vector/bS;

.field public final f:Lcom/google/android/maps/driveabout/vector/dY;

.field public final g:Lcom/google/android/maps/driveabout/vector/dY;

.field public final h:Lcom/google/android/maps/driveabout/vector/dY;

.field public final i:Lcom/google/android/maps/driveabout/vector/dY;

.field public final j:Lcom/google/android/maps/driveabout/vector/dY;

.field public final k:[F

.field public final l:[F

.field public final m:Ln/Q;

.field public final n:Ln/Q;

.field private final o:Lcom/google/android/maps/driveabout/vector/cp;

.field private final p:[I

.field private q:I

.field private r:I

.field private s:[I

.field private t:I

.field private u:Ljava/lang/Integer;

.field private v:Ljava/lang/Integer;

.field private w:Z

.field private x:J

.field private y:J

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 243
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aU;->I:Ljava/util/concurrent/atomic/AtomicLong;

    .line 256
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aU;->K:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/cp;Lcom/google/android/maps/driveabout/vector/I;Lz/j;)V
    .registers 22
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 277
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->z:Z

    .line 94
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->A:Z

    .line 100
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->C:Z

    .line 120
    new-instance v2, Lcom/google/android/maps/driveabout/vector/cQ;

    const/16 v3, 0x8

    new-array v3, v3, [I

    fill-array-data v3, :array_2a8

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/vector/cQ;-><init>([I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->d:Lcom/google/android/maps/driveabout/vector/cM;

    .line 132
    new-instance v2, Lcom/google/android/maps/driveabout/vector/bT;

    const/16 v3, 0x14

    new-array v3, v3, [F

    fill-array-data v3, :array_2bc

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lcom/google/android/maps/driveabout/vector/bT;-><init>([FI)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->e:Lcom/google/android/maps/driveabout/vector/bS;

    .line 145
    new-instance v2, Lcom/google/android/maps/driveabout/vector/ed;

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_2e8

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/vector/ed;-><init>([I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->f:Lcom/google/android/maps/driveabout/vector/dY;

    .line 158
    new-instance v2, Lcom/google/android/maps/driveabout/vector/ed;

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_304

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/vector/ed;-><init>([I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->g:Lcom/google/android/maps/driveabout/vector/dY;

    .line 171
    new-instance v2, Lcom/google/android/maps/driveabout/vector/ed;

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_320

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/vector/ed;-><init>([I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->h:Lcom/google/android/maps/driveabout/vector/dY;

    .line 184
    new-instance v2, Lcom/google/android/maps/driveabout/vector/ed;

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_33c

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/vector/ed;-><init>([I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->i:Lcom/google/android/maps/driveabout/vector/dY;

    .line 197
    new-instance v2, Lcom/google/android/maps/driveabout/vector/ed;

    const/16 v3, 0xc

    new-array v3, v3, [I

    fill-array-data v3, :array_358

    invoke-direct {v2, v3}, Lcom/google/android/maps/driveabout/vector/ed;-><init>([I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->j:Lcom/google/android/maps/driveabout/vector/dY;

    .line 209
    const/16 v2, 0x8

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->k:[F

    .line 215
    const/4 v2, 0x4

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->l:[F

    .line 221
    new-instance v2, Ln/Q;

    invoke-direct {v2}, Ln/Q;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->m:Ln/Q;

    .line 229
    new-instance v2, Ln/Q;

    invoke-direct {v2}, Ln/Q;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->n:Ln/Q;

    .line 231
    new-instance v2, Lcom/google/android/maps/driveabout/vector/r;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/vector/r;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->G:Lcom/google/android/maps/driveabout/vector/r;

    .line 237
    new-instance v2, Lcom/google/android/maps/driveabout/vector/dC;

    invoke-direct {v2}, Lcom/google/android/maps/driveabout/vector/dC;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->H:Lcom/google/android/maps/driveabout/vector/dC;

    .line 249
    sget-object v2, Lcom/google/android/maps/driveabout/vector/aU;->I:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->J:J

    .line 278
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 279
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aU;->b:Lcom/google/android/maps/driveabout/vector/I;

    .line 280
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aU;->o:Lcom/google/android/maps/driveabout/vector/cp;

    .line 281
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/maps/driveabout/vector/aU;->E:Lz/j;

    .line 286
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->F:Lcom/google/android/maps/driveabout/vector/eb;

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/aU;->J()V

    .line 290
    const/16 v2, 0x100

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->p:[I

    .line 291
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->q:I

    .line 292
    const/16 v2, 0x20

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->s:[I

    .line 293
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->t:I

    .line 295
    move-object/from16 v0, p1

    instance-of v2, v0, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v2, :cond_111

    const/16 v2, 0x1f02

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_117

    :cond_111
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/google/android/maps/driveabout/vector/L;

    if-eqz v2, :cond_29e

    :cond_117
    const/4 v2, 0x1

    :goto_118
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->c:Z

    .line 299
    const/4 v2, 0x1

    new-array v3, v2, [I

    .line 300
    const/16 v2, 0xd57

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 301
    const/4 v2, 0x0

    aget v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->B:I

    .line 304
    const/16 v2, 0xd52

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 305
    const/4 v2, 0x0

    aget v2, v3, v2

    .line 306
    const/16 v4, 0xd53

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v3, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 307
    const/4 v4, 0x0

    aget v4, v3, v4

    .line 308
    const/16 v5, 0xd54

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v3, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 309
    const/4 v5, 0x0

    aget v5, v3, v5

    .line 310
    const/16 v6, 0xd55

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v6, v3, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 311
    const/4 v6, 0x0

    aget v6, v3, v6

    .line 312
    const/16 v7, 0xd56

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v7, v3, v8}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 313
    const/4 v7, 0x0

    aget v7, v3, v7

    .line 315
    const/16 v8, 0x1f00

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v8

    .line 316
    const/16 v9, 0x1f02

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v9

    .line 317
    const/16 v10, 0x1f01

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v10

    .line 322
    const/16 v11, 0x3a

    const-string v12, "gl"

    const/16 v13, 0xa

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "r="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v14

    const/4 v2, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "g="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "b="

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "d="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/maps/driveabout/vector/aU;->B:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "v="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/4 v2, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/16 v2, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "c="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v13, v2

    const/16 v4, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/google/googlenav/android/E;->b()Z

    move-result v2

    if-eqz v2, :cond_2a1

    const-string v2, "t"

    :goto_265
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v4

    invoke-static {v13}, LaT/k;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v12, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 330
    const/16 v2, 0xd33

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 331
    const/4 v2, 0x0

    aget v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/maps/driveabout/vector/aU;->D:I

    .line 332
    sget-object v3, Lcom/google/android/maps/driveabout/vector/aU;->K:Ljava/util/Map;

    monitor-enter v3

    .line 333
    :try_start_288
    sget-object v2, Lcom/google/android/maps/driveabout/vector/aU;->K:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/maps/driveabout/vector/aU;->J:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    monitor-exit v3
    :try_end_29d
    .catchall {:try_start_288 .. :try_end_29d} :catchall_2a4

    .line 335
    return-void

    .line 295
    :cond_29e
    const/4 v2, 0x0

    goto/16 :goto_118

    .line 322
    :cond_2a1
    const-string v2, "f"

    goto :goto_265

    .line 334
    :catchall_2a4
    move-exception v2

    :try_start_2a5
    monitor-exit v3
    :try_end_2a6
    .catchall {:try_start_2a5 .. :try_end_2a6} :catchall_2a4

    throw v2

    .line 120
    nop

    :array_2a8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
    .end array-data

    .line 132
    :array_2bc
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 145
    :array_2e8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 158
    :array_304
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 171
    :array_320
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 184
    :array_33c
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xfft 0xfft
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xfft 0xfft
    .end array-data

    .line 197
    :array_358
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private J()V
    .registers 4

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbd0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 588
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb44

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 589
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 590
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb90

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 592
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x405

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 593
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x901

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 594
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1d01

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 597
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xc50

    const/16 v2, 0x1102

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 599
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    .line 600
    return-void
.end method

.method private K()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 790
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->s:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 791
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->s:[I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->s:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->s:[I

    .line 793
    return-void
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aU;)J
    .registers 3
    .parameter

    .prologue
    .line 846
    if-nez p0, :cond_5

    const-wide/16 v0, -0x1

    :goto_4
    return-wide v0

    :cond_5
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->J:J

    goto :goto_4
.end method

.method private a(IZ)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 716
    if-eqz p2, :cond_12

    .line 717
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    .line 718
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->p:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->q:I

    aput p1, v0, v1

    .line 723
    :goto_11
    return-void

    .line 720
    :cond_12
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    .line 721
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->p:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->q:I

    const/high16 v2, 0x4000

    or-int/2addr v2, p1

    aput v2, v0, v1

    goto :goto_11
.end method

.method public static b(J)Lcom/google/android/maps/driveabout/vector/aU;
    .registers 6
    .parameter

    .prologue
    .line 854
    sget-object v2, Lcom/google/android/maps/driveabout/vector/aU;->K:Ljava/util/Map;

    monitor-enter v2

    .line 855
    :try_start_3
    sget-object v0, Lcom/google/android/maps/driveabout/vector/aU;->K:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 856
    const/4 v1, 0x0

    .line 857
    if-eqz v0, :cond_28

    .line 858
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aU;

    .line 859
    if-nez v0, :cond_23

    .line 861
    sget-object v1, Lcom/google/android/maps/driveabout/vector/aU;->K:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    :cond_23
    :goto_23
    monitor-exit v2

    return-object v0

    .line 865
    :catchall_25
    move-exception v0

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0

    :cond_28
    move-object v0, v1

    goto :goto_23
.end method


# virtual methods
.method public declared-synchronized A()V
    .registers 5

    .prologue
    .line 741
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->t:I

    if-lez v0, :cond_12

    .line 742
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->t:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->s:[I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 743
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->t:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 745
    :cond_12
    monitor-exit p0

    return-void

    .line 741
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public B()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 751
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->u:Ljava/lang/Integer;

    if-nez v0, :cond_17

    .line 752
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 753
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v2, 0xd33

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 754
    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->u:Ljava/lang/Integer;

    .line 756
    :cond_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->u:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public C()I
    .registers 5

    .prologue
    .line 760
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->v:Ljava/lang/Integer;

    if-nez v0, :cond_19

    .line 761
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 762
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v2, 0x846e

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 763
    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->v:Ljava/lang/Integer;

    .line 765
    :cond_19
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->v:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public D()Lcom/google/android/maps/driveabout/vector/r;
    .registers 2

    .prologue
    .line 769
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->G:Lcom/google/android/maps/driveabout/vector/r;

    return-object v0
.end method

.method public E()Z
    .registers 2

    .prologue
    .line 777
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->c:Z

    return v0
.end method

.method public F()I
    .registers 2

    .prologue
    .line 786
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->B:I

    return v0
.end method

.method public G()Z
    .registers 2

    .prologue
    .line 811
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->C:Z

    return v0
.end method

.method public H()I
    .registers 2

    .prologue
    .line 818
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->D:I

    return v0
.end method

.method public I()Lcom/google/android/maps/driveabout/vector/dC;
    .registers 2

    .prologue
    .line 825
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->H:Lcom/google/android/maps/driveabout/vector/dC;

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 342
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->w:Z

    .line 343
    return-void
.end method

.method public a(J)V
    .registers 7
    .parameter

    .prologue
    .line 350
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->x:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 351
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/vector/aU;->x:J

    .line 357
    :goto_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->b:Lcom/google/android/maps/driveabout/vector/I;

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->x:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/I;->a(J)V

    .line 358
    return-void

    .line 355
    :cond_12
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->x:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->x:J

    goto :goto_a
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 804
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/aU;->C:Z

    .line 805
    return-void
.end method

.method public a(I)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 408
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->b:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/I;->a(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 409
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->w:Z

    .line 410
    const/4 v0, 0x0

    .line 412
    :cond_c
    return v0
.end method

.method public b()J
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 366
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->x:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_b

    .line 367
    const-wide/16 v0, -0x1

    .line 369
    :goto_a
    return-wide v0

    :cond_b
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->x:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_a
.end method

.method public b(I)V
    .registers 3
    .parameter

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->b:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/I;->b(I)V

    .line 418
    return-void
.end method

.method public declared-synchronized c(I)V
    .registers 5
    .parameter

    .prologue
    .line 730
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->t:I

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->s:[I

    array-length v1, v1

    if-ne v0, v1, :cond_b

    .line 731
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aU;->K()V

    .line 733
    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->s:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->t:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->t:I

    aput p1, v0, v1
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 734
    monitor-exit p0

    return-void

    .line 730
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->w:Z

    return v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 382
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->y:J

    return-wide v0
.end method

.method public e()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 389
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->b:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/I;->a()V

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->y:J

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->w:Z

    .line 392
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->x:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->y:J

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->x:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_20

    .line 393
    iput-wide v4, p0, Lcom/google/android/maps/driveabout/vector/aU;->x:J

    .line 395
    :cond_20
    return-void
.end method

.method f()V
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->b:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/I;->b()V

    .line 400
    return-void
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->z:Z

    return v0
.end method

.method public h()V
    .registers 2

    .prologue
    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->z:Z

    .line 431
    return-void
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->A:Z

    return v0
.end method

.method public j()V
    .registers 2

    .prologue
    .line 443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->A:Z

    .line 444
    return-void
.end method

.method public k()Lcom/google/android/maps/driveabout/vector/cp;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->o:Lcom/google/android/maps/driveabout/vector/cp;

    return-object v0
.end method

.method public l()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 471
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_12

    .line 472
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8074

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 473
    invoke-direct {p0, v2, v2}, Lcom/google/android/maps/driveabout/vector/aU;->a(IZ)V

    .line 475
    :cond_12
    return-void
.end method

.method public m()V
    .registers 3

    .prologue
    .line 485
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_14

    .line 486
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 487
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->a(IZ)V

    .line 489
    :cond_14
    return-void
.end method

.method public n()V
    .registers 3

    .prologue
    .line 492
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_14

    .line 493
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8076

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 494
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->a(IZ)V

    .line 496
    :cond_14
    return-void
.end method

.method public o()V
    .registers 3

    .prologue
    .line 499
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1a

    .line 500
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 501
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 502
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->a(IZ)V

    .line 504
    :cond_1a
    return-void
.end method

.method public p()V
    .registers 3

    .prologue
    .line 507
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1a

    .line 508
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 509
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8078

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 510
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->a(IZ)V

    .line 512
    :cond_1a
    return-void
.end method

.method public q()V
    .registers 3

    .prologue
    .line 515
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_12

    .line 516
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 517
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->a(IZ)V

    .line 519
    :cond_12
    return-void
.end method

.method public r()V
    .registers 3

    .prologue
    .line 522
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_12

    .line 523
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbe2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 524
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->a(IZ)V

    .line 526
    :cond_12
    return-void
.end method

.method public s()V
    .registers 3

    .prologue
    .line 529
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_13

    .line 530
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xbd0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 531
    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->a(IZ)V

    .line 533
    :cond_13
    return-void
.end method

.method public t()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 543
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_15

    .line 544
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->z:Z

    .line 545
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb71

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 546
    const/16 v0, 0x20

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/driveabout/vector/aU;->a(IZ)V

    .line 548
    :cond_15
    return-void
.end method

.method public u()V
    .registers 3

    .prologue
    .line 558
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_14

    .line 559
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v1, 0x8037

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 560
    const/16 v0, 0x40

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->a(IZ)V

    .line 562
    :cond_14
    return-void
.end method

.method public v()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 572
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_15

    .line 573
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->A:Z

    .line 574
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb90

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 575
    const/16 v0, 0x80

    invoke-direct {p0, v0, v2}, Lcom/google/android/maps/driveabout/vector/aU;->a(IZ)V

    .line 577
    :cond_15
    return-void
.end method

.method public w()V
    .registers 3

    .prologue
    .line 580
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_13

    .line 581
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0xb90

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 582
    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->a(IZ)V

    .line 584
    :cond_13
    return-void
.end method

.method public x()Ljavax/microedition/khronos/opengles/GL10;
    .registers 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    return-object v0
.end method

.method public y()V
    .registers 4

    .prologue
    .line 607
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->p:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->q:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->q:I

    const v2, 0x7fffffff

    aput v2, v0, v1

    .line 608
    return-void
.end method

.method public z()V
    .registers 10

    .prologue
    const/16 v8, 0xde1

    const/16 v7, 0xbe2

    const/16 v6, 0xbd0

    const/16 v5, 0xb90

    const/16 v4, 0xb71

    .line 628
    :goto_a
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->q:I

    if-ltz v0, :cond_df

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->p:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->q:I

    aget v0, v0, v1

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_df

    .line 631
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->p:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->q:I

    aget v0, v0, v1

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3e

    const/4 v0, 0x1

    .line 632
    :goto_29
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aU;->p:[I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->q:I

    aget v1, v1, v2

    const v2, 0x3fffffff

    and-int/2addr v1, v2

    .line 633
    sparse-switch v1, :sswitch_data_e0

    .line 703
    :goto_36
    if-eqz v0, :cond_d6

    .line 704
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    goto :goto_a

    .line 631
    :cond_3e
    const/4 v0, 0x0

    goto :goto_29

    .line 635
    :sswitch_40
    if-eqz v0, :cond_4b

    .line 636
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8074

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_36

    .line 638
    :cond_4b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8074

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_36

    .line 643
    :sswitch_54
    if-eqz v0, :cond_64

    .line 644
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 645
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8078

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_36

    .line 647
    :cond_64
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 648
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8078

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_36

    .line 653
    :sswitch_72
    if-eqz v0, :cond_7a

    .line 654
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto :goto_36

    .line 656
    :cond_7a
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_36

    .line 661
    :sswitch_80
    if-eqz v0, :cond_8b

    .line 662
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8076

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    goto :goto_36

    .line 664
    :cond_8b
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8076

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    goto :goto_36

    .line 669
    :sswitch_94
    if-eqz v0, :cond_9c

    .line 670
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto :goto_36

    .line 672
    :cond_9c
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_36

    .line 677
    :sswitch_a2
    if-eqz v0, :cond_aa

    .line 678
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto :goto_36

    .line 680
    :cond_aa
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_36

    .line 685
    :sswitch_b0
    if-eqz v0, :cond_bc

    .line 686
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8037

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto/16 :goto_36

    .line 688
    :cond_bc
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    const v3, 0x8037

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_36

    .line 693
    :sswitch_c6
    if-eqz v0, :cond_cf

    .line 694
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto/16 :goto_36

    .line 696
    :cond_cf
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_36

    .line 706
    :cond_d6
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->r:I

    goto/16 :goto_a

    .line 709
    :cond_df
    return-void

    .line 633
    :sswitch_data_e0
    .sparse-switch
        0x1 -> :sswitch_40
        0x2 -> :sswitch_54
        0x4 -> :sswitch_72
        0x8 -> :sswitch_80
        0x10 -> :sswitch_94
        0x20 -> :sswitch_a2
        0x40 -> :sswitch_b0
        0x80 -> :sswitch_c6
    .end sparse-switch
.end method
