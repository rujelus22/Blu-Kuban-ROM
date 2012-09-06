.class public Lcom/google/googlenav/ui/wizard/bu;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# static fields
.field private static j:Lcom/google/googlenav/common/Config;

.field private static k:Ljava/lang/String;


# instance fields
.field private a:Lad/b;

.field private b:Lad/b;

.field private final c:Lcom/google/googlenav/J;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 154
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/ui/wizard/bu;->j:Lcom/google/googlenav/common/Config;

    .line 172
    const-string v0, ""

    sput-object v0, Lcom/google/googlenav/ui/wizard/bu;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;Lcom/google/googlenav/J;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 176
    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bu;->c:Lcom/google/googlenav/J;

    .line 177
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(I)I

    .line 178
    return-void
.end method

.method private A()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 571
    iget v1, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    packed-switch v1, :pswitch_data_a

    .line 577
    :goto_6
    :pswitch_6
    return v0

    .line 573
    :pswitch_7
    const/4 v0, 0x0

    goto :goto_6

    .line 571
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private a(I)I
    .registers 2
    .parameter

    .prologue
    .line 186
    iput p1, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    .line 187
    return p1
.end method

.method public static a(Lcom/google/googlenav/ui/p;)Lad/b;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 312
    sget-object v1, Lcom/google/googlenav/ui/wizard/bu;->j:Lcom/google/googlenav/common/Config;

    invoke-virtual {v1}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v1

    .line 313
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/K;->M()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 317
    const-string v2, "SAVED_DIRECTIONS"

    invoke-interface {v1, v2, v0}, Lcom/google/googlenav/common/io/j;->a(Ljava/lang/String;[B)Z

    .line 321
    const-string v2, "SAVED_DIRECTIONS_DB"

    invoke-interface {v1, v2}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 323
    :cond_1b
    const-string v2, "PROTO_SAVED_DIRECTIONS_DB"

    invoke-static {v1, v2}, Lcom/google/googlenav/common/j;->a(Lcom/google/googlenav/common/io/j;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v1

    .line 325
    if-nez v1, :cond_24

    .line 338
    :goto_23
    return-object v0

    .line 330
    :cond_24
    :try_start_24
    invoke-static {v1, p0}, Lad/b;->a(Ljava/io/DataInput;Lcom/google/googlenav/ui/p;)Lad/b;

    move-result-object v1

    .line 331
    instance-of v2, v1, Lad/s;

    if-eqz v2, :cond_2f

    .line 332
    invoke-virtual {v1}, Lad/b;->G()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2f} :catch_31

    :cond_2f
    move-object v0, v1

    .line 334
    goto :goto_23

    .line 335
    :catch_31
    move-exception v1

    .line 336
    const-string v2, "UI-TDW"

    invoke-static {v2, v1}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23
.end method

.method private static a(Lad/l;Z)Ljava/lang/String;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v1, 0x0

    const/4 v9, 0x2

    const/4 v2, 0x1

    .line 697
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 705
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 706
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 707
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 709
    invoke-virtual {p0}, Lad/l;->c()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 710
    invoke-virtual {v3, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 711
    invoke-virtual {v3, v9}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 712
    invoke-virtual {v3, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 714
    if-ne v5, v8, :cond_2d

    if-ne v4, v7, :cond_2d

    if-eq v0, v6, :cond_35

    :cond_2d
    move v0, v2

    .line 716
    :goto_2e
    if-eqz p1, :cond_37

    .line 717
    invoke-static {v3}, Lcom/google/googlenav/ui/bi;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    .line 722
    :goto_34
    return-object v0

    :cond_35
    move v0, v1

    .line 714
    goto :goto_2e

    .line 718
    :cond_37
    if-eqz v0, :cond_52

    .line 719
    const/16 v0, 0x5bc

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {v3}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3}, Lcom/google/googlenav/ui/bi;->b(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0, v4}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34

    .line 722
    :cond_52
    invoke-static {v3}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method

.method private a(IZ)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->o()Z

    move-result v0

    if-nez v0, :cond_7

    .line 371
    :goto_6
    return-void

    .line 361
    :cond_7
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(I)I

    .line 362
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-virtual {v0, p1}, Lad/b;->s(I)V

    .line 364
    if-eqz p2, :cond_22

    .line 365
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/ui/wizard/A;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/wizard/A;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/z;->a(Lcom/google/googlenav/ui/wizard/A;)V

    .line 369
    :cond_22
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->c:Lcom/google/googlenav/J;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->e(Lad/b;)LaM/O;

    .line 370
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->a()V

    goto :goto_6
.end method

.method static synthetic a(Lcom/google/googlenav/ui/wizard/bu;)V
    .registers 1
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->y()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 507
    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-virtual {v2}, Lad/b;->k()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/googlenav/ui/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 508
    return-void
.end method

.method public static b(Lad/l;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 664
    invoke-virtual {p0}, Lad/l;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 665
    const/16 v0, 0xe5

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 683
    :goto_e
    return-object v0

    .line 668
    :cond_f
    const-string v0, ""

    .line 669
    invoke-virtual {p0}, Lad/l;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_44

    .line 681
    :goto_18
    invoke-virtual {p0}, Lad/l;->d()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_42

    move v1, v2

    :goto_20
    invoke-static {p0, v1}, Lcom/google/googlenav/ui/wizard/bu;->a(Lad/l;Z)Ljava/lang/String;

    move-result-object v1

    .line 683
    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 671
    :pswitch_2d
    const/16 v0, 0xe4

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 674
    :pswitch_34
    const/16 v0, 0x3d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    .line 677
    :pswitch_3b
    const/16 v0, 0x21d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_42
    move v1, v3

    .line 681
    goto :goto_20

    .line 669
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_34
        :pswitch_3b
    .end packed-switch
.end method

.method private b(I)V
    .registers 4
    .parameter

    .prologue
    .line 535
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->a:Lad/b;

    .line 536
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->a:Lad/b;

    invoke-virtual {v0}, Lad/b;->aJ()Lad/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    .line 537
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->a:Lad/b;

    invoke-virtual {v1}, Lad/b;->r()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 539
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->a:Lad/b;

    invoke-virtual {v1}, Lad/b;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lad/b;->e(I)V

    .line 540
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-virtual {v0, p1}, Lad/b;->o(I)V

    .line 541
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-virtual {v0}, Lad/b;->aN()V

    .line 543
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-static {}, Lad/l;->a()Lad/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lad/b;->a(Lad/l;)V

    .line 544
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->K()V

    .line 545
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 512
    const/4 v0, 0x4

    const-string v1, "sa"

    invoke-static {v0, v1, p1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 518
    const/16 v0, 0x38

    const-string v1, "ir"

    invoke-static {v0, v1, p1}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method private y()V
    .registers 5

    .prologue
    .line 275
    sget-object v0, Lcom/google/googlenav/ui/wizard/bu;->j:Lcom/google/googlenav/common/Config;

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    if-eqz v1, :cond_2a

    .line 280
    :try_start_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 281
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 282
    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-virtual {v3, v2}, Lad/b;->b(Ljava/io/DataOutput;)V

    .line 284
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "PROTO_SAVED_DIRECTIONS_DB"

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/common/io/j;->b([BLjava/lang/String;)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_22} :catch_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_22} :catch_23

    .line 295
    :goto_22
    return-void

    .line 287
    :catch_23
    move-exception v0

    .line 290
    const-string v1, "UI-DL save"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22

    .line 293
    :cond_2a
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->g()V

    goto :goto_22

    .line 285
    :catch_2e
    move-exception v0

    goto :goto_22
.end method

.method private z()V
    .registers 3

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->a:Lad/b;

    .line 383
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->a:Lad/b;

    invoke-virtual {v0}, Lad/b;->aJ()Lad/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    .line 384
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-virtual {v0}, Lad/b;->aN()V

    .line 386
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v0, Lcom/google/googlenav/ui/view/android/A;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/A;->i()Lcom/google/googlenav/ui/view/G;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/i;->a(Lad/b;Lcom/google/googlenav/ui/view/G;)V

    .line 388
    return-void
.end method


# virtual methods
.method public a(LZ/a;)I
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x3

    const/16 v2, 0x36

    .line 394
    invoke-virtual {p1}, LZ/a;->b()I

    move-result v1

    .line 395
    if-eq v1, v2, :cond_d

    const/16 v0, 0x34

    if-ne v1, v0, :cond_22

    :cond_d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-virtual {v0}, Lad/b;->ax()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 397
    if-ne v1, v2, :cond_23

    const-string v0, "l"

    .line 400
    :goto_19
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->b(Ljava/lang/String;)V

    .line 401
    if-ne v1, v2, :cond_26

    const/4 v0, 0x1

    :goto_1f
    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->b(I)V

    .line 405
    :cond_22
    return v3

    .line 397
    :cond_23
    const-string v0, "e"

    goto :goto_19

    .line 401
    :cond_26
    const/4 v0, -0x1

    goto :goto_1f
.end method

.method public a(LZ/b;)I
    .registers 3
    .parameter

    .prologue
    .line 582
    const/4 v0, 0x4

    return v0
.end method

.method public a(Lad/b;)V
    .registers 4
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    if-ne v0, p1, :cond_5

    .line 269
    :goto_4
    return-void

    .line 225
    :cond_5
    invoke-virtual {p1}, Lad/b;->v()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 226
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->c:Lcom/google/googlenav/J;

    invoke-interface {v0}, Lcom/google/googlenav/J;->a()V

    .line 228
    :cond_10
    invoke-virtual {p1}, Lad/b;->y()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2e

    .line 229
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->a:Lad/b;

    if-eqz v0, :cond_1d

    .line 231
    iget-object p1, p0, Lcom/google/googlenav/ui/wizard/bu;->a:Lad/b;

    .line 233
    :cond_1d
    invoke-virtual {p1}, Lad/b;->aj()I

    move-result v0

    if-gez v0, :cond_6d

    .line 234
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->c:Lcom/google/googlenav/J;

    const/16 v1, 0x315

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 239
    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->a:Lad/b;

    .line 240
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    .line 243
    invoke-virtual {p1}, Lad/b;->aa()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 244
    const-string v0, "ha"

    invoke-static {v0}, LaM/O;->c(Ljava/lang/String;)V

    .line 250
    :cond_3e
    invoke-virtual {p1}, Lad/b;->C()[Lad/y;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 251
    const-string v0, "sa"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->c(Ljava/lang/String;)V

    .line 254
    :cond_49
    invoke-virtual {p1}, Lad/b;->D()[Lad/y;

    move-result-object v0

    if-eqz v0, :cond_54

    .line 255
    const-string v0, "ea"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->c(Ljava/lang/String;)V

    .line 258
    :cond_54
    invoke-virtual {p1}, Lad/b;->aF()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_60

    .line 259
    const-string v0, "a"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(Ljava/lang/String;)V

    .line 263
    :cond_60
    new-instance v0, Lcom/google/googlenav/ui/wizard/bv;

    invoke-static {}, Lcom/google/googlenav/bI;->a()LY/c;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/bv;-><init>(Lcom/google/googlenav/ui/wizard/bu;LY/c;)V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bv;->g()V

    goto :goto_4

    .line 236
    :cond_6d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->c:Lcom/google/googlenav/J;

    const/16 v1, 0x316

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    goto :goto_2e
.end method

.method public a(Lad/l;)V
    .registers 3
    .parameter

    .prologue
    .line 558
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    if-nez v0, :cond_8

    .line 559
    invoke-static {}, Lcom/google/googlenav/common/util/t;->a()V

    .line 567
    :goto_7
    return-void

    .line 563
    :cond_8
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->a:Lad/b;

    .line 564
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->a:Lad/b;

    invoke-virtual {v0}, Lad/b;->aJ()Lad/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    .line 565
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-virtual {v0}, Lad/b;->aN()V

    .line 566
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-virtual {v0, p1}, Lad/b;->a(Lad/l;)V

    goto :goto_7
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 410
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:Lcom/google/googlenav/ui/view/android/bb;

    instance-of v0, v0, Lcom/google/googlenav/ui/view/android/aq;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->h:Lcom/google/googlenav/ui/view/android/bb;

    check-cast v1, Lcom/google/googlenav/ui/view/android/aq;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bu;->c:Lcom/google/googlenav/J;

    iget-object v3, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->i()Lcom/google/googlenav/ui/wizard/bZ;

    move-result-object v4

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v5

    move v0, p1

    invoke-static/range {v0 .. v6}, LaM/O;->a(ILcom/google/googlenav/ui/view/android/aq;Lcom/google/googlenav/J;Lad/b;Lcom/google/googlenav/ui/wizard/bZ;Lcom/google/googlenav/ui/wizard/z;Z)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 416
    packed-switch p1, :pswitch_data_c6

    .line 501
    :goto_2c
    :pswitch_2c
    return v6

    .line 420
    :pswitch_2d
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->g()V

    goto :goto_2c

    .line 426
    :cond_31
    sparse-switch p1, :sswitch_data_d2

    .line 501
    const/4 v6, 0x0

    goto :goto_2c

    .line 428
    :sswitch_36
    const-string v0, "o"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->c(Ljava/lang/String;)V

    .line 430
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(I)I

    .line 431
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->a()V

    .line 432
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->c:Lcom/google/googlenav/J;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-interface {v0, v1}, Lcom/google/googlenav/J;->d(Lad/b;)V

    goto :goto_2c

    .line 436
    :sswitch_4a
    const-string v0, "t"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->b(Ljava/lang/String;)V

    .line 437
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(I)I

    .line 438
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 440
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->h()Lcom/google/googlenav/ui/wizard/bM;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-virtual {v1}, Lad/b;->S()Lad/l;

    move-result-object v1

    invoke-virtual {v0, v1, v9}, Lcom/google/googlenav/ui/wizard/bM;->a(Lad/l;Lcom/google/googlenav/ui/wizard/bN;)V

    goto :goto_2c

    .line 447
    :sswitch_6c
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->g()V

    .line 448
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->b(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->e()Lad/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lad/b;->r(I)V

    .line 452
    invoke-direct {p0, p2, v6}, Lcom/google/googlenav/ui/wizard/bu;->a(IZ)V

    goto :goto_2c

    .line 456
    :sswitch_81
    invoke-direct {p0, v7}, Lcom/google/googlenav/ui/wizard/bu;->b(I)V

    goto :goto_2c

    .line 461
    :sswitch_85
    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/wizard/bu;->b(I)V

    goto :goto_2c

    .line 467
    :sswitch_89
    const-string v0, "od"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(Ljava/lang/String;)V

    .line 468
    invoke-direct {p0, v8}, Lcom/google/googlenav/ui/wizard/bu;->a(I)I

    .line 473
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 474
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->j()V

    goto :goto_2c

    .line 478
    :sswitch_9a
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->z()V

    .line 479
    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/wizard/bu;->a(I)I

    .line 480
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->K()V

    .line 481
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->a()V

    goto :goto_2c

    .line 486
    :sswitch_a9
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    if-ne v0, v8, :cond_bd

    .line 487
    const-string v0, "nc"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_bd

    .line 492
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 493
    iput-object v9, p0, Lcom/google/googlenav/ui/wizard/bu;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 496
    :cond_bd
    invoke-direct {p0, v6}, Lcom/google/googlenav/ui/wizard/bu;->a(I)I

    .line 497
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->j()V

    goto/16 :goto_2c

    .line 416
    nop

    :pswitch_data_c6
    .packed-switch 0xe8
        :pswitch_2d
        :pswitch_2c
        :pswitch_2d
        :pswitch_2d
    .end packed-switch

    .line 426
    :sswitch_data_d2
    .sparse-switch
        0xd7 -> :sswitch_36
        0xd8 -> :sswitch_4a
        0xd9 -> :sswitch_6c
        0xda -> :sswitch_81
        0xdb -> :sswitch_85
        0xdc -> :sswitch_89
        0xdd -> :sswitch_9a
        0x1f4 -> :sswitch_a9
    .end sparse-switch
.end method

.method protected b()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 587
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-static {v0}, LaM/O;->b(Lad/b;)V

    .line 588
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-virtual {v0}, Lad/b;->az()I

    move-result v0

    .line 591
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-virtual {v1}, Lad/b;->aS()Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 593
    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/bu;->c:Lcom/google/googlenav/J;

    invoke-interface {v2, v1}, Lcom/google/googlenav/J;->a(Ljava/lang/String;)V

    .line 597
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lad/b;->b(Ljava/lang/String;)V

    .line 599
    :cond_24
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2b

    .line 600
    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/wizard/bu;->a(IZ)V

    .line 624
    :goto_2a
    return-void

    .line 601
    :cond_2b
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    instance-of v0, v0, Lad/s;

    if-eqz v0, :cond_36

    .line 602
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/google/googlenav/ui/wizard/bu;->a(IZ)V

    goto :goto_2a

    .line 603
    :cond_36
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4b

    .line 604
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    const/16 v1, 0x2c6

    invoke-static {v0, v1, p0}, Lcom/google/googlenav/ui/i;->a(Lad/b;ILcom/google/googlenav/ui/g;)Lcom/google/googlenav/ui/view/android/A;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 606
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    goto :goto_2a

    .line 609
    :cond_4b
    invoke-direct {p0, v3}, Lcom/google/googlenav/ui/wizard/bu;->a(I)I

    .line 613
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->ab()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 614
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->M()Lcom/google/googlenav/ui/wizard/jB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/jB;->h()Lcom/google/googlenav/ui/wizard/bM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/bM;->a()V

    .line 618
    :cond_67
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:Lcom/google/googlenav/ui/view/android/bb;

    if-eqz v0, :cond_70

    .line 619
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->dismiss()V

    .line 621
    :cond_70
    new-instance v0, Lcom/google/googlenav/ui/view/android/aq;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-direct {v0, p0, v1}, Lcom/google/googlenav/ui/view/android/aq;-><init>(Lcom/google/googlenav/ui/g;Lad/b;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 622
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    goto :goto_2a
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 628
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 630
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 631
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->K()V

    .line 633
    :cond_e
    return-void
.end method

.method public e()Lad/b;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    return-object v0
.end method

.method public f()V
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->a:Lad/b;

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->a:Lad/b;

    .line 212
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 301
    sget-object v0, Lcom/google/googlenav/ui/wizard/bu;->j:Lcom/google/googlenav/common/Config;

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->m()Lcom/google/googlenav/common/io/j;

    move-result-object v0

    const-string v1, "PROTO_SAVED_DIRECTIONS_DB"

    invoke-interface {v0, v1}, Lcom/google/googlenav/common/io/j;->b(Ljava/lang/String;)Z

    .line 302
    return-void
.end method

.method public h()V
    .registers 4

    .prologue
    .line 728
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    .line 729
    const/16 v0, 0x1f4

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/googlenav/ui/wizard/bu;->a(IILjava/lang/Object;)Z

    .line 764
    :cond_c
    :goto_c
    return-void

    .line 732
    :cond_d
    const-string v0, "b"

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->b(Ljava/lang/String;)V

    .line 734
    invoke-direct {p0}, Lcom/google/googlenav/ui/wizard/bu;->A()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/wizard/bu;->a(I)I

    .line 741
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    if-nez v0, :cond_c

    .line 743
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->g()V

    .line 745
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->z()Lcom/google/googlenav/ui/wizard/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/z;->d()Lcom/google/googlenav/ui/wizard/A;

    move-result-object v0

    .line 746
    if-eqz v0, :cond_c

    .line 747
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->a()I

    move-result v1

    sparse-switch v1, :sswitch_data_54

    .line 760
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->c:Lcom/google/googlenav/J;

    invoke-static {v1, v0}, LaM/O;->a(Lcom/google/googlenav/J;Lcom/google/googlenav/ui/wizard/A;)Z

    goto :goto_c

    .line 751
    :sswitch_39
    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/A;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/googlenav/ui/wizard/bu;->a(IZ)V

    goto :goto_c

    .line 754
    :sswitch_48
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->a()V

    .line 755
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bu;->d:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bu;->b:Lad/b;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/ju;->c(Lad/b;)V

    goto :goto_c

    .line 747
    nop

    :sswitch_data_54
    .sparse-switch
        0x1 -> :sswitch_48
        0x5 -> :sswitch_39
    .end sparse-switch
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 637
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public p()Z
    .registers 3

    .prologue
    .line 343
    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    iget v0, p0, Lcom/google/googlenav/ui/wizard/bu;->i:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public x()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x26

    const/16 v3, 0x3d

    .line 779
    invoke-static {}, Lcom/google/googlenav/K;->p()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 780
    const-string v0, "Directions"

    invoke-static {v0}, LP/a;->c(Ljava/lang/String;)V

    .line 784
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://maps.google.com/?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->e()Lad/b;

    move-result-object v1

    invoke-virtual {v1}, Lad/b;->aq()Lad/y;

    move-result-object v1

    .line 788
    if-eqz v1, :cond_32

    .line 789
    const-string v2, "saddr"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v1}, Lad/y;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 796
    :cond_32
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bu;->e()Lad/b;

    move-result-object v1

    invoke-virtual {v1}, Lad/b;->as()Lad/y;

    move-result-object v1

    .line 797
    if-eqz v1, :cond_4e

    .line 798
    const-string v2, "daddr"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {v1}, Lad/y;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 805
    :cond_4e
    const-string v1, "dirflg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 807
    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
