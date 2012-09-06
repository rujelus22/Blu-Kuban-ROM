.class public Lcom/google/android/apps/translate/offline/ProfilesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ProfilesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/offline/ProfilesAdapter$1;,
        Lcom/google/android/apps/translate/offline/ProfilesAdapter$DeleteTask;,
        Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final KEY_OFFLINE_COMMON_PREFIX:Ljava/lang/String; = "key_offline_common_"

.field public static final KEY_OFFLINE_LANGPAIR_MODEL_PREFIX:Ljava/lang/String; = "key_offline_langpair_"

.field public static final KEY_OFFLINE_LANG_MODEL_PREFIX:Ljava/lang/String; = "key_offline_lang_"

.field public static final KEY_OFFLINE_SUFFIX_SEPARATOR:Ljava/lang/String; = "."

.field public static final KEY_OFFLINE_VERSION:Ljava/lang/String; = "key_offline_version"

.field private static final TAG:Ljava/lang/String; = "ProfilesAdapter"


# instance fields
.field private commonProfile:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

.field private final languagePairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;",
            ">;"
        }
    .end annotation
.end field

.field private languageProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;",
            ">;"
        }
    .end annotation
.end field

.field private localProfiles:Landroid/content/SharedPreferences;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private final usbMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Landroid/content/SharedPreferences;Z)V
    .registers 7
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .parameter "localProfiles"
    .parameter "usbMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p3, items:Ljava/util/List;,"Ljava/util/List<Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->progressDialog:Landroid/app/ProgressDialog;

    .line 43
    invoke-static {}, Lcom/google/android/apps/translate/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->languageProfileMap:Ljava/util/Map;

    .line 61
    iput-object p3, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->languagePairs:Ljava/util/List;

    .line 62
    iput-object p4, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->localProfiles:Landroid/content/SharedPreferences;

    .line 63
    iput-boolean p5, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->usbMode:Z

    .line 64
    return-void
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/offline/ProfilesAdapter;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/apps/translate/offline/ProfilesAdapter;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->progressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/android/apps/translate/offline/ProfilesAdapter;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->languagePairs:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/apps/translate/offline/ProfilesAdapter;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->usbMode:Z

    return v0
.end method

