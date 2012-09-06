.class public Lhc;
.super Ljava/lang/Object;
.source "MainProxyLogic.java"


# instance fields
.field private final a:LHW;

.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final a:LdO;

.field private final a:Ldg;

.field private final a:LeO;

.field private final a:LeZ;

.field a:Z

.field b:Z

.field c:Z


# direct methods
.method public constructor <init>(LanD;LeO;LHW;LdO;Ldg;LeZ;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;",
            "LeO;",
            "LHW;",
            "LdO;",
            "Ldg;",
            "LeZ;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lhc;->a:LanD;

    .line 170
    iput-object p2, p0, Lhc;->a:LeO;

    .line 171
    iput-object p3, p0, Lhc;->a:LHW;

    .line 172
    iput-object p4, p0, Lhc;->a:LdO;

    .line 173
    iput-object p5, p0, Lhc;->a:Ldg;

    .line 174
    iput-object p6, p0, Lhc;->a:LeZ;

    .line 175
    return-void
.end method

.method private a(Ljava/lang/String;Lhf;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 350
    if-nez p1, :cond_26

    .line 351
    iget-object v0, p0, Lhc;->a:LHW;

    invoke-interface {v0}, LHW;->a()Ljava/lang/String;

    move-result-object v0

    .line 353
    :goto_9
    if-nez v0, :cond_20

    .line 355
    sget-object v0, Lhf;->b:Lhf;

    if-ne p2, v0, :cond_24

    .line 356
    iget-object v0, p0, Lhc;->a:LHW;

    invoke-static {v0}, LHY;->a(LHW;)Landroid/accounts/Account;

    move-result-object v0

    .line 358
    :goto_15
    if-nez v0, :cond_1d

    .line 359
    iget-object v0, p0, Lhc;->a:LHW;

    invoke-static {v0}, LHY;->b(LHW;)Landroid/accounts/Account;

    move-result-object v0

    .line 361
    :cond_1d
    if-nez v0, :cond_21

    move-object v0, v1

    .line 368
    :cond_20
    :goto_20
    return-object v0

    .line 365
    :cond_21
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_20

    :cond_24
    move-object v0, v1

    goto :goto_15

    :cond_26
    move-object v0, p1

    goto :goto_9
.end method

.method private a(Ljava/lang/String;LdL;Lhg;Lhe;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 373
    invoke-direct {p0, p1, p2}, Lhc;->a(Ljava/lang/String;LdL;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 374
    invoke-interface {p4, p1, p3}, Lhe;->a(Ljava/lang/String;Lhg;)V

    .line 378
    :goto_9
    return-void

    .line 376
    :cond_a
    invoke-interface {p4, p1, p2, p3}, Lhe;->a(Ljava/lang/String;LdL;Lhg;)V

    goto :goto_9
.end method

.method private a(Ljava/lang/String;Lhe;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lhc;->a:LeO;

    invoke-interface {v0, p1}, LeO;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 253
    invoke-interface {p2, p1}, Lhe;->b(Ljava/lang/String;)V

    .line 265
    :goto_b
    return-void

    .line 254
    :cond_c
    iget-object v0, p0, Lhc;->a:LeO;

    invoke-interface {v0, p1}, LeO;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 255
    invoke-direct {p0, p1}, Lhc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 256
    sget-object v0, LdL;->b:LdL;

    sget-object v1, Lhg;->c:Lhg;

    invoke-direct {p0, p1, v0, v1, p2}, Lhc;->a(Ljava/lang/String;LdL;Lhg;Lhe;)V

    goto :goto_b

    .line 259
    :cond_22
    sget-object v0, LdL;->b:LdL;

    sget-object v1, Lhg;->a:Lhg;

    invoke-direct {p0, p1, v0, v1, p2}, Lhc;->a(Ljava/lang/String;LdL;Lhg;Lhe;)V

    goto :goto_b

    .line 263
    :cond_2a
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lhc;->a(Ljava/lang/String;Lhe;Z)V

    goto :goto_b
.end method

.method private a(Ljava/lang/String;Lhe;Lhh;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    sget-object v0, Lhh;->a:Lhh;

    if-eq p3, v0, :cond_8

    sget-object v0, Lhh;->b:Lhh;

    if-ne p3, v0, :cond_18

    :cond_8
    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, LafQ;->a(Z)V

    .line 287
    iget-object v0, p0, Lhc;->a:LeO;

    invoke-interface {v0, p1}, LeO;->b(Ljava/lang/String;)Z

    move-result v0

    .line 288
    if-eqz v0, :cond_1a

    .line 289
    invoke-direct {p0, p1, p2}, Lhc;->d(Ljava/lang/String;Lhe;)V

    .line 293
    :goto_17
    return-void

    .line 284
    :cond_18
    const/4 v0, 0x0

    goto :goto_9

    .line 291
    :cond_1a
    invoke-interface {p2, p1}, Lhe;->a(Ljava/lang/String;)V

    goto :goto_17
.end method

.method private a(Ljava/lang/String;Lhe;Z)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lhc;->a:LeO;

    invoke-interface {v0, p1}, LeO;->c(Ljava/lang/String;)Z

    move-result v0

    .line 330
    invoke-direct {p0, p1}, Lhc;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    if-nez v0, :cond_18

    if-nez p3, :cond_18

    .line 331
    sget-object v0, LdL;->a:LdL;

    sget-object v1, Lhg;->d:Lhg;

    invoke-direct {p0, p1, v0, v1, p2}, Lhc;->a(Ljava/lang/String;LdL;Lhg;Lhe;)V

    .line 336
    :goto_17
    return-void

    .line 334
    :cond_18
    sget-object v0, LdL;->a:LdL;

    sget-object v1, Lhg;->a:Lhg;

    invoke-direct {p0, p1, v0, v1, p2}, Lhc;->a(Ljava/lang/String;LdL;Lhg;Lhe;)V

    goto :goto_17
.end method

.method private a(Ljava/lang/String;Lhf;Lhe;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 239
    sget-object v0, Lhf;->c:Lhf;

    if-ne p2, v0, :cond_1d

    .line 240
    iget-object v0, p0, Lhc;->a:LeO;

    invoke-interface {v0, p1}, LeO;->b(Ljava/lang/String;)Z

    move-result v0

    .line 241
    if-eqz v0, :cond_16

    sget-object v0, Lhf;->b:Lhf;

    .line 244
    :goto_e
    sget-object v1, Lhf;->a:Lhf;

    if-ne v0, v1, :cond_19

    .line 245
    invoke-direct {p0, p1, p3}, Lhc;->a(Ljava/lang/String;Lhe;)V

    .line 249
    :goto_15
    return-void

    .line 241
    :cond_16
    sget-object v0, Lhf;->a:Lhf;

    goto :goto_e

    .line 247
    :cond_19
    invoke-direct {p0, p1, p3}, Lhc;->b(Ljava/lang/String;Lhe;)V

    goto :goto_15

    :cond_1d
    move-object v0, p2

    goto :goto_e
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 381
    iget-object v0, p0, Lhc;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 384
    if-nez v0, :cond_d

    .line 385
    iget-boolean v0, p0, Lhc;->a:Z

    .line 387
    :goto_c
    return v0

    :cond_d
    const-string v0, "FirstTimeDrive"

    invoke-direct {p0, p1, v0}, Lhc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_c
.end method

.method private a(Ljava/lang/String;LdL;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 414
    invoke-direct {p0}, Lhc;->c()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lhc;->a:LHW;

    invoke-interface {v0}, LHW;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lhc;->a:LdO;

    invoke-virtual {v0, p1}, LdO;->a(Ljava/lang/String;)LdL;

    move-result-object v0

    invoke-virtual {p2, v0}, LdL;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 402
    .line 405
    :try_start_1
    iget-object v1, p0, Lhc;->a:Ldg;

    invoke-interface {v1, p1}, Ldg;->a(Ljava/lang/String;)Lde;

    move-result-object v1

    .line 406
    const/4 v2, 0x1

    invoke-interface {v1, p2, v2}, Lde;->a(Ljava/lang/String;Z)Z
    :try_end_b
    .catch Ldh; {:try_start_1 .. :try_end_b} :catch_d

    move-result v0

    .line 409
    :goto_c
    return v0

    .line 407
    :catch_d
    move-exception v1

    .line 408
    const-string v1, "MainProxyLogic"

    const-string v2, "Failed loading account preference"

    invoke-static {v1, v2}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private b(Ljava/lang/String;Lhe;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 268
    iget-object v0, p0, Lhc;->a:LeO;

    invoke-interface {v0, p1}, LeO;->b(Ljava/lang/String;)Z

    move-result v0

    .line 269
    if-eqz v0, :cond_1e

    .line 270
    invoke-direct {p0, p1}, Lhc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 271
    sget-object v0, LdL;->b:LdL;

    sget-object v1, Lhg;->c:Lhg;

    invoke-direct {p0, p1, v0, v1, p2}, Lhc;->a(Ljava/lang/String;LdL;Lhg;Lhe;)V

    .line 280
    :goto_15
    return-void

    .line 274
    :cond_16
    sget-object v0, LdL;->b:LdL;

    sget-object v1, Lhg;->a:Lhg;

    invoke-direct {p0, p1, v0, v1, p2}, Lhc;->a(Ljava/lang/String;LdL;Lhg;Lhe;)V

    goto :goto_15

    .line 278
    :cond_1e
    invoke-interface {p2, p1}, Lhe;->b(Ljava/lang/String;)V

    goto :goto_15
.end method

.method private b(Ljava/lang/String;Lhf;Lhe;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lhc;->a:LeO;

    invoke-interface {v0, p1}, LeO;->b(Ljava/lang/String;)Z

    move-result v0

    .line 309
    if-eqz v0, :cond_14

    sget-object v0, Lhf;->b:Lhf;

    if-ne p2, v0, :cond_14

    .line 310
    sget-object v0, LdL;->b:LdL;

    sget-object v1, Lhg;->a:Lhg;

    invoke-direct {p0, p1, v0, v1, p3}, Lhc;->a(Ljava/lang/String;LdL;Lhg;Lhe;)V

    .line 314
    :goto_13
    return-void

    .line 312
    :cond_14
    sget-object v0, LdL;->a:LdL;

    sget-object v1, Lhg;->a:Lhg;

    invoke-direct {p0, p1, v0, v1, p3}, Lhc;->a(Ljava/lang/String;LdL;Lhg;Lhe;)V

    goto :goto_13
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 392
    iget-object v0, p0, Lhc;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 394
    if-nez v0, :cond_d

    .line 395
    iget-boolean v0, p0, Lhc;->b:Z

    .line 397
    :goto_c
    return v0

    :cond_d
    const-string v0, "FirstTimeDocs"

    invoke-direct {p0, p1, v0}, Lhc;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_c
.end method

.method private c(Ljava/lang/String;Lhe;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lhc;->a:LeO;

    invoke-interface {v0, p1}, LeO;->b(Ljava/lang/String;)Z

    move-result v0

    .line 298
    if-eqz v0, :cond_c

    .line 299
    invoke-direct {p0, p1, p2}, Lhc;->d(Ljava/lang/String;Lhe;)V

    .line 303
    :goto_b
    return-void

    .line 301
    :cond_c
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lhc;->a(Ljava/lang/String;Lhe;Z)V

    goto :goto_b
.end method

.method private c()Z
    .registers 3

    .prologue
    .line 423
    iget-object v0, p0, Lhc;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 425
    if-eqz v0, :cond_15

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_15

    .line 426
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    .line 428
    :goto_14
    return v0

    :cond_15
    iget-boolean v0, p0, Lhc;->c:Z

    goto :goto_14
.end method

.method private d(Ljava/lang/String;Lhe;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lhc;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 319
    sget-object v0, LdL;->b:LdL;

    sget-object v1, Lhg;->c:Lhg;

    invoke-interface {p2, p1, v0, v1}, Lhe;->a(Ljava/lang/String;LdL;Lhg;)V

    .line 325
    :goto_d
    return-void

    .line 322
    :cond_e
    sget-object v0, LdL;->b:LdL;

    sget-object v1, Lhg;->a:Lhg;

    invoke-interface {p2, p1, v0, v1}, Lhe;->a(Ljava/lang/String;LdL;Lhg;)V

    goto :goto_d
.end method


# virtual methods
.method public a(Ljava/lang/String;Lhf;Lhi;Lhh;Lhe;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {p5}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-direct {p0, p1, p2}, Lhc;->a(Ljava/lang/String;Lhf;)Ljava/lang/String;

    move-result-object v0

    .line 215
    if-nez v0, :cond_10

    .line 216
    invoke-interface {p5}, Lhe;->a()V

    .line 235
    :goto_f
    return-void

    .line 217
    :cond_10
    invoke-virtual {p0}, Lhc;->a()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 218
    const/4 v1, 0x0

    invoke-direct {p0, v0, p5, v1}, Lhc;->a(Ljava/lang/String;Lhe;Z)V

    goto :goto_f

    .line 219
    :cond_1b
    invoke-virtual {p0}, Lhc;->b()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 220
    invoke-direct {p0, v0, p2, p5}, Lhc;->b(Ljava/lang/String;Lhf;Lhe;)V

    goto :goto_f

    .line 223
    :cond_25
    sget-object v1, Lhd;->a:[I

    invoke-virtual {p3}, Lhi;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 231
    invoke-direct {p0, v0, p2, p5}, Lhc;->a(Ljava/lang/String;Lhf;Lhe;)V

    goto :goto_f

    .line 225
    :pswitch_34
    invoke-direct {p0, v0, p5, p4}, Lhc;->a(Ljava/lang/String;Lhe;Lhh;)V

    goto :goto_f

    .line 228
    :pswitch_38
    invoke-direct {p0, v0, p5}, Lhc;->c(Ljava/lang/String;Lhe;)V

    goto :goto_f

    .line 223
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_34
        :pswitch_38
    .end packed-switch
.end method

.method a()Z
    .registers 3

    .prologue
    .line 340
    iget-object v0, p0, Lhc;->a:LeZ;

    sget-object v1, LeV;->c:LeV;

    invoke-interface {v0, v1}, LeZ;->a(LeV;)Z

    move-result v0

    return v0
.end method

.method b()Z
    .registers 3

    .prologue
    .line 345
    invoke-virtual {p0}, Lhc;->a()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lhc;->a:LeZ;

    sget-object v1, LeV;->d:LeV;

    invoke-interface {v0, v1}, LeZ;->a(LeV;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
