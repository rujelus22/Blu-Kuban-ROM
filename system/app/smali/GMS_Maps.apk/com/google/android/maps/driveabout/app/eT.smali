.class public Lcom/google/android/maps/driveabout/app/et;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/cI;

.field private final b:Lcom/google/android/maps/driveabout/app/eD;

.field private c:Lcom/google/android/maps/driveabout/app/eB;

.field private d:Lcom/google/android/maps/driveabout/app/eA;

.field private e:Z

.field private f:Ljava/io/File;

.field private g:Lcom/google/android/maps/driveabout/app/eC;

.field private final h:Landroid/content/DialogInterface$OnClickListener;

.field private final i:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/cI;)V
    .registers 6
    .parameter

    .prologue
    .line 109
    invoke-static {}, Lcom/google/android/maps/driveabout/app/et;->b()Lcom/google/android/maps/driveabout/app/eB;

    move-result-object v0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/et;->c()Lcom/google/android/maps/driveabout/app/eD;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/et;-><init>(Lcom/google/android/maps/driveabout/app/cI;Lcom/google/android/maps/driveabout/app/eB;Lcom/google/android/maps/driveabout/app/eD;Lcom/google/android/maps/driveabout/app/eA;)V

    .line 110
    const-wide/16 v0, 0x3a98

    const-wide/16 v2, 0x64

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/et;->a(JJ)Lcom/google/android/maps/driveabout/app/eA;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->d:Lcom/google/android/maps/driveabout/app/eA;

    .line 112
    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/driveabout/app/cI;Lcom/google/android/maps/driveabout/app/eB;Lcom/google/android/maps/driveabout/app/eD;Lcom/google/android/maps/driveabout/app/eA;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/google/android/maps/driveabout/app/eu;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/eu;-><init>(Lcom/google/android/maps/driveabout/app/et;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    new-instance v0, Lcom/google/android/maps/driveabout/app/ev;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/ev;-><init>(Lcom/google/android/maps/driveabout/app/et;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->i:Landroid/content/DialogInterface$OnCancelListener;

    .line 120
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/et;->a:Lcom/google/android/maps/driveabout/app/cI;

    .line 121
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/et;->c:Lcom/google/android/maps/driveabout/app/eB;

    .line 122
    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/et;->b:Lcom/google/android/maps/driveabout/app/eD;

    .line 123
    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/et;->d:Lcom/google/android/maps/driveabout/app/eA;

    .line 124
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->c:Lcom/google/android/maps/driveabout/app/eB;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/eB;->b(I)V

    .line 125
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->c:Lcom/google/android/maps/driveabout/app/eB;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/eB;->c(I)V

    .line 126
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->c:Lcom/google/android/maps/driveabout/app/eB;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/eB;->a(I)V

    .line 127
    return-void
.end method

.method private a(JJ)Lcom/google/android/maps/driveabout/app/eA;
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 238
    new-instance v0, Lcom/google/android/maps/driveabout/app/ey;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/ey;-><init>(Lcom/google/android/maps/driveabout/app/et;JJ)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/et;)Lcom/google/android/maps/driveabout/app/eA;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->d:Lcom/google/android/maps/driveabout/app/eA;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/et;Lcom/google/android/maps/driveabout/app/eC;)Lcom/google/android/maps/driveabout/app/eC;
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/et;->g:Lcom/google/android/maps/driveabout/app/eC;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/et;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/et;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->c:Lcom/google/android/maps/driveabout/app/eB;

    if-eqz v0, :cond_11

    .line 376
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->c:Lcom/google/android/maps/driveabout/app/eB;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eB;->f()V

    .line 377
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->c:Lcom/google/android/maps/driveabout/app/eB;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eB;->c()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->c:Lcom/google/android/maps/driveabout/app/eB;

    .line 380
    :cond_11
    if-eqz p1, :cond_18

    .line 381
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 383
    :cond_18
    return-void
.end method

.method private static b()Lcom/google/android/maps/driveabout/app/eB;
    .registers 1

    .prologue
    .line 150
    new-instance v0, Lcom/google/android/maps/driveabout/app/ew;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/ew;-><init>()V

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/et;)Lcom/google/android/maps/driveabout/app/eC;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->g:Lcom/google/android/maps/driveabout/app/eC;

    return-object v0
