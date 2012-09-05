.class Lcom/google/android/apps/plus/phone/NewConversationActivity$1;
.super Ljava/lang/Object;
.source "NewConversationActivity.java"

# interfaces
.implements Lcom/google/android/apps/plus/fragments/ComposeMessageFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/plus/phone/NewConversationActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/plus/phone/NewConversationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$1;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendPhoto(Ljava/lang/String;I)V
    .registers 3
    .parameter "uri"
    .parameter "requestCode"

    .prologue
    .line 179
    return-void
.end method

.method public onSendTextMessage(Ljava/lang/String;)V
    .registers 3
    .parameter "text"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/plus/phone/NewConversationActivity$1;->this$0:Lcom/google/android/apps/plus/phone/NewConversationActivity;

    #calls: Lcom/google/android/apps/plus/phone/NewConversationActivity;->createConversation(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/plus/phone/NewConversationActivity;->access$300(Lcom/google/android/apps/plus/phone/NewConversationActivity;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public onTypingStatusChanged(Lcom/google/wireless/realtimechat/proto/Client$Typing$Type;)V
    .registers 2
    .parameter "typingType"

    .prologue
    .line 183
    return-void
.end method
