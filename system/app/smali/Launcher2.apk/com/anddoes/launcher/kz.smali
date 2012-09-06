.class final Lcom/anddoes/launcher/kz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/anddoes/launcher/kz;

.field public b:I

.field public c:F

.field public d:F

.field public final e:[F

.field public final f:[F

.field public final g:[J

.field public h:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0xa

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/anddoes/launcher/kz;->e:[F

    .line 71
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/anddoes/launcher/kz;->f:[F

    .line 72
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/anddoes/launcher/kz;->g:[J

    .line 63
    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/anddoes/launcher/kz;-><init>()V

    return-void
.end method
