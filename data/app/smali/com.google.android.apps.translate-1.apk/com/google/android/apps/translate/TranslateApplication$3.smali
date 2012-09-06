.class Lcom/google/android/apps/translate/TranslateApplication$3;
.super Landroid/content/BroadcastReceiver;
.source "TranslateApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/TranslateApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/TranslateApplication;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/TranslateApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/apps/translate/TranslateApplication$3;->this$0:Lcom/google/android/apps/translate/TranslateApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 56
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/google/android/apps/translate/TranslateApplication$3;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v4

    .line 57
    .local v4, result:Landroid/os/Bundle;
    const-string v6, "android.speech.extra.SUPPORTED_LANGUAGES"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 59
    .local v2, languages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/apps/translate/Logger;->isDebug()Z

    move-result v6

    if-eqz v6, :cond_3a

    if-eqz v2, :cond_3a

    .line 60
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 61
    .local v1, lang:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "voicelang="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;)V

    goto :goto_17

    .line 64
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #lang:Ljava/lang/String;
    :cond_3a
    const-string v6, "android.speech.extra.LANGUAGE_PREFERENCE"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, preference:Ljava/lang/String;
    if-eqz v2, :cond_45

    .line 67
    invoke-static {p1, v2}, Lcom/google/android/apps/translate/Profile;->setSupportedVoiceLanguages(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 69
    :cond_45
    if-eqz v3, :cond_77

    .line 70
    invoke-static {v3}, Lcom/google/android/apps/translate/VoiceInputHelper;->getShortLanguageNameFromVoiceInputLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, shortLangName:Ljava/lang/String;
    if-eqz v5, :cond_77

    invoke-static {p1, v5}, Lcom/google/android/apps/translate/Profile;->getVoiceInputLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 75
    invoke-static {p1, v5, v3}, Lcom/google/android/apps/translate/Profile;->setVoiceInputLanguage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v6, "zh-TW"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    const-string v6, "zh-CN"

    invoke-static {p1, v6}, Lcom/google/android/apps/translate/Profile;->getVoiceInputLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_78

    .line 81
    const-string v6, "zh-CN"

    invoke-static {p1, v6, v3}, Lcom/google/android/apps/translate/Profile;->setVoiceInputLanguage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .end local v5           #shortLangName:Ljava/lang/String;
    :cond_77
    :goto_77
    return-void

    .line 84
    .restart local v5       #shortLangName:Ljava/lang/String;
    :cond_78
    const-string v6, "zh-CN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    const-string v6, "zh-TW"

    invoke-static {p1, v6}, Lcom/google/android/apps/translate/Profile;->getVoiceInputLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 87
    const-string v6, "zh-TW"

    invoke-static {p1, v6, v3}, Lcom/google/android/apps/translate/Profile;->setVoiceInputLanguage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_77
.end method
