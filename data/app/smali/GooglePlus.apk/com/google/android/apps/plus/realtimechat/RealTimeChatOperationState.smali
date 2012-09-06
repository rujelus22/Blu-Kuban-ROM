.class public Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;
.super Ljava/lang/Object;
.source "RealTimeChatOperationState.java"


# instance fields
.field private mClientVersion:I

.field private mClientVersionChanged:Z

.field private final mCurrentConversationRowId:Ljava/lang/Long;

.field private final mRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldTriggerNotification:Z


# direct methods
.method public constructor <init>(Ljava/lang/Long;)V
    .registers 4
    .parameter "currentConversationRowId"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mCurrentConversationRowId:Ljava/lang/Long;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mRequests:Ljava/util/List;

    .line 27
    iput-boolean v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mShouldTriggerNotification:Z

    .line 28
    iput-boolean v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mClientVersionChanged:Z

    .line 29
    iput v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mClientVersion:I

    .line 30
    return-void
.end method


# virtual methods
.method public addRequest(Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;)V
    .registers 3
    .parameter "request"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public getClientVersionChanged()Z
    .registers 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mClientVersionChanged:Z

    return v0
.end method

.method public getCurrentConversationRowId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mCurrentConversationRowId:Ljava/lang/Long;

    return-object v0
.end method

.method public getRequests()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mRequests:Ljava/util/List;

    return-object v0
.end method

.method public setClientVersion(I)V
    .registers 3
    .parameter "version"

    .prologue
    .line 45
    iput p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mClientVersion:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mClientVersionChanged:Z

    .line 47
    return-void
.end method

.method public setShouldTriggerNotifications()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mShouldTriggerNotification:Z

    .line 59
    return-void
.end method

.method public shouldTriggerNotifications()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mShouldTriggerNotification:Z

    return v0
.end method
