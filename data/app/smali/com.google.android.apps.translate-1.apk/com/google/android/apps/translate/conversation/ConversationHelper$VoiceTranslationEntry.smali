.class Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;
.super Ljava/lang/Object;
.source "ConversationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/conversation/ConversationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceTranslationEntry"
.end annotation


# instance fields
.field public hasTts:Z

.field public inputLanguage:Lcom/google/android/apps/translate/Language;

.field public inputText:Ljava/lang/String;

.field public outputLanguage:Lcom/google/android/apps/translate/Language;

.field public outputText:Ljava/lang/String;

.field public position:I

.field public sourceLeft:Z

.field final synthetic this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/conversation/ConversationHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationHelper$VoiceTranslationEntry;->this$0:Lcom/google/android/apps/translate/conversation/ConversationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
