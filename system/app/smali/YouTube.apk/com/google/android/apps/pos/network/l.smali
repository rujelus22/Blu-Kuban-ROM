.class public final Lcom/google/android/apps/pos/network/l;
.super Lcom/google/android/apps/pos/network/t;
.source "SourceFile"


# instance fields
.field private params:Lcom/google/android/apps/pos/network/m;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "params"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/t;-><init>()V

    .line 323
    invoke-static {p1}, Lcom/google/common/base/t;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v0, "pos.plusones.get"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/t;->key:Ljava/lang/String;

    .line 326
    const-string v0, "pos.plusones.get"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/t;->method:Ljava/lang/String;

    .line 327
    new-instance v0, Lcom/google/android/apps/pos/network/m;

    invoke-direct {v0}, Lcom/google/android/apps/pos/network/m;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/l;->params:Lcom/google/android/apps/pos/network/m;

    .line 328
    iget-object v0, p0, Lcom/google/android/apps/pos/network/l;->params:Lcom/google/android/apps/pos/network/m;

    invoke-static {v0, p1}, Lcom/google/android/apps/pos/network/m;->a(Lcom/google/android/apps/pos/network/m;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    return-void
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/apps/pos/network/l;->params:Lcom/google/android/apps/pos/network/m;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/m;->source:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic b(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/apps/pos/network/l;->params:Lcom/google/android/apps/pos/network/m;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/m;->container:Ljava/lang/String;

    return-object p0
.end method
