.class Lcom/google/android/apps/plus/phone/SettingsActivity$2;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/phone/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/SettingsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$2;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-direct {p0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseReceived(ILcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;)V
    .registers 6
    .parameter "requestId"
    .parameter "account"
    .parameter "result"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$2;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$300(Lcom/google/android/apps/plus/phone/SettingsActivity;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$2;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    #getter for: Lcom/google/android/apps/plus/phone/SettingsActivity;->mRequestId:Ljava/lang/Integer;
    invoke-static {v0}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$300(Lcom/google/android/apps/plus/phone/SettingsActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_24

    .line 176
    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getErrorCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/SettingsActivity$2;->this$0:Lcom/google/android/apps/plus/phone/SettingsActivity;

    invoke-virtual {p3}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatServiceResult;->getCommand()Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v1

    #calls: Lcom/google/android/apps/plus/phone/SettingsActivity;->processSetAclResult(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/phone/SettingsActivity;->access$400(Lcom/google/android/apps/plus/phone/SettingsActivity;Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 180
    :cond_24
    return-void
.end method
