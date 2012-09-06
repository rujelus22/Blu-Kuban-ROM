.class Lcom/google/common/collect/be;
.super Lcom/google/common/collect/bG;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/collect/be;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/common/collect/be;

    invoke-direct {v0}, Lcom/google/common/collect/be;-><init>()V

    sput-object v0, Lcom/google/common/collect/be;->a:Lcom/google/common/collect/be;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 32
    invoke-static {}, Lcom/google/common/collect/bx;->h()Lcom/google/common/collect/bx;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/collect/bG;-><init>(Lcom/google/common/collect/bx;ILjava/util/Comparator;)V

    .line 33
    return-void
.end method
