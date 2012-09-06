.class public final Lcom/google/android/apps/pos/network/q;
.super Lcom/google/android/apps/pos/network/t;
.source "SourceFile"


# instance fields
.field private params:Lcom/google/android/apps/pos/network/r;
    .annotation runtime Lcom/google/api/client/util/r;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/t;-><init>()V

    .line 439
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v0, "pos.plusones.insert"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/q;->method:Ljava/lang/String;

    .line 442
    new-instance v0, Lcom/google/android/apps/pos/network/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/pos/network/r;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/q;->params:Lcom/google/android/apps/pos/network/r;

    .line 443
    iget-object v0, p0, Lcom/google/android/apps/pos/network/q;->params:Lcom/google/android/apps/pos/network/r;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/r;->id:Ljava/lang/String;

    .line 444
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/apps/pos/network/q;
    .registers 2
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/google/android/apps/pos/network/q;->requestId:Ljava/lang/String;

    .line 449
    return-object p0
.end method

.method final bridge synthetic b(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/apps/pos/network/q;->params:Lcom/google/android/apps/pos/network/r;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/r;->source:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic c(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 2
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/google/android/apps/pos/network/q;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic d(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/apps/pos/network/q;->params:Lcom/google/android/apps/pos/network/r;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/r;->container:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/android/apps/pos/network/q;
    .registers 3
    .parameter

    .prologue
    .line 477
    iget-object v0, p0, Lcom/google/android/apps/pos/network/q;->params:Lcom/google/android/apps/pos/network/r;

    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/r;->a(Lcom/google/android/apps/pos/network/r;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    return-object p0
.end method
