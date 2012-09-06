.class public Lcom/google/android/apps/translate/translation/TranslateHelper;
.super Lcom/google/android/apps/translate/translation/BaseTranslateHelper;
.source "TranslateHelper.java"

# interfaces
.implements Lcom/google/android/apps/translate/editor/PreImeAutoCompleteTextView$OnKeyPreImeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/translation/TranslateHelper$6;,
        Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;
    }
.end annotation


# static fields
.field private static final ALWAYS_SHOW_MENU_ITEMS:Z = true

.field private static final DEFAULT_BROWSER_ACTIVITY:Ljava/lang/String; = "com.android.browser.BrowserActivity"

.field private static final DEFAULT_BROWSER_PACKAGE:Ljava/lang/String; = "com.android.browser"

.field private static final TAG:Ljava/lang/String; = "TranslateHelper"


# instance fields
.field private mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

.field private mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

.field private mTranslateFragmentWrapper:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

.field private mTranslatePanel:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;-><init>()V

    .line 64
    const-string v0, "TranslateHelper"

    const-string v1, "TranslateHelper"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;Lcom/google/android/apps/translate/Languages;Ljava/util/Locale;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/apps/translate/translation/TranslateHelper;->sendTranslateResult(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;Lcom/google/android/apps/translate/Languages;Ljava/util/Locale;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Languages;Ljava/util/Locale;Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 53
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getLocalizedLanguageName(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Languages;Ljava/util/Locale;Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/InputPanel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/translate/translation/TranslateHelper;Lcom/google/android/apps/translate/translation/InputPanel;)Lcom/google/android/apps/translate/translation/InputPanel;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/translation/TranslateHelper;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mTranslatePanel:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mTranslateFragmentWrapper:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/apps/translate/translation/TranslateHelper;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    return-object v0
.end method

.method private static getLocalizedLanguageName(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Languages;Ljava/util/Locale;Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;)V
    .registers 11
    .parameter "activity"
    .parameter "lang"
    .parameter "languages"
    .parameter "locale"
    .parameter "callback"

    .prologue
    .line 588
    const-string v4, "TranslateHelper"

    const-string v5, "sendTranslateResult"

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    if-eqz p1, :cond_23

    .line 590
    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, shortName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, localizedLangName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 594
    .local v2, refreshLocalLangList:Z
    if-eqz p2, :cond_1b

    .line 595
    invoke-virtual {p2, v3}, Lcom/google/android/apps/translate/Languages;->getToLanguageLongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, longName:Ljava/lang/String;
    if-eqz v1, :cond_24

    .line 597
    move-object v0, v1

    .line 603
    .end local v1           #longName:Ljava/lang/String;
    :cond_1b
    :goto_1b
    if-eqz v2, :cond_20

    .line 604
    invoke-static {p0, p1, p3, p4}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getLocalizedLanguageNameAfterLoadLanguages(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;Ljava/util/Locale;Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;)V

    .line 607
    :cond_20
    invoke-interface {p4, p1, p3, v0}, Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;->onLanguageNameReceived(Lcom/google/android/apps/translate/Language;Ljava/util/Locale;Ljava/lang/String;)V

    .line 609
    .end local v0           #localizedLangName:Ljava/lang/String;
    .end local v2           #refreshLocalLangList:Z
    .end local v3           #shortName:Ljava/lang/String;
    :cond_23
    return-void

    .line 599
    .restart local v0       #localizedLangName:Ljava/lang/String;
    .restart local v1       #longName:Ljava/lang/String;
    .restart local v2       #refreshLocalLangList:Z
    .restart local v3       #shortName:Ljava/lang/String;
    :cond_24
    const/4 v2, 0x1

    goto :goto_1b
.end method

.method public static getLocalizedLanguageName(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;)V
    .registers 7
    .parameter "activity"
    .parameter "lang"
    .parameter "callback"

    .prologue
    .line 446
    const-string v2, "TranslateHelper"

    const-string v3, "getLocalizedLanguageName"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    if-eqz p1, :cond_1f

    .line 448
    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/translate/Util;->languageShortNameToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 449
    .local v1, locale:Ljava/util/Locale;
    invoke-static {}, Lcom/google/android/apps/translate/LanguagesFactory;->get()Lcom/google/android/apps/translate/LanguagesFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v3}, Lcom/google/android/apps/translate/LanguagesFactory;->getLanguages(Landroid/content/Context;Ljava/util/Locale;Z)Lcom/google/android/apps/translate/Languages;

    move-result-object v0

    .line 451
    .local v0, languages:Lcom/google/android/apps/translate/Languages;
    if-nez v0, :cond_20

    .line 452
    invoke-static {p0, p1, v1, p2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getLocalizedLanguageNameAfterLoadLanguages(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;Ljava/util/Locale;Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;)V

    .line 457
    .end local v0           #languages:Lcom/google/android/apps/translate/Languages;
    .end local v1           #locale:Ljava/util/Locale;
    :cond_1f
    :goto_1f
    return-void

    .line 454
    .restart local v0       #languages:Lcom/google/android/apps/translate/Languages;
    .restart local v1       #locale:Ljava/util/Locale;
    :cond_20
    invoke-static {p0, p1, v0, v1, p2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getLocalizedLanguageName(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Languages;Ljava/util/Locale;Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;)V

    goto :goto_1f
.end method

.method private static getLocalizedLanguageNameAfterLoadLanguages(Landroid/app/Activity;Lcom/google/android/apps/translate/Language;Ljava/util/Locale;Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;)V
    .registers 13
    .parameter "activity"
    .parameter "lang"
    .parameter "locale"
    .parameter "callback"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 500
    const-string v0, "TranslateHelper"

    const-string v1, "getLocalizedLanguageNameAfterLoadLanguages"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    new-array v7, v3, [Z

    aput-boolean v2, v7, v2

    .line 502
    .local v7, canceled:[Z
    const/4 v1, 0x0

    sget v0, Lcom/google/android/apps/translate/R$string;->msg_loading:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/google/android/apps/translate/translation/TranslateHelper$3;

    invoke-direct {v5, v7}, Lcom/google/android/apps/translate/translation/TranslateHelper$3;-><init>([Z)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v4

    .line 511
    .local v4, dialog:Landroid/app/ProgressDialog;
    const-string v8, ""

    .line 512
    .local v8, langName:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateHelper$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, v7

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/translate/translation/TranslateHelper$4;-><init>(Landroid/app/Activity;Ljava/util/Locale;[ZLandroid/app/ProgressDialog;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/translation/TranslateHelper$LocalizedLanguageCallback;)V

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper$4;->start()V

    .line 529
    return-void
.end method

.method private static getTranslateEntryByAction(Landroid/app/Activity;Landroid/content/Intent;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 7
    .parameter "activity"
    .parameter "intent"
    .parameter "languageList"

    .prologue
    .line 135
    const-string v2, "TranslateHelper"

    const-string v3, "getTranslateEntryByAction"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, action:Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->parseNativeIntent(Landroid/content/Intent;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v1

    .line 138
    .local v1, entry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    if-eqz v0, :cond_13

    if-eqz v1, :cond_14

    .line 147
    .end local v1           #entry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    :cond_13
    :goto_13
    return-object v1

    .line 140
    .restart local v1       #entry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    :cond_14
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 141
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->parseTranslateUrl(Landroid/app/Activity;Landroid/content/Intent;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v1

    goto :goto_13

    .line 142
    :cond_21
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 143
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->parseSentData(Landroid/app/Activity;Landroid/content/Intent;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v1

    goto :goto_13

    .line 144
    :cond_2e
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 145
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->parseSearchData(Landroid/app/Activity;Landroid/content/Intent;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v1

    goto :goto_13

    .line 147
    :cond_3b
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private static parseCgiParams(Landroid/net/Uri;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 6
    .parameter "uri"
    .parameter "languageList"

    .prologue
    .line 196
    const-string v2, "sl"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, sl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 198
    const-string v0, "auto"

    .line 200
    :cond_e
    const-string v2, "tl"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, tl:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 202
    invoke-static {}, Lcom/google/android/apps/translate/Util;->getLanguageShortNameByLocale()Ljava/lang/String;

    move-result-object v1

    .line 204
    :cond_1e
    const-string v2, "q"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/apps/translate/translation/TranslateEntry;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v2

    return-object v2
.end method

.method private static parseFragmentParams(Landroid/net/Uri;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 8
    .parameter "uri"
    .parameter "languageList"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x3

    .line 213
    const-string v3, "TranslateHelper"

    const-string v4, "parseFragmentParams"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, fragment:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 216
    const-string v3, "\\|"

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, params:[Ljava/lang/String;
    array-length v3, v1

    if-ne v3, v5, :cond_29

    .line 218
    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v3, v4, v5, v2, p1}, Lcom/google/android/apps/translate/translation/TranslateEntry;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v2

    .line 226
    .end local v1           #params:[Ljava/lang/String;
    :cond_29
    return-object v2
.end method

.method private static parseNativeIntent(Landroid/content/Intent;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 6
    .parameter "intent"
    .parameter "languageList"

    .prologue
    .line 152
    const-string v0, "key_language_from"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_language_to"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_text_input"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "key_text_output"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/android/apps/translate/translation/TranslateEntry;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    return-object v0
.end method

.method private static parseSearchData(Landroid/app/Activity;Landroid/content/Intent;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 6
    .parameter "activity"
    .parameter "intent"
    .parameter "languageList"

    .prologue
    .line 284
    const-string v1, "TranslateHelper"

    const-string v2, "parseSearchData"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 286
    :cond_19
    const/4 v1, 0x0

    .line 293
    :goto_1a
    return-object v1

    .line 289
    :cond_1b
    const-string v1, "query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, inputText:Ljava/lang/String;
    if-nez v0, :cond_29

    .line 291
    const-string v1, "user_query"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_29
    invoke-static {p0, v0, p2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->prepareForAutoTranslation(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v1

    goto :goto_1a
.end method

.method private static parseSentData(Landroid/app/Activity;Landroid/content/Intent;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 6
    .parameter "activity"
    .parameter "intent"
    .parameter "languageList"

    .prologue
    .line 266
    const-string v1, "TranslateHelper"

    const-string v2, "parseSentData"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 268
    :cond_19
    const/4 v1, 0x0

    .line 272
    :goto_1a
    return-object v1

    .line 271
    :cond_1b
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, inputText:Ljava/lang/String;
    invoke-static {p0, v0, p2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->prepareForAutoTranslation(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v1

    goto :goto_1a
.end method

.method private static parseTranslateUrl(Landroid/app/Activity;Landroid/content/Intent;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 8
    .parameter "activity"
    .parameter "intent"
    .parameter "languageList"

    .prologue
    const/4 v2, 0x0

    .line 171
    const-string v3, "TranslateHelper"

    const-string v4, "parseTranslateUrl"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_24
    move-object v0, v2

    .line 191
    :cond_25
    :goto_25
    return-object v0

    .line 178
    :cond_26
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 179
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1, p2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->parseCgiParams(Landroid/net/Uri;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    .line 180
    .local v0, translateEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    if-nez v0, :cond_38

    .line 181
    invoke-static {v1, p2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->parseFragmentParams(Landroid/net/Uri;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    .line 184
    :cond_38
    if-nez v0, :cond_25

    .line 187
    const-string v3, "TranslateHelper"

    const-string v4, "parseTranslateUrl fall back to Translate web app."

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/apps/translate/translation/TranslateHelper;->startWebTranslate(Landroid/app/Activity;Landroid/net/Uri;)V

    move-object v0, v2

    .line 191
    goto :goto_25
.end method

.method public static performChipActionShare(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/history/Entry;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V
    .registers 12
    .parameter "activity"
    .parameter "languages"
    .parameter "entry"
    .parameter "chipPart"

    .prologue
    const/4 v7, 0x1

    .line 881
    new-instance v6, Lcom/google/android/apps/translate/Translate$TranslateResult;

    invoke-direct {v6, p2}, Lcom/google/android/apps/translate/Translate$TranslateResult;-><init>(Lcom/google/android/apps/translate/history/Entry;)V

    .line 882
    .local v6, results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {p2}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/apps/translate/history/Entry;->getToLanguageShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/apps/translate/Languages;->getToLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/apps/translate/history/Entry;->getOutputText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/apps/translate/history/Entry;->getFromLanguageShortName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Ljava/lang/String;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/translation/TranslateEntry;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 888
    .local v0, translateEntry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    sget-object v1, Lcom/google/android/apps/translate/translation/TranslateHelper$6;->$SwitchMap$com$google$android$apps$translate$translation$ChipView$ChipPart:[I

    invoke-virtual {p3}, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_64

    .line 902
    invoke-static {p0, v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->sendTranslateResult(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 903
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_SHARE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    invoke-virtual {v1, v2, v7}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 907
    :goto_42
    return-void

    .line 891
    :pswitch_43
    iget-object v1, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->sendText(Landroid/app/Activity;Ljava/lang/String;)V

    .line 892
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_SHARE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    invoke-virtual {v1, v2, v7}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    goto :goto_42

    .line 896
    :pswitch_52
    invoke-virtual {v6}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getTranslateText()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->sendText(Landroid/app/Activity;Ljava/lang/String;)V

    .line 897
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_SHARE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    invoke-virtual {v1, v2, v7}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    goto :goto_42

    .line 888
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_43
        :pswitch_43
        :pswitch_52
    .end packed-switch
.end method

.method private static prepareForAutoTranslation(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 9
    .parameter "activity"
    .parameter "inputText"
    .parameter "languageList"

    .prologue
    const/4 v2, 0x0

    .line 298
    const-string v3, "TranslateHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareForAutoTranslation inputText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    if-nez p1, :cond_1d

    move-object v1, v2

    .line 327
    :cond_1c
    :goto_1c
    return-object v1

    .line 303
    :cond_1d
    const-string v3, "auto"

    invoke-static {}, Lcom/google/android/apps/translate/Util;->getLanguageShortNameByLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v2, p2}, Lcom/google/android/apps/translate/translation/TranslateEntry;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v1

    .line 310
    .local v1, entry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    if-eqz v1, :cond_1c

    iget-object v3, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    invoke-static {v3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    invoke-static {v3}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_45

    iget-object v3, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    invoke-static {v3}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 312
    :cond_45
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 313
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v3, "http"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "translate.google.com"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "translate"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "sl"

    iget-object v5, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v5}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "tl"

    iget-object v5, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v5}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "u"

    iget-object v5, v1, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "hl"

    invoke-static {}, Lcom/google/android/apps/translate/Util;->getLanguageShortNameByLocale()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 324
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/google/android/apps/translate/translation/TranslateHelper;->startWebTranslate(Landroid/app/Activity;Landroid/net/Uri;)V

    move-object v1, v2

    .line 325
    goto :goto_1c
.end method

.method public static readIntentData(Landroid/app/Activity;Landroid/content/Intent;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 7
    .parameter "activity"
    .parameter "intent"
    .parameter "languageList"

    .prologue
    const/4 v1, 0x0

    .line 116
    const-string v2, "TranslateHelper"

    const-string v3, "readIntentData"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    if-nez p1, :cond_11

    .line 118
    const-string v2, "no intent, finish activity"

    invoke-static {v2}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 130
    :goto_10
    return-object v0

    .line 122
    :cond_11
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getTranslateEntryByAction(Landroid/app/Activity;Landroid/content/Intent;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    .line 123
    .local v0, entry:Lcom/google/android/apps/translate/translation/TranslateEntry;
    if-nez v0, :cond_1e

    .line 124
    const-string v2, "no input text or from/to languages"

    invoke-static {v2}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 125
    goto :goto_10

    .line 129
    :cond_1e
    iget-object v1, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v2, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-static {p0, v1, v2}, Lcom/google/android/apps/translate/Profile;->setLanguagePair(Landroid/content/Context;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    goto :goto_10
.end method

.method public static sendText(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .parameter "activity"
    .parameter "text"

    .prologue
    .line 612
    const-string v1, "TranslateHelper"

    const-string v2, "sendText"

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    if-eqz p1, :cond_27

    .line 614
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 615
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    sget v1, Lcom/google/android/apps/translate/R$string;->title_send_chooser:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 620
    .end local v0           #intent:Landroid/content/Intent;
    :cond_27
    return-void
.end method

.method public static sendTranslateResult(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 6
    .parameter "activity"
    .parameter "translateEntry"

    .prologue
    .line 423
    const-string v2, "TranslateHelper"

    const-string v3, "sendTranslateResult"

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    if-eqz p1, :cond_21

    .line 425
    iget-object v2, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/translate/Util;->languageShortNameToLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    .line 427
    .local v1, locale:Ljava/util/Locale;
    invoke-static {}, Lcom/google/android/apps/translate/LanguagesFactory;->get()Lcom/google/android/apps/translate/LanguagesFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v1, v3}, Lcom/google/android/apps/translate/LanguagesFactory;->getLanguages(Landroid/content/Context;Ljava/util/Locale;Z)Lcom/google/android/apps/translate/Languages;

    move-result-object v0

    .line 429
    .local v0, languages:Lcom/google/android/apps/translate/Languages;
    if-nez v0, :cond_22

    .line 430
    invoke-static {p0, p1, v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->sendTranslateResultAfterLoadLanguages(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;Ljava/util/Locale;)V

    .line 435
    .end local v0           #languages:Lcom/google/android/apps/translate/Languages;
    .end local v1           #locale:Ljava/util/Locale;
    :cond_21
    :goto_21
    return-void

    .line 432
    .restart local v0       #languages:Lcom/google/android/apps/translate/Languages;
    .restart local v1       #locale:Ljava/util/Locale;
    :cond_22
    invoke-static {p0, p1, v0, v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->sendTranslateResult(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;Lcom/google/android/apps/translate/Languages;Ljava/util/Locale;)V

    goto :goto_21
.end method

.method private static sendTranslateResult(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;Lcom/google/android/apps/translate/Languages;Ljava/util/Locale;)V
    .registers 21
    .parameter "activity"
    .parameter "translateEntry"
    .parameter "languages"
    .parameter "locale"

    .prologue
    .line 533
    const-string v13, "TranslateHelper"

    const-string v14, "sendTranslateResult"

    invoke-static {v13, v14}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    if-eqz p1, :cond_49

    .line 535
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v13}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v4

    .line 536
    .local v4, fromLanguage:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v13}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v11

    .line 537
    .local v11, toLanguage:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v13}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v5

    .line 538
    .local v5, fromLanguageLong:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v13}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v12

    .line 540
    .local v12, toLanguageLong:Ljava/lang/String;
    const/4 v8, 0x0

    .line 541
    .local v8, refreshLocalLangList:Z
    if-eqz p2, :cond_3e

    .line 542
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/google/android/apps/translate/Languages;->getToLanguageLongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 543
    .local v7, longName:Ljava/lang/String;
    if-eqz v7, :cond_4a

    .line 544
    move-object v5, v7

    .line 549
    :goto_35
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/google/android/apps/translate/Languages;->getToLanguageLongName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 550
    if-eqz v7, :cond_4c

    .line 551
    move-object v12, v7

    .line 557
    .end local v7           #longName:Ljava/lang/String;
    :cond_3e
    :goto_3e
    if-eqz v8, :cond_4e

    .line 558
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->sendTranslateResultAfterLoadLanguages(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;Ljava/util/Locale;)V

    .line 583
    .end local v4           #fromLanguage:Ljava/lang/String;
    .end local v5           #fromLanguageLong:Ljava/lang/String;
    .end local v8           #refreshLocalLangList:Z
    .end local v11           #toLanguage:Ljava/lang/String;
    .end local v12           #toLanguageLong:Ljava/lang/String;
    :cond_49
    :goto_49
    return-void

    .line 546
    .restart local v4       #fromLanguage:Ljava/lang/String;
    .restart local v5       #fromLanguageLong:Ljava/lang/String;
    .restart local v7       #longName:Ljava/lang/String;
    .restart local v8       #refreshLocalLangList:Z
    .restart local v11       #toLanguage:Ljava/lang/String;
    .restart local v12       #toLanguageLong:Ljava/lang/String;
    :cond_4a
    const/4 v8, 0x1

    goto :goto_35

    .line 553
    :cond_4c
    const/4 v8, 0x1

    goto :goto_3e

    .line 562
    .end local v7           #longName:Ljava/lang/String;
    :cond_4e
    new-instance v9, Lcom/google/android/apps/translate/Translate$TranslateResult;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->outputText:Ljava/lang/String;

    invoke-direct {v9, v13}, Lcom/google/android/apps/translate/Translate$TranslateResult;-><init>(Ljava/lang/String;)V

    .line 565
    .local v9, results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    .line 566
    .local v10, to:Lcom/google/android/apps/translate/Language;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget v14, Lcom/google/android/apps/translate/R$string;->label_automatic_translation:I

    move-object/from16 v0, p0

    invoke-static {v0, v14, v10}, Lcom/google/android/apps/translate/Util;->getLocalizedStringId(Landroid/content/Context;ILcom/google/android/apps/translate/Language;)I

    move-result v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getTranslateText()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/google/android/apps/translate/R$string;->label_original_text:I

    move-object/from16 v0, p0

    invoke-static {v0, v14, v10}, Lcom/google/android/apps/translate/Util;->getLocalizedStringId(Landroid/content/Context;ILcom/google/android/apps/translate/Language;)I

    move-result v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 575
    .local v3, content:Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.intent.action.SEND"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 576
    .local v6, intent:Landroid/content/Intent;
    const-string v13, "text/plain"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string v13, "android.intent.extra.SUBJECT"

    sget v14, Lcom/google/android/apps/translate/R$string;->msg_send_translation_subject:I

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/google/android/apps/translate/Util;->getLocalizedStringId(Landroid/content/Context;ILcom/google/android/apps/translate/Language;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    const-string v13, "android.intent.extra.TEXT"

    invoke-virtual {v6, v13, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 580
    sget v13, Lcom/google/android/apps/translate/R$string;->title_send_chooser:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_49
.end method

.method private static sendTranslateResultAfterLoadLanguages(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;Ljava/util/Locale;)V
    .registers 10
    .parameter "activity"
    .parameter "translateEntry"
    .parameter "locale"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 461
    const-string v0, "TranslateHelper"

    const-string v1, "sendTranslateResultAfterLoadLanguages"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    new-array v6, v3, [Z

    aput-boolean v2, v6, v2

    .line 463
    .local v6, canceled:[Z
    const/4 v1, 0x0

    sget v0, Lcom/google/android/apps/translate/R$string;->msg_loading:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Lcom/google/android/apps/translate/translation/TranslateHelper$1;

    invoke-direct {v5, v6}, Lcom/google/android/apps/translate/translation/TranslateHelper$1;-><init>([Z)V

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v4

    .line 472
    .local v4, dialog:Landroid/app/ProgressDialog;
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateHelper$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/translation/TranslateHelper$2;-><init>(Landroid/app/Activity;Ljava/util/Locale;[ZLandroid/app/ProgressDialog;Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateHelper$2;->start()V

    .line 489
    return-void
.end method

.method private static startWebTranslate(Landroid/app/Activity;Landroid/net/Uri;)V
    .registers 11
    .parameter "activity"
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    .line 230
    const-string v4, "TranslateHelper"

    const-string v5, "startWebTranslate"

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v3, webTranslateIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v4, "text/html"

    invoke-virtual {v3, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v0, defaultBrowserIntent:Landroid/content/Intent;
    const-string v4, "com.android.browser"

    const-string v5, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/content/Intent;

    aput-object v0, v6, v8

    const/high16 v7, 0x1

    invoke-virtual {v4, v5, v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 245
    .local v2, info:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5a

    .line 246
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    :cond_5a
    :try_start_5a
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 255
    :goto_5d
    return-void

    .line 251
    :catch_5e
    move-exception v1

    .line 252
    .local v1, e:Landroid/content/ActivityNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/google/android/apps/translate/R$string;->msg_error_intent_web_translate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;)V

    .line 253
    sget v4, Lcom/google/android/apps/translate/R$string;->msg_error_intent_web_translate:I

    invoke-static {p0, v4}, Lcom/google/android/apps/translate/Util;->showLongToastMessage(Landroid/app/Activity;I)V

    goto :goto_5d
.end method


# virtual methods
.method public finish()V
    .registers 5

    .prologue
    .line 706
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_no_transition_animation"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 708
    .local v0, noAnim:Z
    if-eqz v0, :cond_18

    .line 709
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->removeTransitionAnimation(Landroid/app/Activity;)V

    .line 711
    :cond_18
    return-void
.end method

.method public getContextMenuTargetView()Landroid/view/View;
    .registers 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->getContextMenuTargetView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getCurrentTranslation()Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    return-object v0
.end method

.method public getFromLanguage()Lcom/google/android/apps/translate/Language;
    .registers 4

    .prologue
    .line 714
    const-string v1, "TranslateHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFromLanguage mInputPanel is null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-nez v0, :cond_28

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->getFromLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v0

    :goto_27
    return-object v0

    .line 714
    :cond_28
    const/4 v0, 0x0

    goto :goto_12

    .line 715
    :cond_2a
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public getInitialTranslationEntry()Lcom/google/android/apps/translate/translation/TranslateEntry;
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 396
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->hasCurrentTranslation()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v0, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/translation/InputPanel;->getInputText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 402
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v0, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {p0, v0, v5}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getToLanguageGivenFromLanguage(Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    .line 403
    .local v1, from:Lcom/google/android/apps/translate/Language;
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v2, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    .line 404
    .local v2, to:Lcom/google/android/apps/translate/Language;
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v3, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    .line 419
    .local v3, inputText:Ljava/lang/String;
    :goto_2f
    new-instance v0, Lcom/google/android/apps/translate/translation/TranslateEntry;

    const-string v4, ""

    invoke-static {v1}, Lcom/google/android/apps/translate/Util;->isAutoDetectLanguage(Lcom/google/android/apps/translate/Language;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/translation/TranslateEntry;-><init>(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    .line 410
    .end local v1           #from:Lcom/google/android/apps/translate/Language;
    .end local v2           #to:Lcom/google/android/apps/translate/Language;
    .end local v3           #inputText:Ljava/lang/String;
    :cond_3b
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-nez v0, :cond_44

    .line 411
    const/4 v1, 0x0

    .line 412
    .restart local v1       #from:Lcom/google/android/apps/translate/Language;
    const/4 v2, 0x0

    .line 417
    .restart local v2       #to:Lcom/google/android/apps/translate/Language;
    :goto_41
    const-string v3, ""

    .restart local v3       #inputText:Ljava/lang/String;
    goto :goto_2f

    .line 414
    .end local v1           #from:Lcom/google/android/apps/translate/Language;
    .end local v2           #to:Lcom/google/android/apps/translate/Language;
    .end local v3           #inputText:Ljava/lang/String;
    :cond_44
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->getFromLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v0

    invoke-virtual {p0, v0, v5}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getToLanguageGivenFromLanguage(Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    .line 415
    .restart local v1       #from:Lcom/google/android/apps/translate/Language;
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->getToLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v2

    .restart local v2       #to:Lcom/google/android/apps/translate/Language;
    goto :goto_41
.end method

.method public getInputText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 724
    const-string v1, "TranslateHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInputText mInputPanel is null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-nez v0, :cond_28

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->getInputText()Ljava/lang/String;

    move-result-object v0

    :goto_27
    return-object v0

    .line 724
    :cond_28
    const/4 v0, 0x0

    goto :goto_12

    .line 725
    :cond_2a
    const-string v0, ""

    goto :goto_27
.end method

.method public getToLanguage()Lcom/google/android/apps/translate/Language;
    .registers 4

    .prologue
    .line 719
    const-string v1, "TranslateHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getToLanguage mInputPanel is null? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-nez v0, :cond_28

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->getToLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v0

    :goto_27
    return-object v0

    .line 719
    :cond_28
    const/4 v0, 0x0

    goto :goto_12

    .line 720
    :cond_2a
    const/4 v0, 0x0

    goto :goto_27
.end method

.method hasCurrentTranslation()Z
    .registers 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v0, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v0, v0, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/TranslateEntry;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isInEditingMode()Z
    .registers 2

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->isInEditingMode()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 671
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    if-nez p3, :cond_6

    .line 679
    :cond_5
    :goto_5
    return-void

    .line 675
    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v0, :cond_5

    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->setCurrentTranslation(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 677
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/apps/translate/translation/InputPanel;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_5
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)Z
    .registers 5
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 787
    const-string v0, "TranslateHelper"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-nez v0, :cond_d

    .line 801
    :cond_c
    :goto_c
    return v2

    .line 791
    :cond_d
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 793
    :cond_17
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/InputPanel;->onConfigurationChanged(Landroid/content/res/Configuration;)Z

    goto :goto_c
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 11
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 811
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 812
    .local v1, id:I
    sget v6, Lcom/google/android/apps/translate/R$id;->context_menu_translate_input_text:I

    if-ne v1, v6, :cond_33

    .line 813
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    iget-object v7, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/translate/translation/InputPanel;->setLanguageList(Lcom/google/android/apps/translate/Languages;)V

    .line 814
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    iget-object v7, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v7, v7, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    iget-object v8, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v8, v8, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v6, v7, v8, v5, v5}, Lcom/google/android/apps/translate/translation/InputPanel;->languagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V

    .line 819
    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    iget-object v6, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v6, v6, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Lcom/google/android/apps/translate/translation/InputPanel;->setTextAndDoTranslate(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_SRC_TRANSLATE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    invoke-virtual {v5, v6, v4}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 868
    :goto_32
    return v4

    .line 823
    :cond_33
    sget v6, Lcom/google/android/apps/translate/R$id;->context_menu_translate_translation:I

    if-ne v1, v6, :cond_73

    .line 824
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    iget-object v7, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v6, v7}, Lcom/google/android/apps/translate/translation/InputPanel;->setLanguageList(Lcom/google/android/apps/translate/Languages;)V

    .line 825
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/translation/TranslateEntry;->toNewEntry()Lcom/google/android/apps/translate/history/Entry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/translate/history/Entry;->getTranslation()Ljava/lang/String;

    move-result-object v2

    .line 826
    .local v2, inputText:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v6, v2}, Lcom/google/android/apps/translate/translation/InputPanel;->setInputText(Ljava/lang/String;)V

    .line 827
    iget-object v6, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    iget-object v7, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v7, v7, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {p0, v7, v5}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getFromLanguageGivenToLanguage(Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v8, v8, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {p0, v8, v5}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getToLanguageGivenFromLanguage(Lcom/google/android/apps/translate/Language;Z)Lcom/google/android/apps/translate/Language;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v5, v5}, Lcom/google/android/apps/translate/translation/InputPanel;->languagePairSelected(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;ZZ)V

    .line 832
    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    const-string v6, ""

    invoke-virtual {v5, v2, v6}, Lcom/google/android/apps/translate/translation/InputPanel;->setTextAndDoTranslate(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v5

    sget-object v6, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->CHIPVIEW_TRG_TRANSLATE_CLICKS:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    invoke-virtual {v5, v6, v4}, Lcom/google/android/apps/translate/UserActivityMgr;->incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;

    goto :goto_32

    .line 836
    .end local v2           #inputText:Ljava/lang/String;
    :cond_73
    sget v6, Lcom/google/android/apps/translate/R$id;->context_menu_copy_input_text:I

    if-ne v1, v6, :cond_90

    .line 837
    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v6}, Lcom/google/android/apps/translate/translation/TranslateEntry;->toNewEntry()Lcom/google/android/apps/translate/history/Entry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->INPUT_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-static {v5, v6, v7}, Lcom/google/android/apps/translate/Util;->copyToClipBoard(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    .line 839
    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/google/android/apps/translate/R$string;->toast_message_copy_input_text:I

    invoke-static {v5, v6}, Lcom/google/android/apps/translate/Util;->showShortToastMessage(Landroid/app/Activity;I)V

    goto :goto_32

    .line 841
    :cond_90
    sget v6, Lcom/google/android/apps/translate/R$id;->context_menu_copy:I

    if-ne v1, v6, :cond_b2

    .line 842
    new-instance v3, Lcom/google/android/apps/translate/Translate$TranslateResult;

    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v5}, Lcom/google/android/apps/translate/translation/TranslateEntry;->toNewEntry()Lcom/google/android/apps/translate/history/Entry;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/apps/translate/Translate$TranslateResult;-><init>(Lcom/google/android/apps/translate/history/Entry;)V

    .line 844
    .local v3, results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getTranslateText()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->TRANSLATION_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-static {v5, v6, v7}, Lcom/google/android/apps/translate/Util;->copyToClipBoard(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    .line 845
    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    sget v6, Lcom/google/android/apps/translate/R$string;->toast_message_copy:I

    invoke-static {v5, v6}, Lcom/google/android/apps/translate/Util;->showShortToastMessage(Landroid/app/Activity;I)V

    goto :goto_32

    .line 847
    .end local v3           #results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    :cond_b2
    sget v6, Lcom/google/android/apps/translate/R$id;->context_menu_share:I

    if-ne v1, v6, :cond_da

    .line 848
    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v5}, Lcom/google/android/apps/translate/translation/TranslateEntry;->toNewEntry()Lcom/google/android/apps/translate/history/Entry;

    move-result-object v0

    .line 849
    .local v0, entry:Lcom/google/android/apps/translate/history/Entry;
    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v5, :cond_cf

    .line 850
    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v7, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v7}, Lcom/google/android/apps/translate/translation/InputPanel;->getSelectedChipView()Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    move-result-object v7

    invoke-static {v5, v6, v0, v7}, Lcom/google/android/apps/translate/translation/TranslateHelper;->performChipActionShare(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/history/Entry;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    goto/16 :goto_32

    .line 853
    :cond_cf
    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    sget-object v7, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->NONE:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-static {v5, v6, v0, v7}, Lcom/google/android/apps/translate/translation/TranslateHelper;->performChipActionShare(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Lcom/google/android/apps/translate/history/Entry;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    goto/16 :goto_32

    .line 857
    .end local v0           #entry:Lcom/google/android/apps/translate/history/Entry;
    :cond_da
    sget v6, Lcom/google/android/apps/translate/R$id;->context_menu_search_input_text:I

    if-ne v1, v6, :cond_f1

    .line 858
    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v5}, Lcom/google/android/apps/translate/translation/TranslateEntry;->toNewEntry()Lcom/google/android/apps/translate/history/Entry;

    move-result-object v0

    .line 859
    .restart local v0       #entry:Lcom/google/android/apps/translate/history/Entry;
    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->INPUT_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-static {v5, v6, v7}, Lcom/google/android/apps/translate/Util;->searchTextOnWeb(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    goto/16 :goto_32

    .line 861
    .end local v0           #entry:Lcom/google/android/apps/translate/history/Entry;
    :cond_f1
    sget v6, Lcom/google/android/apps/translate/R$id;->context_menu_search_translation:I

    if-ne v1, v6, :cond_113

    .line 862
    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v5}, Lcom/google/android/apps/translate/translation/TranslateEntry;->toNewEntry()Lcom/google/android/apps/translate/history/Entry;

    move-result-object v0

    .line 863
    .restart local v0       #entry:Lcom/google/android/apps/translate/history/Entry;
    new-instance v3, Lcom/google/android/apps/translate/Translate$TranslateResult;

    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v5}, Lcom/google/android/apps/translate/translation/TranslateEntry;->toNewEntry()Lcom/google/android/apps/translate/history/Entry;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/google/android/apps/translate/Translate$TranslateResult;-><init>(Lcom/google/android/apps/translate/history/Entry;)V

    .line 865
    .restart local v3       #results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/Translate$TranslateResult;->getTranslateText()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->TRANSLATION_TEXT:Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    invoke-static {v5, v6, v7}, Lcom/google/android/apps/translate/Util;->searchTextOnWeb(Landroid/app/Activity;Ljava/lang/String;Lcom/google/android/apps/translate/translation/ChipView$ChipPart;)V

    goto/16 :goto_32

    .end local v0           #entry:Lcom/google/android/apps/translate/history/Entry;
    .end local v3           #results:Lcom/google/android/apps/translate/Translate$TranslateResult;
    :cond_113
    move v4, v5

    .line 868
    goto/16 :goto_32
.end method

.method public onCreate(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Landroid/view/View;Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;)V
    .registers 11
    .parameter "activity"
    .parameter "languages"
    .parameter "view"
    .parameter "translateFragmentWrapper"

    .prologue
    .line 74
    const-string v0, "TranslateHelper"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->onCreate(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;)V

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 77
    iput-object p2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    .line 78
    iput-object p3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mTranslatePanel:Landroid/view/View;

    .line 79
    iput-object p4, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mTranslateFragmentWrapper:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    if-nez v0, :cond_2a

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->readIntentData(Landroid/app/Activity;Landroid/content/Intent;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    .line 87
    :cond_2a
    new-instance v0, Lcom/google/android/apps/translate/translation/InputPanel;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mTranslatePanel:Landroid/view/View;

    iget-object v5, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mTranslateFragmentWrapper:Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/translate/translation/InputPanel;-><init>(Landroid/app/Activity;Lcom/google/android/apps/translate/Languages;Landroid/view/View;Lcom/google/android/apps/translate/translation/TranslateHelper;Lcom/google/android/apps/translate/translation/TranslateFragmentWrapper;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    .line 97
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/TranslateApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/TranslateApplication;->resetAppCsiTimer()V

    .line 98
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 910
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    sget v2, Lcom/google/android/apps/translate/R$menu;->history_activity_context_menu:I

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 911
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    if-eqz v1, :cond_2a

    .line 912
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/translation/TranslateEntry;->toNewEntry()Lcom/google/android/apps/translate/history/Entry;

    move-result-object v0

    .line 913
    .local v0, entry:Lcom/google/android/apps/translate/history/Entry;
    sget-object v1, Lcom/google/android/apps/translate/translation/TranslateHelper$6;->$SwitchMap$com$google$android$apps$translate$translation$ChipView$ChipPart:[I

    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/translation/InputPanel;->getSelectedChipView()Lcom/google/android/apps/translate/translation/ChipView$ChipPart;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/translate/translation/ChipView$ChipPart;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_64

    .line 932
    .end local v0           #entry:Lcom/google/android/apps/translate/history/Entry;
    :cond_2a
    :goto_2a
    return-void

    .line 915
    .restart local v0       #entry:Lcom/google/android/apps/translate/history/Entry;
    :pswitch_2b
    sget v1, Lcom/google/android/apps/translate/R$id;->context_menu_translate_translation:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 916
    sget v1, Lcom/google/android/apps/translate/R$id;->context_menu_remove:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 917
    sget v1, Lcom/google/android/apps/translate/R$id;->context_menu_copy:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 918
    sget v1, Lcom/google/android/apps/translate/R$id;->context_menu_search_translation:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 919
    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getInputText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_2a

    .line 922
    :pswitch_47
    sget v1, Lcom/google/android/apps/translate/R$id;->context_menu_translate_input_text:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 923
    sget v1, Lcom/google/android/apps/translate/R$id;->context_menu_remove:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 924
    sget v1, Lcom/google/android/apps/translate/R$id;->context_menu_copy_input_text:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 925
    sget v1, Lcom/google/android/apps/translate/R$id;->context_menu_search_input_text:I

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 926
    invoke-virtual {v0}, Lcom/google/android/apps/translate/history/Entry;->getTranslation()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_2a

    .line 913
    nop

    :pswitch_data_64
    .packed-switch 0x2
        :pswitch_2b
        :pswitch_47
    .end packed-switch
.end method

.method onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 338
    const-string v0, "TranslateHelper"

    const-string v1, "onCreateOptionsMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    sget v0, Lcom/google/android/apps/translate/R$menu;->translate_activity_menu:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 343
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->useFragments()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 345
    sget v0, Lcom/google/android/apps/translate/R$id;->menu_conversation_mode:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 346
    sget v0, Lcom/google/android/apps/translate/R$id;->menu_history:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 347
    sget v0, Lcom/google/android/apps/translate/R$id;->menu_favorite:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 349
    :cond_32
    sget v0, Lcom/google/android/apps/translate/R$id;->menu_sms_translation:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/apps/translate/Util;->hasSmsSupport(Landroid/content/Context;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 351
    return v2
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 331
    const-string v0, "TranslateHelper"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v0, :cond_10

    .line 333
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->onDestroy()V

    .line 335
    :cond_10
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 959
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/apps/translate/translation/InputPanel;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_10

    move v0, v1

    .line 983
    :cond_f
    :goto_f
    return v0

    .line 962
    :cond_10
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/apps/translate/Util;->isFloatingActivity(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move v0, v2

    .line 965
    goto :goto_f

    .line 967
    :cond_1a
    const/4 v3, 0x4

    if-ne p1, v3, :cond_47

    .line 968
    const-string v3, "TranslateHelper"

    const-string v4, "onKeyPreIme KEYCODE_BACK"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const/4 v0, 0x0

    .line 972
    .local v0, isCleared:Z
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->hasCurrentTranslation()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 973
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v2, v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->setTranslateEntry(Lcom/google/android/apps/translate/translation/TranslateEntry;ZZZ)V

    .line 974
    const/4 v0, 0x1

    .line 977
    :cond_30
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/translation/InputPanel;->getInputText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 978
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/translation/InputPanel;->clearInputText()V

    .line 979
    const/4 v0, 0x1

    goto :goto_f

    .end local v0           #isCleared:Z
    :cond_47
    move v0, v2

    .line 983
    goto :goto_f
.end method

.method public onLanguagesChanged()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 745
    const-string v3, "TranslateHelper"

    const-string v4, "onLanguagesChanged"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    if-nez v3, :cond_15

    .line 747
    const-string v3, "TranslateHelper"

    const-string v4, "onLanguagesChanged not changed!"

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    :cond_14
    :goto_14
    return-void

    .line 753
    :cond_15
    invoke-static {}, Lcom/google/android/apps/translate/LanguagesFactory;->get()Lcom/google/android/apps/translate/LanguagesFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/android/apps/translate/LanguagesFactory;->getLanguages(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/android/apps/translate/Languages;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    .line 756
    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->hasCurrentTranslation()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 758
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v4, v4, Lcom/google/android/apps/translate/translation/TranslateEntry;->fromLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 760
    .local v0, newFrom:Lcom/google/android/apps/translate/Language;
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    iget-object v4, v4, Lcom/google/android/apps/translate/translation/TranslateEntry;->toLanguage:Lcom/google/android/apps/translate/Language;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/translate/Languages;->getFromLanguageByShortName(Ljava/lang/String;)Lcom/google/android/apps/translate/Language;

    move-result-object v1

    .line 772
    .local v1, newTo:Lcom/google/android/apps/translate/Language;
    :goto_47
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v3, :cond_14

    .line 773
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v3, v4}, Lcom/google/android/apps/translate/translation/InputPanel;->setLanguageList(Lcom/google/android/apps/translate/Languages;)V

    .line 775
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v3, v0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->setLanguagePair(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V

    goto :goto_14

    .line 763
    .end local v0           #newFrom:Lcom/google/android/apps/translate/Language;
    .end local v1           #newTo:Lcom/google/android/apps/translate/Language;
    :cond_58
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Profile;->getLanguagePair(Landroid/content/Context;Lcom/google/android/apps/translate/Languages;)[Lcom/google/android/apps/translate/Language;

    move-result-object v2

    .line 764
    .local v2, pair:[Lcom/google/android/apps/translate/Language;
    aget-object v3, v2, v6

    if-eqz v3, :cond_6d

    aget-object v3, v2, v7

    if-eqz v3, :cond_6d

    .line 765
    aget-object v0, v2, v6

    .line 766
    .restart local v0       #newFrom:Lcom/google/android/apps/translate/Language;
    aget-object v1, v2, v7

    .restart local v1       #newTo:Lcom/google/android/apps/translate/Language;
    goto :goto_47

    .line 768
    .end local v0           #newFrom:Lcom/google/android/apps/translate/Language;
    .end local v1           #newTo:Lcom/google/android/apps/translate/Language;
    :cond_6d
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/Languages;->getDefaultFromLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v0

    .line 769
    .restart local v0       #newFrom:Lcom/google/android/apps/translate/Language;
    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v3}, Lcom/google/android/apps/translate/Languages;->getDefaultToLanguage()Lcom/google/android/apps/translate/Language;

    move-result-object v1

    .restart local v1       #newTo:Lcom/google/android/apps/translate/Language;
    goto :goto_47
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 5
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 101
    const-string v0, "TranslateHelper"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-static {v0, p1, v1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->readIntentData(Landroid/app/Activity;Landroid/content/Intent;Lcom/google/android/apps/translate/Languages;)Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/google/android/apps/translate/translation/TranslateHelper;->setTranslateEntry(Lcom/google/android/apps/translate/translation/TranslateEntry;ZZZ)V

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 104
    return-void
.end method

.method onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 8
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 363
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 364
    .local v0, id:I
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_history:I

    if-ne v0, v2, :cond_f

    .line 365
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/apps/translate/Util;->openHistoryActivity(Landroid/app/Activity;)V

    .line 385
    :goto_e
    return v1

    .line 367
    :cond_f
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_favorite:I

    if-ne v0, v2, :cond_19

    .line 368
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/apps/translate/Util;->openFavoriteActivity(Landroid/app/Activity;)V

    goto :goto_e

    .line 370
    :cond_19
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_conversation_mode:I

    if-ne v0, v2, :cond_27

    .line 371
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->getInitialTranslationEntry()Lcom/google/android/apps/translate/translation/TranslateEntry;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Util;->openConversationActivity(Landroid/app/Activity;Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    goto :goto_e

    .line 373
    :cond_27
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_sms_translation:I

    if-ne v0, v2, :cond_32

    .line 374
    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/apps/translate/Util;->openSmsTranslationActivity(Landroid/app/Activity;)V

    .line 385
    :cond_30
    const/4 v1, 0x0

    goto :goto_e

    .line 375
    :cond_32
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_feedback:I

    if-ne v0, v2, :cond_40

    .line 376
    invoke-static {}, Lcom/google/android/apps/translate/SdkVersionWrapper;->getWrapper()Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/apps/translate/SdkVersionWrapper$WrapperBase;->sendFeedback(Landroid/app/Activity;Z)V

    goto :goto_e

    .line 378
    :cond_40
    sget v2, Lcom/google/android/apps/translate/R$id;->menu_settings:I

    if-ne v0, v2, :cond_53

    .line 379
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/google/android/apps/translate/SettingsActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    .line 381
    :cond_53
    const v2, 0x102002c

    if-ne v0, v2, :cond_30

    .line 382
    iget-object v2, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/apps/translate/Util;->openHomeActivity(Landroid/app/Activity;)V

    goto :goto_e
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 698
    invoke-super {p0}, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->onPause()V

    .line 699
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v0, :cond_c

    .line 700
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->onPause()V

    .line 702
    :cond_c
    return-void
.end method

.method onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4
    .parameter "menu"

    .prologue
    .line 355
    const-string v0, "TranslateHelper"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 689
    const-string v0, "TranslateHelper"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-super {p0}, Lcom/google/android/apps/translate/translation/BaseTranslateHelper;->onResume()V

    .line 691
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v0, :cond_15

    .line 692
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->onResume(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 694
    :cond_15
    return-void
.end method

.method public onStart()V
    .registers 2

    .prologue
    .line 108
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/translate/Translate;->setAcceptLanguage(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    if-eqz v0, :cond_14

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/translation/InputPanel;->onStart()V

    .line 112
    :cond_14
    return-void
.end method

.method public onTranslationDone(Lcom/google/android/apps/translate/translation/TranslateEntry;Z)V
    .registers 6
    .parameter "translateEntry"
    .parameter "isFavorite"

    .prologue
    .line 805
    const-string v0, "TranslateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTranslationDone input_text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/apps/translate/translation/TranslateEntry;->inputText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-virtual {p0, p1}, Lcom/google/android/apps/translate/translation/TranslateHelper;->setCurrentTranslation(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 807
    return-void
.end method

.method public setCurrentTranslation(Lcom/google/android/apps/translate/translation/TranslateEntry;)V
    .registers 5
    .parameter "translateEntry"

    .prologue
    const/4 v2, 0x0

    .line 623
    const-string v0, "TranslateHelper"

    const-string v1, "setCurrentTranslation"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v2, v2, v0}, Lcom/google/android/apps/translate/translation/TranslateHelper;->setTranslateEntry(Lcom/google/android/apps/translate/translation/TranslateEntry;ZZZ)V

    .line 625
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    iget-object v1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/translate/translation/InputPanel;->setTranslationResult(Lcom/google/android/apps/translate/translation/TranslateEntry;)V

    .line 626
    return-void
.end method

.method setInputPanel(ZZ)V
    .registers 5
    .parameter "doTranslate"
    .parameter "setInputText"

    .prologue
    .line 629
    const-string v0, "TranslateHelper"

    const-string v1, "setInputPanel"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/apps/translate/translation/TranslateHelper$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/apps/translate/translation/TranslateHelper$5;-><init>(Lcom/google/android/apps/translate/translation/TranslateHelper;ZZ)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 665
    return-void
.end method

.method public setLanguageList(Lcom/google/android/apps/translate/Languages;)V
    .registers 3
    .parameter "languages"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/InputPanel;->setLanguageList(Lcom/google/android/apps/translate/Languages;)V

    .line 734
    return-void
.end method

.method public setTextAndDoTranslate(Ljava/lang/String;)V
    .registers 3
    .parameter "inputText"

    .prologue
    .line 783
    iget-object v0, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mInputPanel:Lcom/google/android/apps/translate/translation/InputPanel;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/translation/InputPanel;->setTextAndDoTranslate(Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method declared-synchronized setTranslateEntry(Lcom/google/android/apps/translate/translation/TranslateEntry;ZZZ)V
    .registers 6
    .parameter "translateEntry"
    .parameter "updateInputPanel"
    .parameter "doTranslate"
    .parameter "setInputText"

    .prologue
    .line 940
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/apps/translate/translation/TranslateHelper;->mCurrentTranslation:Lcom/google/android/apps/translate/translation/TranslateEntry;

    .line 941
    if-eqz p2, :cond_8

    .line 942
    invoke-virtual {p0, p3, p4}, Lcom/google/android/apps/translate/translation/TranslateHelper;->setInputPanel(ZZ)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 944
    :cond_8
    monitor-exit p0

    return-void

    .line 940
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
