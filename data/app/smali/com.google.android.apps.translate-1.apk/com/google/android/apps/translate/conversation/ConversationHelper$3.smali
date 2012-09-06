.class Lcom/google/android/apps/translate/conversation/ConversationHelper$3;
.super Ljava/lang/Object;
.source "ConversationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/conversation/ConversationHelper;->doTextTranslateSync(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V
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
    .line 354
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$3;->this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$3;->this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationHelper;->mAdapter:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;
    invoke-static {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->access$300(Lcom/google/android/apps/translate/conversation/ConversationHelper;)Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationAdapter;->notifyDataSetChanged()V

    .line 362
    return-void
.end method
