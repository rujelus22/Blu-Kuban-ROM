.class final Lcom/google/android/apps/pos/network/o;
.super Lcom/google/android/apps/pos/network/t;
.source "SourceFile"


# instance fields
.field private params:Lcom/google/android/apps/pos/network/p;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "params"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/google/android/apps/pos/network/t;-><init>()V

    .line 254
    const-string v0, "pos.plusones.getSignupState"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/o;->key:Ljava/lang/String;

    .line 255
    const-string v0, "pos.plusones.getSignupState"

    iput-object v0, p0, Lcom/google/android/apps/pos/network/o;->method:Ljava/lang/String;

    .line 256
    new-instance v0, Lcom/google/android/apps/pos/network/p;

    invoke-direct {v0}, Lcom/google/android/apps/pos/network/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/pos/network/o;->params:Lcom/google/android/apps/pos/network/p;

    .line 257
    return-void
.end method


# virtual methods
.method final bridge synthetic a(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/apps/pos/network/o;->params:Lcom/google/android/apps/pos/network/p;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/p;->source:Ljava/lang/String;

    return-object p0
.end method

.method final bridge synthetic b(Ljava/lang/String;)Lcom/google/android/apps/pos/network/t;
    .registers 3
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/apps/pos/network/o;->params:Lcom/google/android/apps/pos/network/p;

    iput-object p1, v0, Lcom/google/android/apps/pos/network/p;->container:Ljava/lang/String;

    return-object p0
.end method
