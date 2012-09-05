.class public Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;
.super Ljava/lang/Object;
.source "RealTimeChatOperationState.java"


# instance fields
.field private mClientVersion:I

.field private mClientVersionChanged:Z

.field private final mCurrentConversationRowId:Ljava/lang/Long;

.field private final mResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;",
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

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mCurrentConversationRowId:Ljava/lang/Long;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mResponses:Ljava/util/List;

    .line 28
    iput-boolean v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mShouldTriggerNotification:Z

    .line 29
    iput-boolean v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mClientVersionChanged:Z

    .line 30
    iput v1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mClientVersion:I

    .line 31
    return-void
.end method


# virtual methods
.method public addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    .registers 3
    .parameter "command"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mResponses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public getClientVersionChanged()Z
    .registers 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mClientVersionChanged:Z

    return v0
.end method

.method public getCurrentConversationRowId()Ljava/lang/Long;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mCurrentConversationRowId:Ljava/lang/Long;

    return-object v0
.end method

.method public getResponses()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mResponses:Ljava/util/List;

    return-object v0
.end method

.method public setClientVersion(I)V
    .registers 3
    .parameter "version"

    .prologue
    .line 46
    iput p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mClientVersion:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mClientVersionChanged:Z

    .line 48
    return-void
.end method

.method public setShouldTriggerNotifications()V
    .registers 2

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mShouldTriggerNotification:Z

    .line 60
    return-void
.end method

.method public shouldTriggerNotifications()Z
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->mShouldTriggerNotification:Z

    return v0
.end method
