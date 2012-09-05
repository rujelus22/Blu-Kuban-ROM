.class Lcom/android/phone/InCallScreen$32;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->DisplayWaitingCallDialogWhenHaveHoldingCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$bgCall:Lcom/android/internal/telephony/Call;

.field final synthetic val$fgCall:Lcom/android/internal/telephony/Call;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5833
    iput-object p1, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$32;->val$fgCall:Lcom/android/internal/telephony/Call;

    iput-object p3, p0, Lcom/android/phone/InCallScreen$32;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9
    .parameter "di"
    .parameter "pos"

    .prologue
    .line 5836
    packed-switch p2, :pswitch_data_d4

    .line 5879
    :goto_3
    return-void

    .line 5838
    :pswitch_4
    :try_start_4
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCallScreen$32;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    #setter for: Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3802(Lcom/android/phone/InCallScreen;I)I

    .line 5840
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 5841
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_2c
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_4 .. :try_end_2c} :catch_2d

    goto :goto_1d

    .line 5876
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_2d
    move-exception v1

    .line 5877
    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Call hangup: caught "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 5846
    .end local v1           #ex:Lcom/android/internal/telephony/CallStateException;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_47
    :try_start_47
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3702(Lcom/android/phone/InCallScreen;I)I

    goto :goto_3

    .line 5849
    .end local v2           #i$:Ljava/util/Iterator;
    :pswitch_4e
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCallScreen$32;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    #setter for: Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3802(Lcom/android/phone/InCallScreen;I)I

    .line 5851
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_67
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 5852
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V

    goto :goto_67

    .line 5857
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_77
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3702(Lcom/android/phone/InCallScreen;I)I

    goto :goto_3

    .line 5860
    .end local v2           #i$:Ljava/util/Iterator;
    :pswitch_7e
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v4, p0, Lcom/android/phone/InCallScreen$32;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen$32;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    #setter for: Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3802(Lcom/android/phone/InCallScreen;I)I

    .line 5863
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->val$fgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_a2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 5864
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V

    goto :goto_a2

    .line 5866
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_b2
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->val$bgCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_bc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 5867
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V

    goto :goto_bc

    .line 5873
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_cc
    iget-object v3, p0, Lcom/android/phone/InCallScreen$32;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v4, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I
    invoke-static {v3, v4}, Lcom/android/phone/InCallScreen;->access$3702(Lcom/android/phone/InCallScreen;I)I
    :try_end_d2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_47 .. :try_end_d2} :catch_2d

    goto/16 :goto_3

    .line 5836
    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4e
        :pswitch_7e
    .end packed-switch
.end method