.end method

.method private static c()Lcom/google/android/maps/driveabout/app/eD;
    .registers 1

    .prologue
    .line 209
    new-instance v0, Lcom/google/android/maps/driveabout/app/ex;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/ex;-><init>()V

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->b:Lcom/google/android/maps/driveabout/app/eD;

    const/16 v1, 0x1c

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/eD;->a(I)V

    .line 359
    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/et;->a(Z)V

    .line 360
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->a:Lcom/google/android/maps/driveabout/app/cI;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cI;->a(Z)V

    .line 361
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->g:Lcom/google/android/maps/driveabout/app/eC;

    if-eqz v0, :cond_1c

    .line 362
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->g:Lcom/google/android/maps/driveabout/app/eC;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/eC;->a(Z)V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->g:Lcom/google/android/maps/driveabout/app/eC;

    .line 365
    :cond_1c
    return-void
.end method

.method a(J)V
    .registers 6
    .parameter

    .prologue
    const/high16 v0, 0x3f80

    .line 342
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/et;->c:Lcom/google/android/maps/driveabout/app/eB;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/app/eB;->a()I

    move-result v1

    .line 343
    int-to-float v1, v1

    const v2, 0x469c4000

    div-float/2addr v1, v2

    .line 344
    cmpl-float v2, v1, v0

    if-lez v2, :cond_21

    .line 347
    :goto_11
    long-to-int v1, p1

    rsub-int v1, v1, 0x3a98

    mul-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 349
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/et;->a:Lcom/google/android/maps/driveabout/app/cI;

    invoke-interface {v2, v1, v0}, Lcom/google/android/maps/driveabout/app/cI;->setRecordingSample(IF)V

    .line 350
    return-void

    :cond_21
    move v0, v1

    goto :goto_11
.end method

.method public a(Ljava/io/File;Lcom/google/android/maps/driveabout/app/eC;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 302
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/et;->e:Z

    if-eqz v0, :cond_e

    .line 303
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A recording was already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_e
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/app/et;->e:Z

    .line 306
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->c:Lcom/google/android/maps/driveabout/app/eB;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/eB;->a(Ljava/lang/String;)V

    .line 307
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/et;->f:Ljava/io/File;

    .line 308
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/et;->g:Lcom/google/android/maps/driveabout/app/eC;

    .line 309
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->a:Lcom/google/android/maps/driveabout/app/cI;

    const/16 v1, 0x97

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/et;->h:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/et;->i:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/cI;->a(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 314
    :try_start_28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->c:Lcom/google/android/maps/driveabout/app/eB;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eB;->b()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_3f

    .line 328
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->b:Lcom/google/android/maps/driveabout/app/eD;

    const/16 v1, 0x18

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/eD;->a(I)V

    .line 329
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->c:Lcom/google/android/maps/driveabout/app/eB;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eB;->e()V

    .line 330
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->d:Lcom/google/android/maps/driveabout/app/eA;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eA;->a()V

    .line 331
    :cond_3e
    :goto_3e
    return-void

    .line 315
    :catch_3f
    move-exception v0

    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not record to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->c:Lcom/google/android/maps/driveabout/app/eB;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eB;->d()V

    .line 318
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->c:Lcom/google/android/maps/driveabout/app/eB;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eB;->c()V

    .line 319
    iput-object v5, p0, Lcom/google/android/maps/driveabout/app/et;->c:Lcom/google/android/maps/driveabout/app/eB;

    .line 320
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->a:Lcom/google/android/maps/driveabout/app/cI;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cI;->a(Z)V

    .line 321
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->g:Lcom/google/android/maps/driveabout/app/eC;

    if-eqz v0, :cond_3e

    .line 322
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/et;->g:Lcom/google/android/maps/driveabout/app/eC;

    invoke-interface {v0, v4}, Lcom/google/android/maps/driveabout/app/eC;->a(Z)V

    .line 323
    iput-object v5, p0, Lcom/google/android/maps/driveabout/app/et;->g:Lcom/google/android/maps/driveabout/app/eC;

    goto :goto_3e
.end method
