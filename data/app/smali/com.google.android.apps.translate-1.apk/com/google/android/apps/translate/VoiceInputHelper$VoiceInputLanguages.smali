.class Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/translate/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VoiceInputLanguages"
.end annotation


# instance fields
.field private mPubliclyAvailableLangExists:Z

.field private mTranslateLanguage:Ljava/lang/String;

.field private mVoiceInputLanguageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "shortLangName"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->mPubliclyAvailableLangExists:Z

    .line 88
    iput-object p1, p0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->mTranslateLanguage:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->mVoiceInputLanguageList:Ljava/util/List;

    .line 90
    return-void
.end method


# virtual methods
.method public addVoiceInputLanguage(Ljava/lang/String;)V
    .registers 3
    .parameter "voiceInputLanguage"

    .prologue
    .line 92
    invoke-static {p1}, Lcom/google/android/apps/translate/VoiceInputHelper;->isDogfoodVoiceInputLanguage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->mPubliclyAvailableLangExists:Z

    .line 95
    :cond_9
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->mVoiceInputLanguageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public addVoiceInputLanguages(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, voiceInputLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, lang:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->addVoiceInputLanguage(Ljava/lang/String;)V

    goto :goto_4

    .line 101
    .end local v1           #lang:Ljava/lang/String;
    :cond_14
    return-void
.end method

.method public clearVoiceInputLanguages()V
    .registers 2

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->mPubliclyAvailableLangExists:Z

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->mVoiceInputLanguageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    return-void
.end method

.method public containsVoiceInputLanguage(Ljava/lang/String;)Z
    .registers 3
    .parameter "voiceInputLanguage"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->mVoiceInputLanguageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDefaultVoiceInputLanguage()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 111
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->mVoiceInputLanguageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    .line 112
    const-string v2, "VoiceInputHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultVoiceInputLanguage full-locale="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->mVoiceInputLanguageList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->mVoiceInputLanguageList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    :goto_32
    return-object v1

    .line 116
    :cond_33
    iget-boolean v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->mPubliclyAvailableLangExists:Z

    if-nez v1, :cond_40

    .line 118
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->mVoiceInputLanguageList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_32

    .line 124
    :cond_40
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->mTranslateLanguage:Ljava/lang/String;

    .line 125
    .local v0, locale:Ljava/lang/String;
    if-eqz v0, :cond_56

    invoke-static {}, Lcom/google/android/apps/translate/Util;->getSdkVersion()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_56

    .line 126
    const-string v1, "zh-CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 127
    const-string v0, "cmn-Hans-CN"

    .line 132
    :cond_56
    :goto_56
    const-string v1, "VoiceInputHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultVoiceInputLanguage locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 133
    goto :goto_32

    .line 128
    :cond_70
    const-string v1, "zh-TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 129
    const-string v0, "cmn-Hant-TW"

    goto :goto_56
.end method

.method public getVoiceInputLanguageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInputHelper$VoiceInputLanguages;->mVoiceInputLanguageList:Ljava/util/List;

    return-object v0
.end method
