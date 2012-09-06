.class public Lcom/google/android/apps/translate/LanguagesFactory;
.super Ljava/lang/Object;
.source "LanguagesFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;
    }
.end annotation


# static fields
.field private static final CACHE_START_NDX:I = 0x1

.field private static final FROM_TO_LANGS_NDX:I = 0x0

.field private static final LANGS_OBJ_NUM:I = 0x2

.field private static sInst:Lcom/google/android/apps/translate/LanguagesFactory;


# instance fields
.field private mLanguages:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/translate/LanguagesFactory;->mLanguages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 110
    invoke-direct {p0}, Lcom/google/android/apps/translate/LanguagesFactory;->clearCaches()V

    .line 111
    return-void
.end method

.method private cacheLanguages(Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;)V
    .registers 4
    .parameter "entry"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagesFactory;->mLanguages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 102
    return-void
.end method

.method private clearCaches()V
    .registers 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/translate/LanguagesFactory;->mLanguages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 106
    return-void
.end method

.method public static get()Lcom/google/android/apps/translate/LanguagesFactory;
    .registers 2

    .prologue
    .line 41
    sget-object v0, Lcom/google/android/apps/translate/LanguagesFactory;->sInst:Lcom/google/android/apps/translate/LanguagesFactory;

    if-nez v0, :cond_13

    .line 42
    const-class v1, Lcom/google/android/apps/translate/LanguagesFactory;

    monitor-enter v1

    .line 43
    :try_start_7
    sget-object v0, Lcom/google/android/apps/translate/LanguagesFactory;->sInst:Lcom/google/android/apps/translate/LanguagesFactory;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/apps/translate/LanguagesFactory;

    invoke-direct {v0}, Lcom/google/android/apps/translate/LanguagesFactory;-><init>()V

    sput-object v0, Lcom/google/android/apps/translate/LanguagesFactory;->sInst:Lcom/google/android/apps/translate/LanguagesFactory;

    .line 44
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 46
    :cond_13
    sget-object v0, Lcom/google/android/apps/translate/LanguagesFactory;->sInst:Lcom/google/android/apps/translate/LanguagesFactory;

    return-object v0

    .line 44
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final getLanguages(Landroid/content/Context;Ljava/util/Locale;)Lcom/google/android/apps/translate/Languages;
    .registers 4
    .parameter "context"
    .parameter "locale"

    .prologue
    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/apps/translate/LanguagesFactory;->getLanguages(Landroid/content/Context;Ljava/util/Locale;Z)Lcom/google/android/apps/translate/Languages;

    move-result-object v0

    return-object v0
.end method

.method public final getLanguages(Landroid/content/Context;Ljava/util/Locale;Z)Lcom/google/android/apps/translate/Languages;
    .registers 11
    .parameter "context"
    .parameter "locale"
    .parameter "allowDefault"

    .prologue
    .line 59
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v4, 0x2

    if-ge v1, v4, :cond_1c

    .line 60
    iget-object v4, p0, Lcom/google/android/apps/translate/LanguagesFactory;->mLanguages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;

    .line 61
    .local v0, entry:Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;
    if-eqz v0, :cond_19

    iget-object v4, v0, Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;->locale:Ljava/util/Locale;

    invoke-virtual {v4, p2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v3, v0, Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;->languages:Lcom/google/android/apps/translate/Languages;

    .line 73
    .end local v0           #entry:Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;
    :goto_18
    return-object v3

    .line 59
    .restart local v0       #entry:Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 65
    .end local v0           #entry:Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;
    :cond_1c
    invoke-static {p1, p2}, Lcom/google/android/apps/translate/Profile;->getLanguageList(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, languageList:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_34

    .line 67
    new-instance v3, Lcom/google/android/apps/translate/Languages;

    invoke-direct {v3, v2}, Lcom/google/android/apps/translate/Languages;-><init>(Ljava/lang/String;)V

    .line 68
    .local v3, languages:Lcom/google/android/apps/translate/Languages;
    new-instance v4, Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;

    invoke-direct {v4, v3, p2}, Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;-><init>(Lcom/google/android/apps/translate/Languages;Ljava/util/Locale;)V

    invoke-direct {p0, v4}, Lcom/google/android/apps/translate/LanguagesFactory;->cacheLanguages(Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;)V

    goto :goto_18

    .line 73
    .end local v3           #languages:Lcom/google/android/apps/translate/Languages;
    :cond_34
    if-eqz p3, :cond_45

    new-instance v4, Lcom/google/android/apps/translate/Languages;

    invoke-static {}, Lcom/google/android/apps/translate/Languages;->getDefaultFromLanguages()Ljava/util/List;

    move-result-object v5

    invoke-static {}, Lcom/google/android/apps/translate/Languages;->getDefaultToLanguages()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/android/apps/translate/Languages;-><init>(Ljava/util/List;Ljava/util/List;)V

    :goto_43
    move-object v3, v4

    goto :goto_18

    :cond_45
    const/4 v4, 0x0

    goto :goto_43
.end method

.method public refreshLanguagesFromProfile(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 92
    invoke-static {p1}, Lcom/google/android/apps/translate/Util;->getLanguageListFromProfile(Landroid/content/Context;)Lcom/google/android/apps/translate/Languages;

    move-result-object v0

    .line 93
    .local v0, fromToLanguages:Lcom/google/android/apps/translate/Languages;
    iget-object v1, p0, Lcom/google/android/apps/translate/LanguagesFactory;->mLanguages:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v2, 0x0

    new-instance v3, Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/google/android/apps/translate/LanguagesFactory$LanguagesInfo;-><init>(Lcom/google/android/apps/translate/Languages;Ljava/util/Locale;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 97
    invoke-direct {p0}, Lcom/google/android/apps/translate/LanguagesFactory;->clearCaches()V

    .line 98
    return-void
.end method