.method static synthetic access$500(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->setLocalLanguagePairModel(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/translate/offline/ProfilesAdapter;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->fetchModels(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->removeLocalModel(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V

    return-void
.end method

.method private fetchCommonFiles()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->localProfiles:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->commonProfile:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->hasLocalCommonFiles(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 276
    :goto_a
    return-void

    .line 268
    :cond_b
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->commonProfile:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    invoke-virtual {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalConfigFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/offline/ModelDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 271
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->commonProfile:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    invoke-virtual {v0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->getPreprocFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalPreprocFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/offline/ModelDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->localProfiles:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->commonProfile:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->setLocalCommonFiles(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)V

    .line 275
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->localProfiles:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->commonProfile:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    invoke-virtual {v1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->getVersion()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->setLocalVersion(Landroid/content/SharedPreferences;I)V

    goto :goto_a
.end method

.method private fetchLanguageModels(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)V
    .registers 5
    .parameter "langProf"

    .prologue
    .line 279
    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->localProfiles:Landroid/content/SharedPreferences;

    invoke-static {v1, p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->hasLocalLanguageModel(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 291
    :goto_8
    return-void

    .line 282
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->getLangCode()Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, langCode:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->getLmFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalLmFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/offline/ModelDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 286
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->getLmSymbolFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->getLangCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalLmSymbolFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/offline/ModelDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 290
    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->localProfiles:Landroid/content/SharedPreferences;

    invoke-static {v1, p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->setLocalLanguageModel(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)V

    goto :goto_8
.end method

.method private fetchLanguagePairModels(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V
    .registers 6
    .parameter "langPairProf"

    .prologue
    .line 294
    iget-object v2, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->localProfiles:Landroid/content/SharedPreferences;

    invoke-static {v2, p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->hasLocalLanguagePairModel(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 310
    :goto_8
    return-void

    .line 297
    :cond_9
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getFromLangCode()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, from:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getToLangCode()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, to:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getConfigFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalConfigFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/offline/ModelDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 302
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getTmFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalTmFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/offline/ModelDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 305
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getPtSymbolFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/offline/LocalFileNameUtil;->getLocalPtSymbolFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/offline/ModelDownloader;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 309
    iget-object v2, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->localProfiles:Landroid/content/SharedPreferences;

    invoke-static {v2, p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->setLocalLanguagePairModel(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V

    goto :goto_8
.end method

.method private fetchModels(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V
    .registers 6
    .parameter "langPairProf"

    .prologue
    .line 316
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->fetchCommonFiles()V

    .line 317
    iget-object v1, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->languageProfileMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getToLangCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;

    invoke-direct {p0, v1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->fetchLanguageModels(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)V

    .line 318
    invoke-direct {p0, p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->fetchLanguagePairModels(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 323
    :goto_15
    return-void

    .line 319
    :catch_16
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "modelFetcher"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-virtual {p0}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Download model failed"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_15
.end method

.method public static getCommonFilesKey(I)Ljava/lang/String;
    .registers 3
    .parameter "version"

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key_offline_common_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, key:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCommonFilesKey(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)Ljava/lang/String;
    .registers 3
    .parameter "commonProf"

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key_offline_common_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, key:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLanguageModelKey(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)Ljava/lang/String;
    .registers 3
    .parameter "langProf"

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->getVersion()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getLanguageModelKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguageModelKey(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .parameter "langCode"
    .parameter "version"

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key_offline_lang_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, key:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLanguagePairModelKey(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Ljava/lang/String;
    .registers 4
    .parameter "langPairProf"

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getFromLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getToLangCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getVersion()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getLanguagePairModelKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguagePairModelKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 5
    .parameter "fromLangCode"
    .parameter "toLangCode"
    .parameter "version"

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key_offline_lang_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, key:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 173
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLocalVersion(Landroid/content/SharedPreferences;)I
    .registers 3
    .parameter "profiles"

    .prologue
    .line 181
    const-string v0, "key_offline_version"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static hasLocalCommonFiles(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)Z
    .registers 4
    .parameter "profiles"
    .parameter "commonProf"

    .prologue
    .line 186
    invoke-static {p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getCommonFilesKey(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static hasLocalLanguageModel(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)Z
    .registers 4
    .parameter "profiles"
    .parameter "langProf"

    .prologue
    .line 196
    invoke-static {p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getLanguageModelKey(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static hasLocalLanguageModel(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z
    .registers 5
    .parameter "profiles"
    .parameter "langCode"
    .parameter "version"

    .prologue
    .line 191
    invoke-static {p1, p2}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getLanguageModelKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static hasLocalLanguagePairModel(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Z
    .registers 4
    .parameter "profiles"
    .parameter "langPairProf"

    .prologue
    .line 201
    invoke-static {p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getLanguagePairModelKey(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static hasLocalModelFiles(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .parameter "profiles"
    .parameter "from"
    .parameter "to"

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-static {p0}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getLocalVersion(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 207
    .local v0, version:I
    if-gez v0, :cond_20

    .line 208
    const-string v2, "ProfilesAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version negative version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :goto_1f
    return v1

    .line 211
    :cond_20
    invoke-static {p0, p2, v0}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->hasLocalLanguageModel(Landroid/content/SharedPreferences;Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_57

    .line 212
    const-string v2, "ProfilesAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasLocalLanguageModel to="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v2, "ProfilesAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasLocalLanguageModel version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 216
    :cond_57
    invoke-static {p1, p2, v0}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getLanguagePairModelKey(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_ab

    .line 217
    const-string v2, "ProfilesAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLanguagePairModelKey to="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v2, "ProfilesAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLanguagePairModelKey from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v2, "ProfilesAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLanguagePairModelKey version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 222
    :cond_ab
    const/4 v1, 0x1

    goto/16 :goto_1f
.end method

.method private static removeLocalModel(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V
    .registers 5
    .parameter "profiles"
    .parameter "langPairProf"

    .prologue
    .line 254
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getLanguagePairModelKey(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getToLangCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getLanguageModelKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 260
    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getVersion()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getCommonFilesKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    return-void
.end method

.method private static setLocalCommonFiles(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)V
    .registers 5
    .parameter "profiles"
    .parameter "commonProf"

    .prologue
    .line 227
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getCommonFilesKey(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 229
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 230
    return-void
.end method

.method private static setLocalLanguageModel(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)V
    .registers 5
    .parameter "profiles"
    .parameter "langProf"

    .prologue
    .line 234
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getLanguageModelKey(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    return-void
.end method

.method private static setLocalLanguagePairModel(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)V
    .registers 5
    .parameter "profiles"
    .parameter "langPairProf"

    .prologue
    .line 241
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 242
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getLanguagePairModelKey(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 244
    return-void
.end method

.method private static setLocalVersion(Landroid/content/SharedPreferences;I)V
    .registers 4
    .parameter "profiles"
    .parameter "version"

    .prologue
    .line 247
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 248
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "key_offline_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 249
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 250
    return-void
.end method


# virtual methods
.method public addLanguageProfile(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;)V
    .registers 4
    .parameter "langProf"

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->languageProfileMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguageProfile;->getLangCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    return-void
.end method

.method public getLocalProfiles()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->localProfiles:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 69
    move-object v5, p2

    .line 70
    .local v5, v:Landroid/view/View;
    if-nez v5, :cond_18

    .line 71
    invoke-virtual {p0}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 73
    .local v6, vi:Landroid/view/LayoutInflater;
    sget v7, Lcom/google/android/apps/translate/R$layout;->offline_model_adaptor_row:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 75
    .end local v6           #vi:Landroid/view/LayoutInflater;
    :cond_18
    iget-object v7, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->languagePairs:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;

    .line 76
    .local v2, langPairProf:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;
    if-eqz v2, :cond_8c

    .line 77
    sget v7, Lcom/google/android/apps/translate/R$id;->fromlang:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 78
    .local v3, tFrom:Landroid/widget/TextView;
    if-eqz v3, :cond_33

    .line 80
    invoke-virtual {v2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getFromLangCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_33
    sget v7, Lcom/google/android/apps/translate/R$id;->tolang:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 84
    .local v4, tTo:Landroid/widget/TextView;
    if-eqz v4, :cond_44

    .line 86
    invoke-virtual {v2}, Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;->getToLangCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_44
    sget v7, Lcom/google/android/apps/translate/R$id;->download:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 90
    .local v1, bDownload:Landroid/widget/Button;
    if-eqz v1, :cond_68

    .line 92
    const-string v7, "dowload"

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 94
    iget-object v7, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->localProfiles:Landroid/content/SharedPreferences;

    invoke-static {v7, v2}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->hasLocalLanguagePairModel(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Z

    move-result v7

    if-eqz v7, :cond_8d

    .line 96
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setClickable(Z)V

    .line 97
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 104
    :cond_68
    :goto_68
    sget v7, Lcom/google/android/apps/translate/R$id;->delete:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 105
    .local v0, bDelete:Landroid/widget/Button;
    if-eqz v0, :cond_8c

    .line 107
    const-string v7, "delete"

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 109
    iget-object v7, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->localProfiles:Landroid/content/SharedPreferences;

    invoke-static {v7, v2}, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->hasLocalLanguagePairModel(Landroid/content/SharedPreferences;Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$LanguagePairProfile;)Z

    move-result v7

    if-eqz v7, :cond_94

    .line 110
    invoke-virtual {v0, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .end local v0           #bDelete:Landroid/widget/Button;
    .end local v1           #bDownload:Landroid/widget/Button;
    .end local v3           #tFrom:Landroid/widget/TextView;
    .end local v4           #tTo:Landroid/widget/TextView;
    :cond_8c
    :goto_8c
    return-object v5

    .line 99
    .restart local v1       #bDownload:Landroid/widget/Button;
    .restart local v3       #tFrom:Landroid/widget/TextView;
    .restart local v4       #tTo:Landroid/widget/TextView;
    :cond_8d
    invoke-virtual {v1, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_68

    .line 114
    .restart local v0       #bDelete:Landroid/widget/Button;
    :cond_94
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setClickable(Z)V

    .line 115
    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_8c
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/android/apps/translate/R$id;->download:I

    if-ne v0, v1, :cond_22

    .line 125
    new-instance v1, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;

    invoke-direct {v1, p0, v4}, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;-><init>(Lcom/google/android/apps/translate/offline/ProfilesAdapter;Lcom/google/android/apps/translate/offline/ProfilesAdapter$1;)V

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    :cond_21
    :goto_21
    return-void

    .line 126
    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/google/android/apps/translate/R$id;->delete:I

    if-ne v0, v1, :cond_21

    .line 127
    new-instance v1, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DeleteTask;

    invoke-direct {v1, p0, v4}, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DeleteTask;-><init>(Lcom/google/android/apps/translate/offline/ProfilesAdapter;Lcom/google/android/apps/translate/offline/ProfilesAdapter$1;)V

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/offline/ProfilesAdapter$DeleteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_21
.end method

.method public setCommonProfile(Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;)V
    .registers 2
    .parameter "commonProf"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->commonProfile:Lcom/google/protos/com/google/android/apps/translatedecoder/profiles/ModelProfileProtos$ModelProfiles$CommonProfile;

    .line 397
    return-void
.end method

.method public setLocalProfiles(Landroid/content/SharedPreferences;)V
    .registers 2
    .parameter "localProfiles"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/apps/translate/offline/ProfilesAdapter;->localProfiles:Landroid/content/SharedPreferences;

    .line 139
    return-void
.end method
