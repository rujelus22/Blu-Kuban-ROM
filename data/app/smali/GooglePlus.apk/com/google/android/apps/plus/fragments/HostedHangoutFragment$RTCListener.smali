.class Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$RTCListener;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
.source "HostedHangoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RTCListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$RTCListener;-><init>(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)V

    return-void
.end method


# virtual methods
.method public onResponseReceived(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$100(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$100(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_37

    .line 161
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasSuggestionsResponse()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 163
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    .line 164
    .local v0, response:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->loadSuggestedPeople(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$200(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    .line 165
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #calls: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->cacheSuggestedResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$300(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    .line 168
    .end local v0           #response:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    :cond_37
    return-void
.end method

.method public onResponseTimeout(I)V
    .registers 3
    .parameter "requestId"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;->access$100(Lcom/google/android/apps/plus/fragments/HostedHangoutFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_c

    .line 175
    :cond_c
    return-void
.end method
