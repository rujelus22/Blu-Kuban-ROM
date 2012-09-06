.class public Lcom/google/android/maps/driveabout/app/cU;
.super Lt/t;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/maps/driveabout/app/cU;


# instance fields
.field private c:Lac/h;

.field private d:Lo/r;

.field private e:Lcom/google/android/maps/driveabout/app/ds;

.field private f:Lcom/google/android/maps/driveabout/app/ds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/maps/driveabout/app/cU;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/app/cU;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/app/cU;->a:Lcom/google/android/maps/driveabout/app/cU;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lt/t;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/maps/driveabout/app/cU;
    .registers 2
    .parameter

    .prologue
    .line 46
    sget-object v0, Lcom/google/android/maps/driveabout/app/cU;->a:Lcom/google/android/maps/driveabout/app/cU;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/app/cU;->c(Landroid/content/Context;)V

    .line 47
    sget-object v0, Lcom/google/android/maps/driveabout/app/cU;->a:Lcom/google/android/maps/driveabout/app/cU;

    return-object v0
.end method

.method private a(Lr/W;Lcom/google/android/maps/driveabout/app/dq;Lo/r;)Lcom/google/android/maps/driveabout/app/ds;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 128
    new-instance v0, Lcom/google/android/maps/driveabout/app/ds;

    invoke-direct {v0, p1, p2}, Lcom/google/android/maps/driveabout/app/ds;-><init>(Lr/W;Lcom/google/android/maps/driveabout/app/dq;)V

    .line 130
    invoke-virtual {p3, v0}, Lo/r;->a(Lo/o;)V

    .line 133
    return-object v0
.end method

.method private static a(Lcom/google/android/maps/driveabout/app/ds;Lcom/google/android/maps/driveabout/app/dq;Landroid/content/Context;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    new-instance v0, Lcom/google/android/maps/driveabout/app/cV;

    const-string v1, "OfflineReroutingHelper"

    invoke-direct {v0, v1, p2, p1, p0}, Lcom/google/android/maps/driveabout/app/cV;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/maps/driveabout/app/dq;Lcom/google/android/maps/driveabout/app/ds;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cV;->start()V

    .line 114
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cU;->e:Lcom/google/android/maps/driveabout/app/ds;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ds;->d()V

    .line 81
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cU;->f:Lcom/google/android/maps/driveabout/app/ds;

    if-eqz v0, :cond_e

    .line 82
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cU;->f:Lcom/google/android/maps/driveabout/app/ds;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ds;->d()V

    .line 84
    :cond_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cU;->d:Lo/r;

    invoke-virtual {v0}, Lo/r;->b()V

    .line 85
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cU;->c:Lac/h;

    invoke-virtual {v0}, Lac/h;->u()V

    .line 86
    return-void
.end method

.method protected b(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 58
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cU;->c:Lac/h;

    .line 61
    invoke-static {p1}, Lo/r;->a(Landroid/content/Context;)Lo/r;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cU;->d:Lo/r;

    .line 63
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->b:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    check-cast v0, Lr/aP;

    .line 65
    new-instance v1, Lcom/google/android/maps/driveabout/app/dq;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/app/dq;-><init>()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cU;->d:Lo/r;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cU;->a(Lr/W;Lcom/google/android/maps/driveabout/app/dq;Lo/r;)Lcom/google/android/maps/driveabout/app/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cU;->e:Lcom/google/android/maps/driveabout/app/ds;

    .line 67
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cU;->e:Lcom/google/android/maps/driveabout/app/ds;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/ds;->b()V

    .line 69
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->i:Lcom/google/android/maps/driveabout/vector/dg;

    invoke-static {v0}, Lr/aJ;->c(Lcom/google/android/maps/driveabout/vector/dg;)Lr/aH;

    move-result-object v0

    check-cast v0, Lr/al;

    .line 71
    new-instance v1, Lcom/google/android/maps/driveabout/app/dq;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/app/dq;-><init>()V

    .line 72
    iget-object v2, p0, Lcom/google/android/maps/driveabout/app/cU;->d:Lo/r;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/maps/driveabout/app/cU;->a(Lr/W;Lcom/google/android/maps/driveabout/app/dq;Lo/r;)Lcom/google/android/maps/driveabout/app/ds;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/cU;->f:Lcom/google/android/maps/driveabout/app/ds;

    .line 74
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/cU;->f:Lcom/google/android/maps/driveabout/app/ds;

    invoke-static {v0, v1, p1}, Lcom/google/android/maps/driveabout/app/cU;->a(Lcom/google/android/maps/driveabout/app/ds;Lcom/google/android/maps/driveabout/app/dq;Landroid/content/Context;)V

    .line 76
    return-void
.end method
