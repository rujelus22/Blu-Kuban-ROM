.class Lcom/google/android/apps/translate/conversation/ConversationHelper$1;
.super Ljava/lang/Object;
.source "ConversationHelper.java"

# interfaces
.implements Lcom/google/android/apps/translate/NetworkTts$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/conversation/ConversationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/conversation/ConversationHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .registers 3
    .parameter "error"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$1;->this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->access$000(Lcom/google/android/apps/translate/conversation/ConversationHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/translate/Util;->showNetworkTtsError(Landroid/app/Activity;I)V

    .line 65
    return-void
.end method

.method public onPrepare()V
    .registers 1

    .prologue
    .line 70
    return-void
.end method

.method public onReady()V
    .registers 1

    .prologue
    .line 75
    return-void
.end method
