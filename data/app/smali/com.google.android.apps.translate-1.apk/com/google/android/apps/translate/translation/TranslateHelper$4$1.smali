.class Lcom/google/android/apps/translate/translation/TranslateHelper$4$1;
.super Ljava/lang/Object;
.source "TranslateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/TranslateHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$4;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/TranslateHelper$4;)V
    .registers 2
    .parameter

    .prologue
    .line 516
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 519
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$4;

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$canceled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-nez v1, :cond_33

    .line 520
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$4;

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 521
    invoke-static {}, Lcom/google/android/apps/translate/LanguagesFactory;->get()Lcom/google/android/apps/translate/LanguagesFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$4;

    iget-object v2, v2, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$4;

    iget-object v3, v3, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$locale:Ljava/util/Locale;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translate/LanguagesFactory;->getLanguages(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/android/apps/translate/Languages;

    move-result-object v0

    .line 523
    .local v0, languages:Lcom/google/android/apps/translate/Languages;
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$4;

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$4;

    iget-object v2, v2, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$lang:Lcom/google/android/apps/translate/Language;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$4;

    iget-object v3, v3, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$locale:Ljava/util/Locale;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$4;

    iget-object v4, v4, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$callback:Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;

    #calls: Lcom/google/android/apps/translate/translation/TranslateHelper;->getLocalizedLanguageName(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Languages;Ljava/util/Locale;Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;)V
    invoke-static {v1, v2, v0, v3, v4}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$100(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Languages;Ljava/util/Locale;Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;)V

    .line 525
    .end local v0           #languages:Lcom/google/android/apps/translate/Languages;
    :cond_33
    return-void
.end method
