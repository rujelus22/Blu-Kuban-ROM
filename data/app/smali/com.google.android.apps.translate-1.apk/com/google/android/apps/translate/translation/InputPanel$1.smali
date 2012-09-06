.class Lcom/google/android/apps/translate/translation/InputPanel$1;
.super Ljava/lang/Object;
.source "InputPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/InputPanel;->notifyLanguageChanges(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/InputPanel;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/InputPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/InputPanel$1;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    .line 386
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$1;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mConfirmView:Lcom/google/android/apps/translate/editor/EditPanelView;
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->access$500(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/editor/EditPanelView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel$1;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/InputPanel;->access$000(Lcom/google/android/apps/translate/translation/InputPanel;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/InputPanel$1;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mLanguageList:Lcom/google/android/apps/translate/Languages;
    invoke-static {v2}, Lcom/google/android/apps/translate/translation/InputPanel;->access$100(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/Languages;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/InputPanel$1;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;
    invoke-static {v3}, Lcom/google/android/apps/translate/translation/InputPanel;->access$200(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/Language;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/InputPanel$1;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mToLanguage:Lcom/google/android/apps/translate/Language;
    invoke-static {v4}, Lcom/google/android/apps/translate/translation/InputPanel;->access$300(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/Language;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/translate/translation/InputPanel$1;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;
    invoke-static {v5}, Lcom/google/android/apps/translate/translation/InputPanel;->access$400(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/VoiceInputHelper;

    move-result-object v5

    iget-object v7, p0, Lcom/google/android/apps/translate/translation/InputPanel$1;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/google/android/apps/translate/translation/InputPanel;->access$000(Lcom/google/android/apps/translate/translation/InputPanel;)Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/translate/translation/InputPanel$1;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mFromLanguage:Lcom/google/android/apps/translate/Language;
    invoke-static {v8}, Lcom/google/android/apps/translate/translation/InputPanel;->access$200(Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/Language;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/google/android/apps/translate/VoiceInputHelper;->getAsrLocale(Landroid/content/Context;Lcom/google/android/apps/translate/Language;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/translate/editor/EditPanelView;->init(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Z)V

    .line 393
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$1;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #calls: Lcom/google/android/apps/translate/translation/InputPanel;->setInputBoxIcons(Z)V
    invoke-static {v0, v6}, Lcom/google/android/apps/translate/translation/InputPanel;->access$600(Lcom/google/android/apps/translate/translation/InputPanel;Z)V

    .line 394
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$1;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #calls: Lcom/google/android/apps/translate/translation/InputPanel;->setInputTextHint()V
    invoke-static {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->access$700(Lcom/google/android/apps/translate/translation/InputPanel;)V

    .line 395
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/InputPanel$1;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    sget-object v1, Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;->INIT:Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;

    #calls: Lcom/google/android/apps/translate/translation/InputPanel;->endEditMode(Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->access$800(Lcom/google/android/apps/translate/translation/InputPanel;Lcom/google/android/apps/translate/editor/InputMethodView$InputMethodEvent;)V

    .line 396
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/InputPanel$1;->this$0:Lcom/google/android/apps/translate/translation/InputPanel;

    #getter for: Lcom/google/android/apps/translate/translation/InputPanel;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/google/android/apps/translate/translation/InputPanel;->access$000(Lcom/google/android/apps/translate/translation/InputPanel;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 397
    return-void
.end method
