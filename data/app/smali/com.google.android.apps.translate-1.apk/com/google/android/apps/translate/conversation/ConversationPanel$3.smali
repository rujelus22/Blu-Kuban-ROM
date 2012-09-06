.class Lcom/google/android/apps/translate/conversation/ConversationPanel$3;
.super Ljava/lang/Object;
.source "ConversationPanel.java"

# interfaces
.implements Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/conversation/ConversationPanel;->setLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/conversation/ConversationPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$3;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLanguageNameReceived(Lcom/google/android/apps/translate/Language;Ljava/util/Locale;Ljava/lang/String;)V
    .registers 5
    .parameter "lang"
    .parameter "locale"
    .parameter "localizedLangName"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$3;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightBtn:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$200(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/google/android/apps/translate/conversation/ConversationPanel$3;->this$0:Lcom/google/android/apps/translate/conversation/ConversationPanel;

    #getter for: Lcom/google/android/apps/translate/conversation/ConversationPanel;->mRightInputEditText:Lcom/google/android/apps/translate/editor/TextSlot;
    invoke-static {v0}, Lcom/google/android/apps/translate/conversation/ConversationPanel;->access$700(Lcom/google/android/apps/translate/conversation/ConversationPanel;)Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/apps/translate/editor/TextSlot;->setHint(Ljava/lang/CharSequence;)V

    .line 301
    return-void
.end method
