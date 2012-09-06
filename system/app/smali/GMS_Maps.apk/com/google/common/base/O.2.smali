.class final Lcom/google/common/base/O;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()[C
    .registers 2

    .prologue
    .line 59
    const/16 v0, 0x400

    new-array v0, v0, [C

    return-object v0
.end method

.method protected synthetic initialValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/google/common/base/O;->a()[C

    move-result-object v0

    return-object v0
.end method
