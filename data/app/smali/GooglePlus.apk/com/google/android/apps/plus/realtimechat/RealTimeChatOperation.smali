.class public abstract Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
.super Ljava/lang/Object;
.source "RealTimeChatOperation.java"


# instance fields
.field protected final mAccount:Lcom/google/android/apps/plus/content/EsAccount;

.field protected final mContext:Landroid/content/Context;

.field protected final mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;->mAccount:Lcom/google/android/apps/plus/content/EsAccount;

    .line 20
    new-instance v0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;-><init>(Ljava/lang/Long;)V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    .line 21
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 1

    .prologue
    .line 41
    return-void
.end method

.method public getResponses()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-virtual {v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->getRequests()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getResultCode()I
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public getResultValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
