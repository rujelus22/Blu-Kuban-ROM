.class final Lcom/anddoes/launcher/lw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:J

.field f:Z

.field g:Z

.field h:F

.field i:F

.field final synthetic j:Lcom/anddoes/launcher/Workspace;


# direct methods
.method public constructor <init>(Lcom/anddoes/launcher/Workspace;)V
    .registers 6
    .parameter

    .prologue
    const/high16 v1, 0x3f00

    const v3, 0x3eb33333

    const/4 v2, 0x0

    .line 1420
    iput-object p1, p0, Lcom/anddoes/launcher/lw;->j:Lcom/anddoes/launcher/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1410
    iput v2, p0, Lcom/anddoes/launcher/lw;->a:F

    .line 1411
    invoke-static {p1}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/Workspace;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    :goto_14
    iput v0, p0, Lcom/anddoes/launcher/lw;->b:F

    .line 1412
    iput v2, p0, Lcom/anddoes/launcher/lw;->c:F

    .line 1413
    invoke-static {p1}, Lcom/anddoes/launcher/Workspace;->a(Lcom/anddoes/launcher/Workspace;)Z

    move-result v0

    if-eqz v0, :cond_27

    :goto_1e
    iput v1, p0, Lcom/anddoes/launcher/lw;->d:F

    .line 1417
    iput v3, p0, Lcom/anddoes/launcher/lw;->h:F

    .line 1418
    iput v3, p0, Lcom/anddoes/launcher/lw;->i:F

    .line 1421
    return-void

    :cond_25
    move v0, v2

    .line 1411
    goto :goto_14

    :cond_27
    move v1, v2

    .line 1413
    goto :goto_1e
.end method


# virtual methods
.method public final a(F)V
    .registers 4
    .parameter

    .prologue
    .line 1517
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/anddoes/launcher/lw;->a:F

    .line 1518
    return-void
.end method
