.class public Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;
.super Ljava/lang/Object;
.source "QsbDebuggingImpl.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/debug/QsbDebugging;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$1;,
        Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;,
        Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;
    }
.end annotation


# instance fields
.field private mCurrentPromotion:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;

.field private mGlobalDebugInfoObservable:Landroid/database/DataSetObservable;

.field private mGlobalSuggestionDisplayInfo:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;

.field private mListAdapterNotifications:I

.field private final mPromotions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartTime:J

.field private final mSuggestionDisplayInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/googlequicksearchbox/Suggestion;",
            "Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mPromotions:Ljava/util/List;

    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mStartTime:J

    .line 56
    invoke-static {}, Lcom/google/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mSuggestionDisplayInfo:Ljava/util/Map;

    .line 57
    new-instance v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;-><init>(Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$1;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mGlobalSuggestionDisplayInfo:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;

    .line 58
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mGlobalDebugInfoObservable:Landroid/database/DataSetObservable;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mStartTime:J

    return-wide v0
.end method

.method private getSuggestionDisplayInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;
    .registers 5
    .parameter "s"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mSuggestionDisplayInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 107
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mSuggestionDisplayInfo:Ljava/util/Map;

    new-instance v1, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;-><init>(Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$1;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_13
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mSuggestionDisplayInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;

    return-object v0
.end method


# virtual methods
.method public activityStart()V
    .registers 1

    .prologue
    .line 97
    return-void
.end method

.method public activityStop()V
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mSuggestionDisplayInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 140
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mGlobalSuggestionDisplayInfo:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->clear()V

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mListAdapterNotifications:I

    .line 142
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mGlobalDebugInfoObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 143
    return-void
.end method

.method public addPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V
    .registers 4
    .parameter "s"
    .parameter "info"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mCurrentPromotion:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;->addPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public boundSuggestion(Lcom/google/android/googlequicksearchbox/Suggestion;)V
    .registers 4
    .parameter "s"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->getSuggestionDisplayInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;

    move-result-object v0

    iget v1, v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mBound:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mBound:I

    .line 115
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mGlobalSuggestionDisplayInfo:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;

    iget v1, v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mBound:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mBound:I

    .line 116
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mGlobalDebugInfoObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 117
    return-void
.end method

.method public debugPromotion()Z
    .registers 2

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public finishPromotion(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .registers 4
    .parameter "suggestions"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mPromotions:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mCurrentPromotion:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mPromotions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_17

    .line 90
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mPromotions:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 92
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mCurrentPromotion:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;

    .line 93
    return-void
.end method

.method public getGlobalDebugInfo()Ljava/lang/String;
    .registers 3

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "N:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mListAdapterNotifications:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mGlobalSuggestionDisplayInfo:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalDebugInfoObservable()Landroid/database/DataSetObservable;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mGlobalDebugInfoObservable:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method public getPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;
    .registers 5
    .parameter "s"

    .prologue
    .line 180
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mPromotions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_8
    if-ltz v0, :cond_1c

    .line 181
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mPromotions:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;

    invoke-virtual {v2, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;->getPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, info:Ljava/lang/String;
    if-eqz v1, :cond_19

    .line 186
    .end local v1           #info:Ljava/lang/String;
    :goto_18
    return-object v1

    .line 180
    .restart local v1       #info:Ljava/lang/String;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 186
    .end local v1           #info:Ljava/lang/String;
    :cond_1c
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public getSuggestionDebugInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;
    .registers 10
    .parameter "s"

    .prologue
    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v2

    if-eqz v2, :cond_9a

    const-string v2, "SC, "

    :goto_d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result v2

    if-eqz v2, :cond_9e

    const-string v2, "HIST, "

    :goto_19
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->shouldPrefetch()Z

    move-result v2

    if-eqz v2, :cond_a2

    const-string v2, "PREFETCH, "

    :goto_25
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getLastAccessTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_a5

    const-string v2, "MMM d k:mm:ss, "

    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/Suggestion;->getLastAccessTime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    :goto_3d
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mSuggestionDisplayInfo:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mSuggestionDisplayInfo:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_62
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, suggestionInfo:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_7c

    .line 168
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 171
    :cond_7c
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->getPromotionInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, promotionInfo:Ljava/lang/String;
    if-eqz v0, :cond_99

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    :cond_99
    return-object v1

    .line 157
    .end local v0           #promotionInfo:Ljava/lang/String;
    .end local v1           #suggestionInfo:Ljava/lang/String;
    :cond_9a
    const-string v2, ""

    goto/16 :goto_d

    :cond_9e
    const-string v2, ""

    goto/16 :goto_19

    :cond_a2
    const-string v2, ""

    goto :goto_25

    :cond_a5
    const-string v2, ""

    goto :goto_3d

    :cond_a8
    const-string v2, ""

    goto :goto_62
.end method

.method public inflatedListEntryView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)V
    .registers 4
    .parameter "entry"

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 122
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->getSuggestionDisplayInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;

    move-result-object v0

    iget v1, v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mInflated:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mInflated:I

    .line 124
    :cond_14
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mGlobalSuggestionDisplayInfo:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;

    iget v1, v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mInflated:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mInflated:I

    .line 125
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mGlobalDebugInfoObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 126
    return-void
.end method

.method public listAdapterNotified()V
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mListAdapterNotifications:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mListAdapterNotifications:I

    .line 102
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mGlobalDebugInfoObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 103
    return-void
.end method

.method public recycledListEntryView(Lcom/google/android/googlequicksearchbox/ui/ListEntry;)V
    .registers 4
    .parameter "entry"

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 131
    invoke-virtual {p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntry;->getSuggestion()Lcom/google/android/googlequicksearchbox/Suggestion;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->getSuggestionDisplayInfo(Lcom/google/android/googlequicksearchbox/Suggestion;)Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;

    move-result-object v0

    iget v1, v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mRecycled:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mRecycled:I

    .line 133
    :cond_14
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mGlobalSuggestionDisplayInfo:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;

    iget v1, v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mRecycled:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$SuggestionDisplayInfo;->mRecycled:I

    .line 134
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mGlobalDebugInfoObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 135
    return-void
.end method

.method public showGlobalDebugInfo()Z
    .registers 2

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public showSuggestionDebugInfo()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public startPromotion(Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .registers 3
    .parameter "suggestions"

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;-><init>(Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;Lcom/google/android/googlequicksearchbox/Suggestions;)V

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl;->mCurrentPromotion:Lcom/google/android/googlequicksearchbox/debug/QsbDebuggingImpl$PromotionInfo;

    .line 79
    return-void
.end method
