.class final LFc;
.super Ljava/lang/Object;
.source "EvaluableOffsetList.java"

# interfaces
.implements LFb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LFb",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private a:I

.field private a:LFc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFc",
            "<TT;TV;>;"
        }
    .end annotation
.end field

.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:I

.field private b:LFc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFc",
            "<TT;TV;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private c:I

.field private c:LFc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFc",
            "<TT;TV;>;"
        }
    .end annotation
.end field

.field private d:LFc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFc",
            "<TT;TV;>;"
        }
    .end annotation
.end field

.field private e:LFc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFc",
            "<TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const-class v0, LEY;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, LFc;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Ljava/lang/Object;I)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    sget-boolean v0, LFc;->a:Z

    if-nez v0, :cond_f

    if-gez p2, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 135
    :cond_f
    iput-object p1, p0, LFc;->a:Ljava/lang/Object;

    .line 136
    iput p2, p0, LFc;->b:I

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;ILEZ;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, LFc;-><init>(Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic a(LFc;)I
    .registers 2
    .parameter

    .prologue
    .line 81
    iget v0, p0, LFc;->a:I

    return v0
.end method

.method private a()LFc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LFc",
            "<TT;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 311
    iget-object v0, p0, LFc;->c:LFc;

    .line 312
    iget-object v1, v0, LFc;->b:LFc;

    .line 313
    iget-object v2, p0, LFc;->b:LFc;

    .line 314
    invoke-direct {p0, v0}, LFc;->e(LFc;)V

    .line 315
    invoke-direct {p0, v1}, LFc;->d(LFc;)V

    .line 316
    invoke-direct {v0, p0}, LFc;->a(LFc;)V

    .line 317
    invoke-static {v1}, LEY;->a(LFc;)I

    move-result v1

    invoke-static {v2}, LEY;->a(LFc;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LFc;->c:I

    .line 318
    iget v1, p0, LFc;->c:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, LFc;->c:I

    if-le v1, v2, :cond_2e

    .line 319
    iget v1, p0, LFc;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LFc;->c:I

    .line 321
    :cond_2e
    iget v1, v0, LFc;->a:I

    iget v2, p0, LFc;->a:I

    iget v3, p0, LFc;->b:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, LFc;->a:I

    .line 322
    iput-object v4, p0, LFc;->b:Ljava/lang/Object;

    .line 323
    iput-object v4, v0, LFc;->b:Ljava/lang/Object;

    .line 324
    return-object v0
.end method

.method static synthetic a(LFc;)LFc;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, LFc;->e:LFc;

    return-object v0
.end method

.method static synthetic a(LFc;LFc;)LFc;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, LFc;->d:LFc;

    return-object p1
.end method

.method static synthetic a(LFc;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, LFc;->a:Ljava/lang/Object;

    return-object v0
.end method

.method private a(LFc;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFc",
            "<TT;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 394
    sget-boolean v0, LFc;->a:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 395
    :cond_c
    iput-object p1, p0, LFc;->b:LFc;

    .line 396
    iput-object p0, p1, LFc;->a:LFc;

    .line 397
    return-void
.end method

.method static synthetic b(LFc;)I
    .registers 2
    .parameter

    .prologue
    .line 81
    iget v0, p0, LFc;->b:I

    return v0
.end method

.method private b()LFc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LFc",
            "<TT;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 333
    iget-object v0, p0, LFc;->b:LFc;

    .line 334
    iget-object v1, v0, LFc;->c:LFc;

    .line 335
    iget-object v2, p0, LFc;->c:LFc;

    .line 336
    invoke-direct {p0, v0}, LFc;->e(LFc;)V

    .line 337
    invoke-direct {p0, v1}, LFc;->c(LFc;)V

    .line 338
    invoke-direct {v0, p0}, LFc;->b(LFc;)V

    .line 339
    invoke-static {v1}, LEY;->a(LFc;)I

    move-result v1

    invoke-static {v2}, LEY;->a(LFc;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LFc;->c:I

    .line 340
    iget v1, p0, LFc;->c:I

    add-int/lit8 v1, v1, 0x1

    iget v2, v0, LFc;->c:I

    if-le v1, v2, :cond_2e

    .line 341
    iget v1, p0, LFc;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LFc;->c:I

    .line 343
    :cond_2e
    iget v1, p0, LFc;->a:I

    iget v2, v0, LFc;->a:I

    iget v3, v0, LFc;->b:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, LFc;->a:I

    .line 344
    iput-object v4, p0, LFc;->b:Ljava/lang/Object;

    .line 345
    iput-object v4, v0, LFc;->b:Ljava/lang/Object;

    .line 346
    return-object v0
.end method

.method static synthetic b(LFc;)LFc;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, LFc;->b:LFc;

    return-object v0
.end method

.method static synthetic b(LFc;LFc;)LFc;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, LFc;->e:LFc;

    return-object p1
.end method

.method private b(I)V
    .registers 4
    .parameter

    .prologue
    .line 355
    iget-object v0, p0, LFc;->a:LFc;

    :goto_2
    if-eqz v0, :cond_12

    .line 357
    iget-object v1, v0, LFc;->b:LFc;

    if-ne v1, p0, :cond_d

    .line 358
    iget v1, v0, LFc;->a:I

    add-int/2addr v1, p1

    iput v1, v0, LFc;->a:I

    .line 356
    :cond_d
    iget-object v1, v0, LFc;->a:LFc;

    move-object p0, v0

    move-object v0, v1

    goto :goto_2

    .line 361
    :cond_12
    return-void
.end method

.method private b(LFc;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFc",
            "<TT;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 408
    sget-boolean v0, LFc;->a:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 409
    :cond_c
    iput-object p1, p0, LFc;->c:LFc;

    .line 410
    iput-object p0, p1, LFc;->a:LFc;

    .line 411
    return-void
.end method

.method static synthetic c(LFc;)I
    .registers 2
    .parameter

    .prologue
    .line 81
    iget v0, p0, LFc;->c:I

    return v0
.end method

.method private c()LFc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LFc",
            "<TT;TV;>;"
        }
    .end annotation

    .prologue
    .line 369
    .line 370
    iget-object v0, p0, LFc;->b:LFc;

    :goto_2
    if-eqz v0, :cond_9

    iget-object v1, v0, LFc;->b:LFc;

    move-object p0, v0

    move-object v0, v1

    goto :goto_2

    .line 371
    :cond_9
    return-object p0
.end method

.method static synthetic c(LFc;)LFc;
    .registers 2
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, LFc;->c:LFc;

    return-object v0
.end method

.method private c()V
    .registers 5

    .prologue
    .line 281
    invoke-virtual {p0}, LFc;->b()V

    .line 282
    :goto_3
    iget-object v0, p0, LFc;->a:LFc;

    if-eqz v0, :cond_32

    .line 283
    iget v0, p0, LFc;->c:I

    .line 284
    iget-object v1, p0, LFc;->b:LFc;

    invoke-static {v1}, LEY;->a(LFc;)I

    move-result v1

    .line 285
    iget-object v2, p0, LFc;->c:LFc;

    invoke-static {v2}, LEY;->a(LFc;)I

    move-result v2

    .line 286
    add-int/lit8 v3, v1, 0x2

    if-ne v2, v3, :cond_33

    .line 287
    iget-object v1, p0, LFc;->c:LFc;

    iget-object v1, v1, LFc;->c:LFc;

    invoke-static {v1}, LEY;->a(LFc;)I

    move-result v1

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2a

    .line 288
    iget-object v1, p0, LFc;->c:LFc;

    invoke-direct {v1}, LFc;->b()LFc;

    .line 290
    :cond_2a
    invoke-direct {p0}, LFc;->a()LFc;

    move-result-object p0

    .line 299
    :goto_2e
    iget v1, p0, LFc;->c:I

    if-ne v1, v0, :cond_56

    .line 303
    :cond_32
    return-void

    .line 291
    :cond_33
    add-int/lit8 v3, v2, 0x2

    if-ne v1, v3, :cond_4d

    .line 292
    iget-object v2, p0, LFc;->b:LFc;

    iget-object v2, v2, LFc;->b:LFc;

    invoke-static {v2}, LEY;->a(LFc;)I

    move-result v2

    add-int/lit8 v1, v1, -0x1

    if-eq v2, v1, :cond_48

    .line 293
    iget-object v1, p0, LFc;->b:LFc;

    invoke-direct {v1}, LFc;->a()LFc;

    .line 295
    :cond_48
    invoke-direct {p0}, LFc;->b()LFc;

    move-result-object p0

    goto :goto_2e

    .line 297
    :cond_4d
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, LFc;->c:I

    goto :goto_2e

    .line 282
    :cond_56
    iget-object p0, p0, LFc;->a:LFc;

    goto :goto_3
.end method

.method private c(LFc;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFc",
            "<TT;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 422
    iput-object p1, p0, LFc;->b:LFc;

    .line 423
    if-eqz p1, :cond_6

    .line 424
    iput-object p0, p1, LFc;->a:LFc;

    .line 426
    :cond_6
    return-void
.end method

.method private d()LFc;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LFc",
            "<TT;TV;>;"
        }
    .end annotation

    .prologue
    .line 380
    .line 381
    iget-object v0, p0, LFc;->c:LFc;

    :goto_2
    if-eqz v0, :cond_9

    iget-object v1, v0, LFc;->c:LFc;

    move-object p0, v0

    move-object v0, v1

    goto :goto_2

    .line 382
    :cond_9
    return-object p0
.end method

.method private d(LFc;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFc",
            "<TT;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 437
    iput-object p1, p0, LFc;->c:LFc;

    .line 438
    if-eqz p1, :cond_6

    .line 439
    iput-object p0, p1, LFc;->a:LFc;

    .line 441
    :cond_6
    return-void
.end method

.method private e(LFc;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFc",
            "<TT;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 449
    sget-boolean v0, LFc;->a:Z

    if-nez v0, :cond_e

    iget-object v0, p0, LFc;->a:LFc;

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 450
    :cond_e
    if-eqz p1, :cond_14

    .line 451
    iget-object v0, p0, LFc;->a:LFc;

    iput-object v0, p1, LFc;->a:LFc;

    .line 453
    :cond_14
    iget-object v0, p0, LFc;->a:LFc;

    iget-object v0, v0, LFc;->b:LFc;

    if-ne v0, p0, :cond_1f

    .line 454
    iget-object v0, p0, LFc;->a:LFc;

    iput-object p1, v0, LFc;->b:LFc;

    .line 458
    :goto_1e
    return-void

    .line 456
    :cond_1f
    iget-object v0, p0, LFc;->a:LFc;

    iput-object p1, v0, LFc;->c:LFc;

    goto :goto_1e
.end method


# virtual methods
.method public a()I
    .registers 6

    .prologue
    .line 161
    iget v1, p0, LFc;->a:I

    .line 162
    iget-object v0, p0, LFc;->a:LFc;

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_7
    if-eqz v1, :cond_18

    .line 164
    iget-object v2, v1, LFc;->c:LFc;

    if-ne v2, p0, :cond_13

    .line 165
    iget v2, v1, LFc;->a:I

    iget v3, v1, LFc;->b:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 163
    :cond_13
    iget-object v2, v1, LFc;->a:LFc;

    move-object p0, v1

    move-object v1, v2

    goto :goto_7

    .line 169
    :cond_18
    return v0
.end method

.method public a()LFb;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LFb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, LFc;->d:LFc;

    return-object v0
.end method

.method public a(ILjava/lang/Object;)LFb;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "LFb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 234
    sget-boolean v0, LFc;->a:Z

    if-nez v0, :cond_c

    if-gez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 235
    :cond_c
    sget-boolean v0, LFc;->a:Z

    if-nez v0, :cond_1a

    iget v0, p0, LFc;->b:I

    if-le p1, v0, :cond_1a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 236
    :cond_1a
    iget v0, p0, LFc;->b:I

    sub-int v1, v0, p1

    .line 237
    new-instance v2, LFc;

    invoke-direct {v2, p2, v1}, LFc;-><init>(Ljava/lang/Object;I)V

    .line 238
    iget-object v0, p0, LFc;->e:LFc;

    iput-object v0, v2, LFc;->e:LFc;

    .line 239
    iput-object p0, v2, LFc;->d:LFc;

    .line 240
    iget-object v0, p0, LFc;->e:LFc;

    iput-object v2, v0, LFc;->d:LFc;

    .line 241
    iput-object v2, p0, LFc;->e:LFc;

    .line 242
    iput p1, p0, LFc;->b:I

    .line 243
    iget-object v0, p0, LFc;->c:LFc;

    if-nez v0, :cond_3e

    .line 244
    invoke-direct {p0, v2}, LFc;->b(LFc;)V

    .line 254
    :goto_38
    iget-object v0, v2, LFc;->a:LFc;

    invoke-direct {v0}, LFc;->c()V

    .line 255
    return-object v2

    .line 246
    :cond_3e
    iget-object v0, p0, LFc;->c:LFc;

    .line 247
    :goto_40
    iget-object v3, v0, LFc;->b:LFc;

    if-eqz v3, :cond_4c

    .line 248
    iget v3, v0, LFc;->a:I

    add-int/2addr v3, v1

    iput v3, v0, LFc;->a:I

    .line 249
    iget-object v0, v0, LFc;->b:LFc;

    goto :goto_40

    .line 251
    :cond_4c
    iget v3, v0, LFc;->a:I

    add-int/2addr v1, v3

    iput v1, v0, LFc;->a:I

    .line 252
    invoke-direct {v0, v2}, LFc;->a(LFc;)V

    goto :goto_38
.end method

.method public a(Ljava/lang/Object;I)LFb;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "LFb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, LFc;

    invoke-direct {v0, p1, p2}, LFc;-><init>(Ljava/lang/Object;I)V

    .line 180
    iget-object v1, p0, LFc;->d:LFc;

    iput-object v1, v0, LFc;->d:LFc;

    .line 181
    iput-object p0, v0, LFc;->e:LFc;

    .line 182
    iget-object v1, p0, LFc;->d:LFc;

    iput-object v0, v1, LFc;->e:LFc;

    .line 183
    iput-object v0, p0, LFc;->d:LFc;

    .line 184
    iget-object v1, p0, LFc;->b:LFc;

    if-nez v1, :cond_2a

    .line 185
    invoke-direct {p0, v0}, LFc;->a(LFc;)V

    .line 189
    :goto_18
    iget v1, p0, LFc;->a:I

    iget v2, v0, LFc;->b:I

    add-int/2addr v1, v2

    iput v1, p0, LFc;->a:I

    .line 190
    iget v1, v0, LFc;->b:I

    invoke-direct {p0, v1}, LFc;->b(I)V

    .line 191
    iget-object v1, v0, LFc;->a:LFc;

    invoke-direct {v1}, LFc;->c()V

    .line 192
    return-object v0

    .line 187
    :cond_2a
    iget-object v1, p0, LFc;->b:LFc;

    invoke-direct {v1}, LFc;->d()LFc;

    move-result-object v1

    invoke-direct {v1, v0}, LFc;->b(LFc;)V

    goto :goto_18
.end method

.method public synthetic a()LFr;
    .registers 2

    .prologue
    .line 81
    invoke-virtual {p0}, LFc;->b()LFb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(ILjava/lang/Object;)LFr;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2}, LFc;->a(ILjava/lang/Object;)LFb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)LFr;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2}, LFc;->a(Ljava/lang/Object;I)LFb;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, LFc;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 198
    sget-boolean v0, LFc;->a:Z

    if-nez v0, :cond_f

    iget-object v0, p0, LFc;->a:LFc;

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 199
    :cond_f
    iget-object v0, p0, LFc;->e:LFc;

    iget-object v1, p0, LFc;->d:LFc;

    iput-object v1, v0, LFc;->d:LFc;

    .line 200
    iget-object v0, p0, LFc;->d:LFc;

    iget-object v1, p0, LFc;->e:LFc;

    iput-object v1, v0, LFc;->e:LFc;

    .line 201
    iget v0, p0, LFc;->b:I

    neg-int v0, v0

    invoke-direct {p0, v0}, LFc;->b(I)V

    .line 202
    iget-object v0, p0, LFc;->c:LFc;

    if-nez v0, :cond_3a

    .line 203
    iget-object v0, p0, LFc;->b:LFc;

    invoke-direct {p0, v0}, LFc;->e(LFc;)V

    .line 204
    iget-object v0, p0, LFc;->a:LFc;

    invoke-direct {v0}, LFc;->c()V

    .line 225
    :goto_2f
    iput-object v5, p0, LFc;->e:LFc;

    .line 226
    iput-object v5, p0, LFc;->d:LFc;

    .line 227
    iput-object v5, p0, LFc;->a:LFc;

    .line 228
    iput-object v5, p0, LFc;->b:LFc;

    .line 229
    iput-object v5, p0, LFc;->c:LFc;

    .line 230
    return-void

    .line 206
    :cond_3a
    iget-object v0, p0, LFc;->c:LFc;

    invoke-direct {v0}, LFc;->c()LFc;

    move-result-object v1

    .line 207
    iget-object v0, v1, LFc;->a:LFc;

    .line 208
    iget v3, v1, LFc;->b:I

    move-object v2, v0

    .line 209
    :goto_45
    if-eq v2, p0, :cond_4f

    .line 210
    iget v4, v2, LFc;->a:I

    sub-int/2addr v4, v3

    iput v4, v2, LFc;->a:I

    .line 209
    iget-object v2, v2, LFc;->a:LFc;

    goto :goto_45

    .line 212
    :cond_4f
    iget-object v2, v1, LFc;->c:LFc;

    invoke-direct {v1, v2}, LFc;->e(LFc;)V

    .line 213
    invoke-direct {p0, v1}, LFc;->e(LFc;)V

    .line 216
    iget-object v2, p0, LFc;->b:LFc;

    invoke-direct {v1, v2}, LFc;->c(LFc;)V

    .line 217
    iget-object v2, p0, LFc;->c:LFc;

    invoke-direct {v1, v2}, LFc;->d(LFc;)V

    .line 218
    iget v2, p0, LFc;->a:I

    iput v2, v1, LFc;->a:I

    .line 219
    iget v2, p0, LFc;->c:I

    iput v2, v1, LFc;->c:I

    .line 220
    iget-object v2, p0, LFc;->a:LFc;

    invoke-virtual {v2}, LFc;->b()V

    .line 221
    if-eq v0, p0, :cond_74

    :goto_70
    invoke-direct {v0}, LFc;->c()V

    goto :goto_2f

    :cond_74
    move-object v0, v1

    goto :goto_70
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 260
    sget-boolean v0, LFc;->a:Z

    if-nez v0, :cond_f

    iget v0, p0, LFc;->b:I

    neg-int v1, p1

    if-ge v0, v1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 261
    :cond_f
    iget v0, p0, LFc;->b:I

    add-int/2addr v0, p1

    iput v0, p0, LFc;->b:I

    .line 262
    invoke-direct {p0, p1}, LFc;->b(I)V

    .line 263
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 156
    iput-object p1, p0, LFc;->a:Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, LFc;->b:I

    return v0
.end method

.method public b()LFb;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LFb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, LFc;->e:LFc;

    return-object v0
.end method

.method public synthetic b()LFr;
    .registers 2

    .prologue
    .line 81
    invoke-virtual {p0}, LFc;->a()LFb;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, LFc;->b:Ljava/lang/Object;

    if-eqz v0, :cond_10

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, LFc;->b:Ljava/lang/Object;

    .line 269
    iget-object v0, p0, LFc;->a:LFc;

    if-eqz v0, :cond_10

    .line 270
    iget-object v0, p0, LFc;->a:LFc;

    invoke-virtual {v0}, LFc;->b()V

    .line 273
    :cond_10
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LFc;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LFc;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LFc;->a()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
