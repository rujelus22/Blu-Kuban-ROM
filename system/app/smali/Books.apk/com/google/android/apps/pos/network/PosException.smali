.class public Lcom/google/android/apps/pos/network/PosException;
.super Ljava/io/IOException;
.source "PosException.java"


# instance fields
.field protected posError:Lcom/google/android/apps/pos/model/PlusoneError;
    .annotation runtime Lcom/google/api/client/util/Key;
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
    .parameter "posError"

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
    .parameter "name"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
