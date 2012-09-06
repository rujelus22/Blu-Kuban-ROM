.class Lcom/google/android/apps/translate/conversation/ConversationHelper$2;
.super Ljava/lang/Object;
.source "ConversationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/conversation/ConversationHelper;->doTextTranslateAsync(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;

.field final synthetic val$entry:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/conversation/ConversationHelper;Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$2;->this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    iput-object p2, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$2;->val$entry:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$2;->this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    iget-object v1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$2;->val$entry:Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;

    #calls: Lcom/google/android/apps/translate/conversation/ConversationHelper;->doTextTranslateSync(Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/conversation/ConversationHelper;->access$200(Lcom/google/android/apps/translate/conversation/ConversationHelper;Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;)V

    .line 291
    return-void
.end method
