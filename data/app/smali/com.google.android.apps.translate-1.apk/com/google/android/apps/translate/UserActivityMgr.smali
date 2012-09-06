.class public Lcom/google/android/apps/translate/UserActivityMgr;
.super Ljava/lang/Object;
.source "UserActivityMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;,
        Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;,
        Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;,
        Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final INPUT_METHOD_VAR:Ljava/lang/String; = "&inputm="

.field private static final INPUT_SOURCE_VAR:Ljava/lang/String; = "&source="

.field private static final INTERVAL_COUNT_SEPARATOR:Ljava/lang/String; = ","

.field private static final INTERVAL_COUNT_TAG_VALUE_SEPARATOR:Ljava/lang/String; = "."

.field private static final INTERVAL_COUNT_VAR:Ljava/lang/String; = "&ic="

.field private static final PREV_SOURCE_LANG_VAR:Ljava/lang/String; = "&psl="

.field private static final PREV_TARGET_LANG_VAR:Ljava/lang/String; = "&ptl="

.field private static final SWAP_VAR:Ljava/lang/String; = "&swap="

.field private static final TAG:Ljava/lang/String; = "UserActivityMgr"

.field private static final VALUE_NOT_SET:Ljava/lang/String;

.field private static sInstance:Lcom/google/android/apps/translate/UserActivityMgr;


# instance fields
.field private mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr;->VALUE_NOT_SET:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr;

    invoke-direct {v0}, Lcom/google/android/apps/translate/UserActivityMgr;-><init>()V

    sput-object v0, Lcom/google/android/apps/translate/UserActivityMgr;->sInstance:Lcom/google/android/apps/translate/UserActivityMgr;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    invoke-direct {v0}, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    .line 246
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/google/android/apps/translate/UserActivityMgr;->VALUE_NOT_SET:Ljava/lang/String;

    return-object v0
.end method

.method public static get()Lcom/google/android/apps/translate/UserActivityMgr;
    .registers 1

    .prologue
    .line 117
    sget-object v0, Lcom/google/android/apps/translate/UserActivityMgr;->sInstance:Lcom/google/android/apps/translate/UserActivityMgr;

    return-object v0
.end method

.method public static setLanguageChanges(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 8
    .parameter "mFromLanguage"
    .parameter "mToLanguage"
    .parameter "language1"
    .parameter "language2"

    .prologue
    .line 250
    invoke-static {}, Lcom/google/android/apps/translate/Logger;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 251
    invoke-static {p0}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-static {p1}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-static {p2}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {p3}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_12
    invoke-virtual {p2, p0}, Lcom/google/android/apps/translate/Language;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p3, p1}, Lcom/google/android/apps/translate/Language;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    :cond_1e
    const/4 v0, 0x1

    .line 257
    .local v0, isChanged:Z
    :goto_1f
    if-eqz v0, :cond_50

    .line 258
    invoke-virtual {p0, p2}, Lcom/google/android/apps/translate/Language;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 259
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->SL_CHANGE:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    invoke-virtual {p0}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr;->setTranslationSource(Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;Ljava/lang/String;)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 262
    :cond_34
    invoke-virtual {p1, p3}, Lcom/google/android/apps/translate/Language;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 263
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->TL_CHANGE:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    invoke-virtual {p1}, Lcom/google/android/apps/translate/Language;->getShortName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/translate/UserActivityMgr;->setTranslationSource(Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;Ljava/lang/String;)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 266
    :cond_47
    invoke-static {}, Lcom/google/android/apps/translate/UserActivityMgr;->get()Lcom/google/android/apps/translate/UserActivityMgr;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/translate/UserActivityMgr;->setTranslationInputMethod(Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;)Lcom/google/android/apps/translate/UserActivityMgr;

    .line 269
    :cond_50
    return-void

    .line 256
    .end local v0           #isChanged:Z
    :cond_51
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static setLanguageChangesForConversation(Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;Lcom/google/android/apps/translate/Language;)V
    .registers 4
    .parameter "mFromLanguage"
    .parameter "mToLanguage"
    .parameter "language1"
    .parameter "language2"

    .prologue
    .line 276
    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrTranslationExtraParams()Ljava/lang/String;
    .registers 11

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v4, subUrl:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iget-object v7, v7, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->inputm:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    sget-object v8, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    if-eq v7, v8, :cond_1f

    .line 181
    const-string v7, "&inputm="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iget-object v8, v8, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->inputm:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    invoke-virtual {v8}, Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;->ordinal()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    :cond_1f
    iget-object v7, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iget-object v3, v7, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->source:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    .line 187
    .local v3, source:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;
    sget-object v7, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->UNKNOWN:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    if-eq v3, v7, :cond_42

    .line 188
    invoke-virtual {v3}, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->paramValue()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/translate/UserActivityMgr;->VALUE_NOT_SET:Ljava/lang/String;

    if-ne v7, v8, :cond_8d

    iget-object v7, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iget-object v6, v7, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->sourceCgiParamData:Ljava/lang/String;

    .line 190
    .local v6, value:Ljava/lang/String;
    :goto_33
    sget-object v7, Lcom/google/android/apps/translate/UserActivityMgr;->VALUE_NOT_SET:Ljava/lang/String;

    if-eq v6, v7, :cond_42

    .line 191
    invoke-virtual {v3}, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->paramName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .end local v6           #value:Ljava/lang/String;
    :cond_42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v2, intervalCountValue:Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iget-object v7, v7, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->intervalCountMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_53
    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_92

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;

    .line 197
    .local v5, tag:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;
    iget-object v7, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iget-object v7, v7, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->intervalCountMap:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 198
    .local v0, c:I
    if-eqz v0, :cond_53

    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_7a

    .line 200
    const-string v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_7a
    invoke-virtual {v5}, Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;->tagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_89
    .catchall {:try_start_1 .. :try_end_89} :catchall_8a

    goto :goto_53

    .line 177
    .end local v0           #c:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #intervalCountValue:Ljava/lang/StringBuilder;
    .end local v3           #source:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;
    .end local v4           #subUrl:Ljava/lang/StringBuilder;
    .end local v5           #tag:Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;
    :catchall_8a
    move-exception v7

    monitor-exit p0

    throw v7

    .line 188
    .restart local v3       #source:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;
    .restart local v4       #subUrl:Ljava/lang/StringBuilder;
    :cond_8d
    :try_start_8d
    invoke-virtual {v3}, Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;->paramValue()Ljava/lang/String;

    move-result-object v6

    goto :goto_33

    .line 207
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #intervalCountValue:Ljava/lang/StringBuilder;
    :cond_92
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_a8

    .line 208
    const-string v7, "&ic="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 209
    iget-object v7, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iget-object v7, v7, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->intervalCountMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 215
    :cond_a8
    const-string v7, "UserActivityMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCurrTranslationExtraParams subUrl="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c7
    .catchall {:try_start_8d .. :try_end_c7} :catchall_8a

    move-result-object v7

    monitor-exit p0

    return-object v7
