.class public Lcom/google/android/apps/translate/translation/TranslateEntry;
.super Ljava/lang/Object;
.source "TranslateEntry.java"


# instance fields
.field public final fromLanguage:Lcom/google/android/apps/translate/Language;

.field public final inputText:Ljava/lang/String;

.field public final isAutoLanguage:Z

.field public final outputText:Ljava/lang/String;

.field public final toLanguage:Lcom/google/android/apps/translate/Language;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .parameter "fromLanguage"
    .parameter "toLanguage"
    .parameter "inputText"
    .parameter "outputText"
    .parameter "isAutoLanguage"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    .line 30
    iput-object p2, p0, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    .line 31
    iput-object p3, p0, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/google/android/apps/translate/translation/TranslateEntry;->outputText:Ljava/lang/String;

    .line 33
    iput-boolean p5, p0, Lcom/google/android/apps/translate/translation/TranslateEntry;->isAutoLanguage:Z

    .line 34
    return-void
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 11
    .parameter "from"
    .parameter "to"
    .parameter "text"
    .parameter "translation"
    .parameter "languageList"

    .prologue
    .line 50
    if-eqz p0, :cond_1e

    if-eqz p1, :cond_1e

    if-eqz p2, :cond_1e

    .line 51
    invoke-virtual {p4, p0}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    .line 52
    .local v1, fromLanguage:Lcom/google/android/apps/translate/Language;
    invoke-virtual {p4, p1}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v2

    .line 54
    .local v2, toLanguage:Lcom/google/android/apps/translate/Language;
    if-eqz v1, :cond_1e

    if-eqz v2, :cond_1e

    .line 55
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-static {v1}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v5

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/translation/TranslateEntry;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    .end local v1           #fromLanguage:Lcom/google/android/apps/translate/Language;
    .end local v2           #toLanguage:Lcom/google/android/apps/translate/Language;
    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public isEmpty()Z
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public toNewEntry()Lcom/google/android/apps/translate/history/Entry;
    .registers 6

    .prologue
    .line 40
    new-instance v0, Lcom/google/android/apps/translate/history/Entry;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/TranslateEntry;->outputText:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/translate/history/Entry;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
