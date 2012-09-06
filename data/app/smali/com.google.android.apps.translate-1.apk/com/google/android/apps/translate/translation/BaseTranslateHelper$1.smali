.class Lcom/google/android/apps/translate/translation/BaseTranslateHelper$1;
.super Ljava/lang/Object;
.source "BaseTranslateHelper.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/translation/BaseTranslateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/translation/BaseTranslateHelper;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/translation/BaseTranslateHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper$1;->this$0:Lcom/google/android/apps/translate/translation/BaseTranslateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 6
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 37
    const-string v0, "key_recent_language_to"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper$1;->this$0:Lcom/google/android/apps/translate/translation/BaseTranslateHelper;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper$1;->this$0:Lcom/google/android/apps/translate/translation/BaseTranslateHelper;

    iget-object v1, v1, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/BaseTranslateHelper$1;->this$0:Lcom/google/android/apps/translate/translation/BaseTranslateHelper;

    iget-object v2, v2, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Profile;->getRecentToLanguages(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)Ljava/util/List;

    move-result-object v1

    #setter for: Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->mRecentToLanguages:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->access$002(Lcom/google/android/apps/translate/translation/BaseTranslateHelper;Ljava/util/List;)Ljava/util/List;

    .line 40
    :cond_19
    return-void
.end method
