.class final Lcom/google/common/collect/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/collect/fy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 64
    const-class v0, Lcom/google/common/collect/ConcurrentHashMultiset;

    const-string v1, "countMap"

    invoke-static {v0, v1}, Lcom/google/common/collect/fx;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/fy;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ax;->a:Lcom/google/common/collect/fy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
