.class final Lcom/google/common/collect/ci;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/google/common/collect/fy;

.field static final b:Lcom/google/common/collect/fy;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 156
    const-class v0, Lcom/google/common/collect/ImmutableMultiset;

    const-string v1, "map"

    invoke-static {v0, v1}, Lcom/google/common/collect/fx;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/fy;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ci;->a:Lcom/google/common/collect/fy;

    .line 158
    const-class v0, Lcom/google/common/collect/ImmutableMultiset;

    const-string v1, "size"

    invoke-static {v0, v1}, Lcom/google/common/collect/fx;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/fy;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ci;->b:Lcom/google/common/collect/fy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
