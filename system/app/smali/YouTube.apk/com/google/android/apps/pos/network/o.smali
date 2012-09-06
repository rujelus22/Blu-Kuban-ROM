.class final Lcom/google/android/apps/pos/network/o;
.super Lcom/google/android/apps/pos/network/t;
.source "SourceFile"


# instance fields
.field private params:Lcom/google/android/apps/pos/network/p;
    .annotation runtime Lcom/google/api/client/util/r;
        a = "params"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/t;-><init>()V

    .line 268
    const-string v0, "pos.plusones.getSignupState"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/o;->method:Ljava/lang/String;

    .line 269
    new-instance v0, Lcom/google/android/apps/pos/network/p;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/pos/network/p;-><init>(B)V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/o;->params:Lcom/google/android/apps/pos/network/p;

    .line 270
    return-void
.end method


# virtual methods
.method final bridge synthetic b(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/apps/pos/network/o;->params:Lcom/google/android/apps/pos/network/p;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/p;->source:Ljava/lang/String;

    return-object p0
.end method

.method public final bridge synthetic c(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 2
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/google/android/apps/pos/network/o;->key:Ljava/lang/String;

    return-object p0
.end method

.method final bridge synthetic d(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/apps/pos/network/o;->params:Lcom/google/android/apps/pos/network/p;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/p;->container:Ljava/lang/String;

    return-object p0
.end method
