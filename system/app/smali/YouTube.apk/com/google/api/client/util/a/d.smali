.class final Lcom/google/api/client/util/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lcom/google/api/client/util/a/e;

    invoke-direct {v0}, Lcom/google/api/client/util/a/e;-><init>()V

    sput-object v0, Lcom/google/api/client/util/a/d;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static a()[C
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/api/client/util/a/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method
