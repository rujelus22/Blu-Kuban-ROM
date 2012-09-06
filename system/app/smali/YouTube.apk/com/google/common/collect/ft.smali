.class final Lcom/google/common/collect/ft;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 920
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 943
    invoke-static {}, Lcom/google/common/collect/ee;->a()Lcom/google/common/collect/mt;

    move-result-object v0

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 923
    const/4 v0, 0x1

    return v0
.end method

.method public final peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 928
    const/4 v0, 0x0

    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 933
    const/4 v0, 0x0

    return-object v0
.end method

.method public final size()I
    .registers 2

    .prologue
    .line 938
    const/4 v0, 0x0

    return v0
.end method
