.class public Lcom/google/android/maps/driveabout/app/eH;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/app/cU;

.field private final b:Lcom/google/android/maps/driveabout/app/eR;

.field private c:Lcom/google/android/maps/driveabout/app/eP;

.field private d:Lcom/google/android/maps/driveabout/app/eO;

.field private e:Z

.field private f:Ljava/io/File;

.field private g:Lcom/google/android/maps/driveabout/app/eQ;

.field private final h:Landroid/content/DialogInterface$OnClickListener;

.field private final i:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>(Lcom/google/android/maps/driveabout/app/cU;)V
    .registers 6

    invoke-static {}, Lcom/google/android/maps/driveabout/app/eH;->b()Lcom/google/android/maps/driveabout/app/eP;

    move-result-object v0

    invoke-static {}, Lcom/google/android/maps/driveabout/app/eH;->c()Lcom/google/android/maps/driveabout/app/eR;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/eH;-><init>(Lcom/google/android/maps/driveabout/app/cU;Lcom/google/android/maps/driveabout/app/eP;Lcom/google/android/maps/driveabout/app/eR;Lcom/google/android/maps/driveabout/app/eO;)V

    const-wide/16 v0, 0x3a98

    const-wide/16 v2, 0x64

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/eH;->a(JJ)Lcom/google/android/maps/driveabout/app/eO;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->d:Lcom/google/android/maps/driveabout/app/eO;

    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/driveabout/app/cU;Lcom/google/android/maps/driveabout/app/eP;Lcom/google/android/maps/driveabout/app/eR;Lcom/google/android/maps/driveabout/app/eO;)V
    .registers 7

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/app/eI;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/eI;-><init>(Lcom/google/android/maps/driveabout/app/eH;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->h:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/google/android/maps/driveabout/app/eJ;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/app/eJ;-><init>(Lcom/google/android/maps/driveabout/app/eH;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->i:Landroid/content/DialogInterface$OnCancelListener;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eH;->a:Lcom/google/android/maps/driveabout/app/cU;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/eH;->c:Lcom/google/android/maps/driveabout/app/eP;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/eH;->b:Lcom/google/android/maps/driveabout/app/eR;

    iput-object p4, p0, Lcom/google/android/maps/driveabout/app/eH;->d:Lcom/google/android/maps/driveabout/app/eO;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->c:Lcom/google/android/maps/driveabout/app/eP;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/eP;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->c:Lcom/google/android/maps/driveabout/app/eP;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/eP;->c(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->c:Lcom/google/android/maps/driveabout/app/eP;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/eP;->a(I)V

    return-void
.end method

.method private a(JJ)Lcom/google/android/maps/driveabout/app/eO;
    .registers 11

    new-instance v0, Lcom/google/android/maps/driveabout/app/eM;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/app/eM;-><init>(Lcom/google/android/maps/driveabout/app/eH;JJ)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/eH;)Lcom/google/android/maps/driveabout/app/eO;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->d:Lcom/google/android/maps/driveabout/app/eO;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/eH;Lcom/google/android/maps/driveabout/app/eQ;)Lcom/google/android/maps/driveabout/app/eQ;
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eH;->g:Lcom/google/android/maps/driveabout/app/eQ;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/eH;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/eH;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->c:Lcom/google/android/maps/driveabout/app/eP;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->c:Lcom/google/android/maps/driveabout/app/eP;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eP;->f()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->c:Lcom/google/android/maps/driveabout/app/eP;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eP;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->c:Lcom/google/android/maps/driveabout/app/eP;

    :cond_11
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_18
    return-void
.end method

.method private static b()Lcom/google/android/maps/driveabout/app/eP;
    .registers 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/eK;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/eK;-><init>()V

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/app/eH;)Lcom/google/android/maps/driveabout/app/eQ;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->g:Lcom/google/android/maps/driveabout/app/eQ;

    return-object v0
.end method

.method private static c()Lcom/google/android/maps/driveabout/app/eR;
    .registers 1

    new-instance v0, Lcom/google/android/maps/driveabout/app/eL;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/eL;-><init>()V

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->b:Lcom/google/android/maps/driveabout/app/eR;

    const/16 v1, 0x1c

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/eR;->a(I)V

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/app/eH;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->a:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/cU;->b(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->g:Lcom/google/android/maps/driveabout/app/eQ;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->g:Lcom/google/android/maps/driveabout/app/eQ;

    invoke-interface {v0, v2}, Lcom/google/android/maps/driveabout/app/eQ;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->g:Lcom/google/android/maps/driveabout/app/eQ;

    :cond_1c
    return-void
.end method

.method a(J)V
    .registers 6

    const/high16 v0, 0x3f80

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/eH;->c:Lcom/google/android/maps/driveabout/app/eP;

    invoke-interface {v1}, Lcom/google/android/maps/driveabout/app/eP;->a()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x469c4000

    div-float/2addr v1, v2

    cmpl-float v2, v1, v0

    if-lez v2, :cond_21

    :goto_11
    long-to-int v1, p1

    rsub-int v1, v1, 0x3a98

    mul-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const/high16 v2, 0x447a

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/eH;->a:Lcom/google/android/maps/driveabout/app/cU;

    invoke-interface {v2, v1, v0}, Lcom/google/android/maps/driveabout/app/cU;->a(IF)V

    return-void

    :cond_21
    move v0, v1

    goto :goto_11
.end method

.method public a(Ljava/io/File;Lcom/google/android/maps/driveabout/app/eQ;)V
    .registers 9

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/app/eH;->e:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A recording was already started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/app/eH;->e:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->c:Lcom/google/android/maps/driveabout/app/eP;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/eP;->a(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/eH;->f:Ljava/io/File;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/eH;->g:Lcom/google/android/maps/driveabout/app/eQ;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->a:Lcom/google/android/maps/driveabout/app/cU;

    const/16 v1, 0x97

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/eH;->h:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/app/eH;->i:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/app/cU;->a(ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    :try_start_28
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->c:Lcom/google/android/maps/driveabout/app/eP;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eP;->b()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_3f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->b:Lcom/google/android/maps/driveabout/app/eR;

    const/16 v1, 0x18

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/eR;->a(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->c:Lcom/google/android/maps/driveabout/app/eP;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eP;->e()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->d:Lcom/google/android/maps/driveabout/app/eO;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eO;->a()V

    :cond_3e
    :goto_3e
    return-void

    :catch_3f
    move-exception v0

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

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->c:Lcom/google/android/maps/driveabout/app/eP;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eP;->d()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->c:Lcom/google/android/maps/driveabout/app/eP;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/eP;->c()V

    iput-object v5, p0, Lcom/google/android/maps/driveabout/app/eH;->c:Lcom/google/android/maps/driveabout/app/eP;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->a:Lcom/google/android/maps/driveabout/app/cU;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cU;->b(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->g:Lcom/google/android/maps/driveabout/app/eQ;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/eH;->g:Lcom/google/android/maps/driveabout/app/eQ;

    invoke-interface {v0, v4}, Lcom/google/android/maps/driveabout/app/eQ;->a(Z)V

    iput-object v5, p0, Lcom/google/android/maps/driveabout/app/eH;->g:Lcom/google/android/maps/driveabout/app/eQ;

    goto :goto_3e
.end method