.end method

.method public declared-synchronized incrementIntervalCount(Lcom/google/android/apps/translate/UserActivityMgr$IntervalCountTag;I)Lcom/google/android/apps/translate/UserActivityMgr;
    .registers 7
    .parameter "tag"
    .parameter "inc"

    .prologue
    .line 156
    monitor-enter p0

    move v0, p2

    .line 157
    .local v0, newValue:I
    :try_start_2
    iget-object v1, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iget-object v1, v1, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->intervalCountMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 158
    iget-object v1, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iget-object v1, v1, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->intervalCountMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    .line 160
    :cond_1b
    iget-object v1, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iget-object v1, v1, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->intervalCountMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string v1, "UserActivityMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTranslationInputMethod mTranslation.intervalCountMap[\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\']="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_2 .. :try_end_48} :catchall_4a

    .line 163
    monitor-exit p0

    return-object p0

    .line 156
    :catchall_4a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized prepareNewTranslation()V
    .registers 3

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    const-string v0, "UserActivityMgr"

    const-string v1, "prepareNewTranslation"

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    invoke-direct {v0}, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 126
    monitor-exit p0

    return-void

    .line 124
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTranslationInputMethod(Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;)Lcom/google/android/apps/translate/UserActivityMgr;
    .registers 5
    .parameter "method"

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/apps/translate/Logger;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 133
    invoke-static {p1}, Lcom/google/android/apps/translate/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_a
    iget-object v0, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iput-object p1, v0, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->inputm:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    .line 136
    const-string v0, "UserActivityMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTranslationInputMethod mTranslation.inputm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iget-object v2, v2, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->inputm:Lcom/google/android/apps/translate/UserActivityMgr$InputMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 137
    monitor-exit p0

    return-object p0

    .line 132
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTranslationSource(Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;)Lcom/google/android/apps/translate/UserActivityMgr;
    .registers 3
    .parameter "source"

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/apps/translate/UserActivityMgr;->VALUE_NOT_SET:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/translate/UserActivityMgr;->setTranslationSource(Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;Ljava/lang/String;)Lcom/google/android/apps/translate/UserActivityMgr;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTranslationSource(Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;Ljava/lang/String;)Lcom/google/android/apps/translate/UserActivityMgr;
    .registers 6
    .parameter "source"
    .parameter "data"

    .prologue
    .line 144
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iput-object p1, v0, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->source:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    .line 145
    iget-object v0, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iput-object p2, v0, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->sourceCgiParamData:Ljava/lang/String;

    .line 146
    const-string v0, "UserActivityMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTranslationInputMethod mTranslation.source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iget-object v2, v2, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->source:Lcom/google/android/apps/translate/UserActivityMgr$RequestSource;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "UserActivityMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTranslationInputMethod mTranslation.sourceCgiParamData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/translate/UserActivityMgr;->mTranslation:Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;

    iget-object v2, v2, Lcom/google/android/apps/translate/UserActivityMgr$TranslationActivity;->sourceCgiParamData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    .line 149
    monitor-exit p0

    return-object p0

    .line 144
    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method
