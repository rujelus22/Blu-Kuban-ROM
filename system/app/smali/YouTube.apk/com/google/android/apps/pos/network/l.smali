.class public final Lcom/google/android/apps/pos/network/l;
.super Lcom/google/android/apps/pos/network/t;
.source "SourceFile"


# instance fields
.field private params:Lcom/google/android/apps/pos/network/m;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "params"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/t;-><init>()V

    .line 339
    invoke-static {p1}, Lcom/google/common/base/ag;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v0, "pos.plusones.get"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/t;->method:Ljava/lang/String;

    .line 342
    new-instance v0, Lcom/google/android/apps/pos/network/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/pos/network/m;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/l;->params:Lcom/google/android/apps/pos/network/m;

    .line 343
    iget-object v0, p0, Lcom/google/android/apps/pos/network/l;->params:Lcom/google/android/apps/pos/network/m;

    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/m;->a(Lcom/google/android/apps/pos/network/m;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/apps/pos/network/l;
    .registers 2
    .parameter

    .prologue
    .line 348
    iput-object p1, p0, Lcom/google/android/apps/pos/network/l;->requestId:Ljava/lang/String;

    .line 349
    return-object p0
.end method

.method final bridge synthetic b(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/apps/pos/network/l;->params:Lcom/google/android/apps/pos/network/m;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/m;->source:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic c(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 2
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/android/apps/pos/network/l;->key:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic d(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/apps/pos/network/l;->params:Lcom/google/android/apps/pos/network/m;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/m;->container:Ljava/lang/String;

    return-object p0
.end method
