.class public Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;
.super Ljava/lang/Object;
.source "RealTimeChatServiceResult.java"


# instance fields
.field private final mCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

.field private final mErrorCode:I

.field private mRequestId:I


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    .line 32
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;-><init>(IILcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 33
    return-void
.end method

.method constructor <init>(IILcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    .registers 4
    .parameter "requestId"
    .parameter "errorCode"
    .parameter "command"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->mRequestId:I

    .line 44
    iput p2, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->mErrorCode:I

    .line 45
    iput-object p3, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->mCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    .line 46
    return-void
.end method


# virtual methods
.method public getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->mCommand:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->mErrorCode:I

    return v0
.end method

.method public getRequestId()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->mRequestId:I

    return v0
.end method
