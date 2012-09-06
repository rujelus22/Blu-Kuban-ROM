.class Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
.source "AudienceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/fragments/AudienceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RTCListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/fragments/AudienceFragment;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/fragments/AudienceFragment;Lcom/google/android/apps/plus/fragments/AudienceFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;-><init>(Lcom/google/android/apps/plus/fragments/AudienceFragment;)V

    return-void
.end method


# virtual methods
.method public onResponseReceived(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;)V
    .registers 7
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 133
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$100(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v1}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$100(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_37

    .line 134
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->hasSuggestionsResponse()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 136
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;->getSuggestionsResponse()Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;

    move-result-object v0

    .line 137
    .local v0, response:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #calls: Lcom/google/android/apps/plus/fragments/AudienceFragment;->loadSuggestedPeople(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$200(Lcom/google/android/apps/plus/fragments/AudienceFragment;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    .line 138
    iget-object v1, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #calls: Lcom/google/android/apps/plus/fragments/AudienceFragment;->cacheSuggestedResponse(Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V
    invoke-static {v1, v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$300(Lcom/google/android/apps/plus/fragments/AudienceFragment;Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;)V

    .line 141
    .end local v0           #response:Lcom/google/wireless/realtimechat/proto/Client$SuggestionsResponse;
    :cond_37
    return-void
.end method

.method public onResponseTimeout(I)V
    .registers 3
    .parameter "requestId"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/apps/plus/fragments/AudienceFragment$RTCListener;->this$0:Lcom/google/android/apps/plus/fragments/AudienceFragment;

    #getter for: Lcom/google/android/apps/plus/fragments/AudienceFragment;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/fragments/AudienceFragment;->access$100(Lcom/google/android/apps/plus/fragments/AudienceFragment;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_c

    .line 148
    :cond_c
    return-void
.end method
