.class final Lcom/google/android/apps/translate/translation/TranslateHelper$4;
.super Ljava/lang/Thread;
.source "TranslateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/TranslateHelper;->getLocalizedLanguageNameAfterLoadLanguages(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;Ljava/util/Locale;Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;

.field final synthetic val$canceled:[Z

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$lang:Lcom/google/android/apps/translate/Language;

.field final synthetic val$locale:Ljava/util/Locale;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/util/Locale;[ZLandroid/app/ProgressDialog;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 512
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$locale:Ljava/util/Locale;

    iput-object p3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$canceled:[Z

    iput-object p4, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$lang:Lcom/google/android/apps/translate/Language;

    iput-object p6, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$callback:Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Util;->getLanguagesFromServer(Landroid/content/Context;Ljava/util/Locale;)Z

    .line 516
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->val$activity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/TranslateHelper$4$1;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/translation/TranslateHelper$4$1;-><init>(Lcom/google/android/apps/translate/translation/TranslateHelper$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 527
    return-void
.end method
