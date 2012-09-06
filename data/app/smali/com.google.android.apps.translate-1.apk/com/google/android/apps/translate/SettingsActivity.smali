.class public Lcom/google/android/apps/translate/SettingsActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingsActivity.java"


# static fields
.field private static final LANGUAGE_PREFIX:Ljava/lang/String; = "lang_"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.translate"

.field private static final STRING_TYPE:Ljava/lang/String; = "string"

.field public static final SUPPORT_VOICE_LANG_PREF:Z = true

.field private static final TAG:Ljava/lang/String; = "SettingsActivity"


# instance fields
.field mLanguageList:Lcom/google/android/apps/translate/Languages;

.field private final mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

.field mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 50
    new-instance v0, Lcom/google/android/apps/translate/SettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/SettingsActivity$1;-><init>(Lcom/google/android/apps/translate/SettingsActivity;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/SettingsActivity;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/translate/SettingsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/translate/SettingsActivity;->refreshLanguageList()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/SettingsActivity;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/SettingsActivity;->showVoiceInputLanguagesListDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/SettingsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/translate/SettingsActivity;->setupVoiceInputPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/SettingsActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/google/android/apps/translate/SettingsActivity;->openAboutDialog()V

    return-void
.end method

.method private getVoiceInputLangaugesFromStrings(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, voiceInputLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 189
    .local v3, languages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    .local v2, languageString:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/apps/translate/SettingsActivity;->getVoiceInputLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, langName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 195
    new-instance v4, Lcom/google/android/apps/translate/Language;

    invoke-direct {v4, v2, v1}, Lcom/google/android/apps/translate/Language;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 197
    .end local v1           #langName:Ljava/lang/String;
    .end local v2           #languageString:Ljava/lang/String;
    :cond_27
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 198
    return-object v3
.end method

.method private getVoiceInputLanguageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "shortName"

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/SettingsActivity;->getVoiceInputLanguageNameFromResourceFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, langName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 233
    .end local v0           #langName:Ljava/lang/String;
    :goto_a
    return-object v0

    .line 219
    .restart local v0       #langName:Ljava/lang/String;
    :cond_b
    invoke-static {p1}, Lcom/google/android/apps/translate/VoiceInputHelper;->isDogfoodVoiceInputLanguage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 220
    invoke-static {p1}, Lcom/google/android/apps/translate/VoiceInputHelper;->getVoiceInputLanguageNameFromDogfoodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, nonDogfoodLang:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/apps/translate/SettingsActivity;->getVoiceInputLanguageNameFromResourceFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, langNameToBePublic:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_3d
    move-object v0, p1

    .line 229
    goto :goto_a

    .line 232
    .end local v1           #langNameToBePublic:Ljava/lang/String;
    .end local v2           #nonDogfoodLang:Ljava/lang/String;
    :cond_3f
    const-string v3, "SettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized voice input language: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, ""

    goto :goto_a
.end method

.method private getVoiceInputLanguageNameFromResourceFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "shortName"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/translate/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 205
    .local v2, resources:Landroid/content/res/Resources;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lang_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    const-string v6, "_"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, resName:Ljava/lang/String;
    const-string v3, "string"

    const-string v4, "com.google.android.apps.translate"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 207
    .local v0, resId:I
    if-eqz v0, :cond_32

    .line 208
    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    :goto_31
    return-object v3

    :cond_32
    const-string v3, ""

    goto :goto_31
.end method

.method private openAboutDialog()V
    .registers 8

    .prologue
    .line 310
    sget v3, Lcom/google/android/apps/translate/R$string;->about_info:I

    invoke-virtual {p0, v3}, Lcom/google/android/apps/translate/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->getVersionCode(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, aboutInfoText:Ljava/lang/String;
    sget v3, Lcom/google/android/apps/translate/R$layout;->about:I

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 318
    .local v1, aboutView:Landroid/view/View;
    sget v3, Lcom/google/android/apps/translate/R$id;->about_info:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    sget v3, Lcom/google/android/apps/translate/R$id;->feedback:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 323
    .local v2, feedback:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<u>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/google/android/apps/translate/R$string;->label_send_feedback:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</u>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    new-instance v3, Lcom/google/android/apps/translate/SettingsActivity$7;

    invoke-direct {v3, p0}, Lcom/google/android/apps/translate/SettingsActivity$7;-><init>(Lcom/google/android/apps/translate/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    sget v3, Lcom/google/android/apps/translate/R$id;->tos_link:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 340
    sget v3, Lcom/google/android/apps/translate/R$id;->privacy_link:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 344
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/google/android/apps/translate/R$string;->app_name:I

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    sget v4, Lcom/google/android/apps/translate/R$drawable;->icon:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcom/google/android/apps/translate/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/google/android/apps/translate/SettingsActivity$8;

    invoke-direct {v5, p0}, Lcom/google/android/apps/translate/SettingsActivity$8;-><init>(Lcom/google/android/apps/translate/SettingsActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 357
    return-void
.end method

.method private openOfflineModelManagement()V
    .registers 3

    .prologue
    .line 305
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/apps/translate/offline/ModelManagementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 306
    return-void
.end method

.method private refreshLanguageList()V
    .registers 2

    .prologue
    .line 360
    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->getLanguageListFromProfile(Landroid/content/Context;)Lcom/google/android/apps/translate/Languages;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/SettingsActivity;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    .line 361
    return-void
.end method

.method private setVoiceInputLanguageChecked(Landroid/widget/ListView;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .parameter "listView"
    .parameter
    .parameter "preference"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 255
    .local p2, voiceInputLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 256
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_21

    .line 257
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translate/Language;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    if-eq v2, v0, :cond_22

    .line 259
    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 263
    :cond_21
    return-void

    .line 256
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private setVoiceInputLanguageOnClickListener(Landroid/app/Dialog;Landroid/widget/ListView;Ljava/lang/String;)V
    .registers 5
    .parameter "dialog"
    .parameter "listView"
    .parameter "language"

    .prologue
    .line 267
    new-instance v0, Lcom/google/android/apps/translate/SettingsActivity$4;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/google/android/apps/translate/SettingsActivity$4;-><init>(Lcom/google/android/apps/translate/SettingsActivity;Ljava/lang/String;Landroid/widget/ListView;Landroid/app/Dialog;)V

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 278
    return-void
.end method

.method private setVoiceInputLanguagesListView(Landroid/widget/ListView;Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .parameter "listView"
    .parameter "language"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ListView;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/Language;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p3, voiceInputLanguages:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v2, Lcom/google/android/apps/translate/R$layout;->voice_input_language:I

    sget v3, Lcom/google/android/apps/translate/R$id;->text_language_name:I

    invoke-direct {v0, p0, v2, v3, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 242
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Lcom/google/android/apps/translate/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 244
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 247
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 248
    invoke-static {p0, p2}, Lcom/google/android/apps/translate/Profile;->getVoiceInputLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, preference:Ljava/lang/String;
    invoke-direct {p0, p1, p3, v1}, Lcom/google/android/apps/translate/SettingsActivity;->setVoiceInputLanguageChecked(Landroid/widget/ListView;Ljava/util/List;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method private setupPreferenceListeners()V
    .registers 3

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/google/android/apps/translate/SettingsActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    sget v1, Lcom/google/android/apps/translate/R$string;->key_settings_about:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/translate/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/translate/SettingsActivity$5;

    invoke-direct {v1, p0}, Lcom/google/android/apps/translate/SettingsActivity$5;-><init>(Lcom/google/android/apps/translate/SettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 302
    return-void
.end method

.method private setupVoiceInputPreferences()V
    .registers 11

    .prologue
    .line 102
    sget v8, Lcom/google/android/apps/translate/R$string;->key_settings_voice_input:I

    invoke-virtual {p0, v8}, Lcom/google/android/apps/translate/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/google/android/apps/translate/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 104
    .local v7, voiceInputSettings:Landroid/preference/PreferenceGroup;
    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 105
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 106
    .local v2, localeSettings:Landroid/preference/PreferenceCategory;
    sget v8, Lcom/google/android/apps/translate/R$string;->title_voice_input_locale_settings:I

    invoke-virtual {p0, v8}, Lcom/google/android/apps/translate/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 109
    iget-object v8, p0, Lcom/google/android/apps/translate/SettingsActivity;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    iget-object v9, p0, Lcom/google/android/apps/translate/SettingsActivity;->mLanguageList:Lcom/google/android/apps/translate/Languages;

    invoke-virtual {v8, v9}, Lcom/google/android/apps/translate/VoiceInputHelper;->getTranslateLanguageList(Lcom/google/android/apps/translate/Languages;)Ljava/util/List;

    move-result-object v5

    .line 110
    .local v5, transLangs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/apps/translate/Language;>;"
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 111
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2f
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/translate/Language;

    .line 112
    .local v4, transLang:Lcom/google/android/apps/translate/Language;
    iget-object v8, p0, Lcom/google/android/apps/translate/SettingsActivity;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    invoke-virtual {v4}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/apps/translate/VoiceInputHelper;->getVoiceInputLanguageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 115
    .local v6, voiceInputLangs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_2f

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_2f

    iget-object v8, p0, Lcom/google/android/apps/translate/SettingsActivity;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    invoke-virtual {v8, v4}, Lcom/google/android/apps/translate/VoiceInputHelper;->isVoiceInputAvailable(Lcom/google/android/apps/translate/Language;)Z

    move-result v8

    if-eqz v8, :cond_2f

    .line 118
    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 119
    .local v3, preference:Landroid/preference/Preference;
    invoke-virtual {v4}, Lcom/google/android/apps/translate/Language;->getLongName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v4}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 121
    new-instance v8, Lcom/google/android/apps/translate/SettingsActivity$2;

    invoke-direct {v8, p0}, Lcom/google/android/apps/translate/SettingsActivity$2;-><init>(Lcom/google/android/apps/translate/SettingsActivity;)V

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 129
    invoke-virtual {v4}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/google/android/apps/translate/Profile;->getVoiceInputLanguage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, current:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8c

    .line 132
    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/SettingsActivity;->getVoiceInputLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 137
    :goto_88
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2f

    .line 134
    :cond_8c
    sget v8, Lcom/google/android/apps/translate/R$string;->summary_voice_input_locale_default:I

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_88

    .line 142
    .end local v0           #current:Ljava/lang/String;
    .end local v3           #preference:Landroid/preference/Preference;
    .end local v4           #transLang:Lcom/google/android/apps/translate/Language;
    .end local v6           #voiceInputLangs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_92
    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    if-nez v8, :cond_9c

    .line 143
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 145
    :cond_9c
    return-void
.end method

.method private showVoiceInputLanguagesListDialog(Ljava/lang/String;)V
    .registers 9
    .parameter "language"

    .prologue
    .line 153
    iget-object v4, p0, Lcom/google/android/apps/translate/SettingsActivity;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    invoke-virtual {v4, p1}, Lcom/google/android/apps/translate/VoiceInputHelper;->getVoiceInputLanguageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 157
    .local v3, voiceInputLanguages:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_10

    .line 184
    :cond_f
    :goto_f
    return-void

    .line 163
    :cond_10
    sget v4, Lcom/google/android/apps/translate/R$layout;->change_languages:I

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 164
    .local v1, dialogView:Landroid/view/View;
    sget v4, Lcom/google/android/apps/translate/R$id;->voice_input_languages:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 165
    .local v2, langListView:Landroid/widget/ListView;
    invoke-direct {p0, v3}, Lcom/google/android/apps/translate/SettingsActivity;->getVoiceInputLangaugesFromStrings(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v2, p1, v4}, Lcom/google/android/apps/translate/SettingsActivity;->setVoiceInputLanguagesListView(Landroid/widget/ListView;Ljava/lang/String;Ljava/util/List;)V

    .line 169
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget v5, Lcom/google/android/apps/translate/R$string;->title_voice_input_languages:I

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x108009b

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    new-instance v6, Lcom/google/android/apps/translate/SettingsActivity$3;

    invoke-direct {v6, p0}, Lcom/google/android/apps/translate/SettingsActivity$3;-><init>(Lcom/google/android/apps/translate/SettingsActivity;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 182
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-direct {p0, v0, v2, p1}, Lcom/google/android/apps/translate/SettingsActivity;->setVoiceInputLanguageOnClickListener(Landroid/app/Dialog;Landroid/widget/ListView;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_f
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/translate/SettingsActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/translate/TranslateApplication;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/TranslateApplication;->getVoiceInputHelper()Lcom/google/android/apps/translate/VoiceInputHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/translate/SettingsActivity;->mVoiceInputHelper:Lcom/google/android/apps/translate/VoiceInputHelper;

    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/translate/SettingsActivity;->refreshLanguageList()V

    .line 62
    invoke-static {p0}, Lcom/google/android/apps/translate/TranslateBaseActivity;->beforeSetContentView(Landroid/app/Activity;)V

    .line 63
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget v2, Lcom/google/android/apps/translate/R$xml;->settings_activity:I

    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/SettingsActivity;->addPreferencesFromResource(I)V

    .line 65
    invoke-static {p0}, Lcom/google/android/apps/translate/TranslateBaseActivity;->afterSetContentView(Landroid/app/Activity;)V

    .line 69
    const-string v2, "key_root_settings"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 70
    .local v0, mainPref:Landroid/preference/PreferenceScreen;
    const-string v2, "key_offline_translate_settings"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 71
    .local v1, pref:Landroid/preference/Preference;
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 75
    invoke-static {p0}, Lcom/google/android/apps/translate/Profile;->isCameraSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 76
    const-string v2, "key_title_settings"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .end local v0           #mainPref:Landroid/preference/PreferenceScreen;
    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 77
    .local v0, mainPref:Landroid/preference/PreferenceCategory;
    const-string v2, "key_enable_camera_logging"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/translate/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 82
    .end local v0           #mainPref:Landroid/preference/PreferenceCategory;
    :cond_45
    invoke-direct {p0}, Lcom/google/android/apps/translate/SettingsActivity;->setupVoiceInputPreferences()V

    .line 90
    invoke-direct {p0}, Lcom/google/android/apps/translate/SettingsActivity;->setupPreferenceListeners()V

    .line 91
    iget-object v2, p0, Lcom/google/android/apps/translate/SettingsActivity;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.google.android.apps.translate.broadcast.LANGUAGES_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/translate/SettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/apps/translate/SettingsActivity;->mOnLanguagesChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/translate/SettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 99
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 365
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 371
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 367
    :pswitch_c
    invoke-static {p0}, Lcom/google/android/apps/translate/Util;->openHomeActivity(Landroid/app/Activity;)V

    .line 368
    const/4 v0, 0x1

    goto :goto_b

    .line 365
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method
