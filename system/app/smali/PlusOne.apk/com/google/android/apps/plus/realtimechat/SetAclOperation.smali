.class public Lcom/google/android/apps/plus/realtimechat/SetAclOperation;
.super Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;
.source "SetAclOperation.java"


# instance fields
.field private mAcl:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;I)V
    .registers 4
    .parameter "context"
    .parameter "account"
    .parameter "acl"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperation;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)V

    .line 20
    iput p3, p0, Lcom/google/android/apps/plus/realtimechat/SetAclOperation;->mAcl:I

    .line 21
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 3

    .prologue
    .line 25
    iget v1, p0, Lcom/google/android/apps/plus/realtimechat/SetAclOperation;->mAcl:I

    invoke-static {v1}, Lcom/google/android/apps/plus/realtimechat/BunchCommands;->setAcl(I)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;

    move-result-object v0

    .line 26
    .local v0, command:Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
    iget-object v1, p0, Lcom/google/android/apps/plus/realtimechat/SetAclOperation;->mOperationState:Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/plus/realtimechat/RealTimeChatOperationState;->addResponse(Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;)V

    .line 27
    return-void
.end method
