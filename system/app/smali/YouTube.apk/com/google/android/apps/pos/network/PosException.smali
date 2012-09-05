.class public Lcom/google/android/apps/pos/network/PosException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field protected posError:Lcom/google/android/apps/pos/model/PlusoneError;
    .annotation runtime Lcom/google/api/client/util/s;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/pos/model/PlusoneError;)V
    .registers 2
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/apps/pos/network/PosException;->posError:Lcom/google/android/apps/pos/model/PlusoneError;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getPosError()Lcom/google/android/apps/pos/model/PlusoneError;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosException;->posError:Lcom/google/android/apps/pos/model/PlusoneError;

    return-object v0
.end method

.method public hasPosError()Z
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/pos/network/PosException;->posError:Lcom/google/android/apps/pos/model/PlusoneError;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
