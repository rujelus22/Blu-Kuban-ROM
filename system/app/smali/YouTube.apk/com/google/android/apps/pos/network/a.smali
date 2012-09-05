.class public Lcom/google/android/apps/pos/network/a;
.super Lcom/google/api/client/json/b;
.source "SourceFile"


# instance fields
.field private error:Lcom/google/android/apps/pos/model/PlusoneError;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field

.field private responseId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/s;
        a = "id"
    .end annotation
.end field

.field private result:Lcom/google/android/apps/pos/network/b;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/api/client/json/b;-><init>()V

    .line 74
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/apps/pos/network/a;->responseId:Ljava/lang/String;

    return-object v0
.end method

.method public final a_()Z
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/pos/network/a;->error:Lcom/google/android/apps/pos/model/PlusoneError;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final c()Lcom/google/android/apps/pos/model/PlusoneError;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/apps/pos/network/a;->error:Lcom/google/android/apps/pos/model/PlusoneError;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/apps/pos/network/a;->result:Lcom/google/android/apps/pos/network/b;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final e()Lcom/google/android/apps/pos/network/b;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/apps/pos/network/a;->result:Lcom/google/android/apps/pos/network/b;

    return-object v0
.end method
