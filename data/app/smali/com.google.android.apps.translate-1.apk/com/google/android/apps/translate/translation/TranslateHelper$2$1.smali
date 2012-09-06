.class Lcom/google/android/apps/translate/translation/TranslateHelper$2$1;
.super Ljava/lang/Object;
.source "TranslateHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/translate/translation/TranslateHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$2;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/TranslateHelper$2;)V
    .registers 2
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$2$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 479
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$2$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$2;

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/TranslateHelper$2;->val$canceled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-nez v1, :cond_2f

    .line 480
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$2$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$2;

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/TranslateHelper$2;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 481
    invoke-static {}, Lcom/google/android/apps/translate/LanguagesFactory;->get()Lcom/google/android/apps/translate/LanguagesFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$2$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$2;

    iget-object v2, v2, Lcom/google/android/apps/translate/translation/TranslateHelper$2;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$2$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$2;

    iget-object v3, v3, Lcom/google/android/apps/translate/translation/TranslateHelper$2;->val$locale:Ljava/util/Locale;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translate/LanguagesFactory;->getLanguages(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/android/apps/translate/Languages;

    move-result-object v0

    .line 483
    .local v0, languages:Lcom/google/android/apps/translate/Languages;
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$2$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$2;

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/TranslateHelper$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$2$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$2;

    iget-object v2, v2, Lcom/google/android/apps/translate/translation/TranslateHelper$2;->val$translateEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper$2$1;->this$0:Lcom/google/android/apps/translate/translation/TranslateHelper$2;

    iget-object v3, v3, Lcom/google/android/apps/translate/translation/TranslateHelper$2;->val$locale:Ljava/util/Locale;

    #calls: Lcom/google/android/apps/translate/translation/TranslateHelper;->sendTranslateResult(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;Lcom/google/android/apps/translate/Languages;Ljava/util/Locale;)V
    invoke-static {v1, v2, v0, v3}, Lcom/google/android/apps/translate/translation/TranslateHelper;->access$000(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;Lcom/google/android/apps/translate/Languages;Ljava/util/Locale;)V

    .line 485
    .end local v0           #languages:Lcom/google/android/apps/translate/Languages;
    :cond_2f
    return-void
.end method
