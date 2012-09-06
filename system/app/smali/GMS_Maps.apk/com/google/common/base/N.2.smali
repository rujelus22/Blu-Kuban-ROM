.class final Lcom/google/common/base/N;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Lcom/google/common/base/O;

    invoke-direct {v0}, Lcom/google/common/base/O;-><init>()V

    sput-object v0, Lcom/google/common/base/N;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static a(Lcom/google/common/base/b;)Lcom/google/common/base/b;
    .registers 2
    .parameter

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/google/common/base/b;->b()Lcom/google/common/base/b;

    move-result-object v0

    return-object v0
.end method
