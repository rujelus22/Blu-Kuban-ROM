.class Lcom/google/android/apps/translate/HomeActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/translate/HomeActivity;


# direct methods
.method constructor <init>(Lcom/google/android/apps/translate/HomeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/apps/translate/HomeActivity$1;->this$0:Lcom/google/android/apps/translate/HomeActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 54
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/HomeActivity$1;->getResultExtras(Z)Landroid/os/Bundle;

    move-result-object v2

    .line 55
    .local v2, result:Landroid/os/Bundle;
    const-string v4, "android.speech.extra.SUPPORTED_LANGUAGES"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 60
    .local v0, languages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "android.speech.extra.LANGUAGE_PREFERENCE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, preference:Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 63
    invoke-static {p1, v0}, Lcom/google/android/apps/translate/Profile;->setSupportedVoiceLanguages(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 65
    :cond_16
    if-eqz v1, :cond_2e

    .line 66
    invoke-static {v1}, Lcom/google/android/apps/translate/VoiceInputHelper;->getShortLanguageNameFromVoiceInputLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, shortLangName:Ljava/lang/String;
    if-eqz v3, :cond_2e

    .line 70
    invoke-static {p1, v3, v1}, Lcom/google/android/apps/translate/Profile;->setVoiceInputLanguage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v4, "zh-TW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 74
    const-string v4, "zh-CN"

    invoke-static {p1, v4, v1}, Lcom/google/android/apps/translate/Profile;->setVoiceInputLanguage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .end local v3           #shortLangName:Ljava/lang/String;
    :cond_2e
    :goto_2e
    return-void

    .line 77
    .restart local v3       #shortLangName:Ljava/lang/String;
    :cond_2f
    const-string v4, "zh-CN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 78
    const-string v4, "zh-TW"

    invoke-static {p1, v4, v1}, Lcom/google/android/apps/translate/Profile;->setVoiceInputLanguage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e
.end method
