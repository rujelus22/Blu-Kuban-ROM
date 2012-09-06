.class Lax/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Ljava/util/Map;


# direct methods
.method constructor <init>(I)V
    .registers 4
    .parameter

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lax/f;->c:J

    .line 414
    iput p1, p0, Lax/f;->a:I

    .line 415
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lax/f;->b:J

    .line 416
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lax/f;->d:Ljava/util/Map;

    .line 417
    return-void
.end method
