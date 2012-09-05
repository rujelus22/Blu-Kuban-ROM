.class public Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;
.super Ljava/lang/Object;
.source "ScoredVideosCursorBuilder.java"


# static fields
.field private static final COLUMNS:[Ljava/lang/String;


# instance fields
.field private final baseSearchProvider:Lcom/google/android/youtube/core/search/BaseSearchProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/search/BaseSearchProvider",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 29
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_format"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_intent_action"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_last_access_hint"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/search/BaseSearchProvider;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/search/BaseSearchProvider",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, baseSearchProvider:Lcom/google/android/youtube/core/search/BaseSearchProvider;,"Lcom/google/android/youtube/core/search/BaseSearchProvider<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/search/BaseSearchProvider;

    iput-object v0, p0, Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;->baseSearchProvider:Lcom/google/android/youtube/core/search/BaseSearchProvider;

    .line 46
    return-void
.end method


# virtual methods
.method public buildCursor(Ljava/util/List;Lcom/google/android/youtube/core/model/UserAuth;)Landroid/database/Cursor;
    .registers 11
    .parameter
    .parameter "userAuth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/search/scoring/ScoredResult",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;>;",
            "Lcom/google/android/youtube/core/model/UserAuth;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, scoredVideos:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/search/scoring/ScoredResult<Lcom/google/android/youtube/core/model/Video;>;>;"
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {p2}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 54
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v4, Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 55
    .local v0, cursor:Landroid/database/MatrixCursor;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/search/scoring/ScoredResult;

    .line 56
    .local v2, scoredVideo:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<Lcom/google/android/youtube/core/model/Video;>;"
    invoke-virtual {v2}, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/Video;

    .line 58
    .local v3, video:Lcom/google/android/youtube/core/model/Video;
    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v3, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;->getText1(Lcom/google/android/youtube/core/model/Video;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;->getText2(Lcom/google/android/youtube/core/search/scoring/ScoredResult;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "html"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;->baseSearchProvider:Lcom/google/android/youtube/core/search/BaseSearchProvider;

    invoke-virtual {v6, v3}, Lcom/google/android/youtube/core/search/BaseSearchProvider;->getThumbnailUri(Lcom/google/android/youtube/core/model/Video;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    const-string v6, "android.intent.action.VIEW"

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-virtual {p0, v3}, Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;->getIntentData(Lcom/google/android/youtube/core/model/Video;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-virtual {p0, v3, p2}, Lcom/google/android/youtube/core/search/ScoredVideosCursorBuilder;->getIntentExtra(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    iget-object v6, v3, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-virtual {v2}, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->getTimestamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_14

    .line 71
    .end local v2           #scoredVideo:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<Lcom/google/android/youtube/core/model/Video;>;"
    .end local v3           #video:Lcom/google/android/youtube/core/model/Video;
    :cond_78
    return-object v0
.end method

.method protected getIntentData(Lcom/google/android/youtube/core/model/Video;)Ljava/lang/String;
    .registers 4
    .parameter "video"

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.youtube.com/watch/?v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIntentExtra(Lcom/google/android/youtube/core/model/Video;Lcom/google/android/youtube/core/model/UserAuth;)Ljava/lang/String;
    .registers 4
    .parameter "video"
    .parameter "userAuth"

    .prologue
    .line 103
    iget-object v0, p2, Lcom/google/android/youtube/core/model/UserAuth;->account:Ljava/lang/String;

    return-object v0
.end method

.method protected getText1(Lcom/google/android/youtube/core/model/Video;)Ljava/lang/String;
    .registers 5
    .parameter "video"

    .prologue
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<b>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->title:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</b>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->pro:Lcom/google/android/youtube/core/model/Video$Pro;

    if-eqz v1, :cond_3a

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Video;->pro:Lcom/google/android/youtube/core/model/Video$Pro;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/Video$Pro;->releaseDate:Ljava/util/Date;

    if-eqz v1, :cond_3a

    .line 80
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/google/android/youtube/core/model/Video;->pro:Lcom/google/android/youtube/core/model/Video$Pro;

    iget-object v2, v2, Lcom/google/android/youtube/core/model/Video$Pro;->releaseDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 82
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getText2(Lcom/google/android/youtube/core/search/scoring/ScoredResult;)Ljava/lang/String;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/search/scoring/ScoredResult",
            "<",
            "Lcom/google/android/youtube/core/model/Video;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, scoredVideo:Lcom/google/android/youtube/core/search/scoring/ScoredResult;,"Lcom/google/android/youtube/core/search/scoring/ScoredResult<Lcom/google/android/youtube/core/model/Video;>;"
    invoke-virtual {p1}, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->getMatchHtml()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, matchInfo:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/youtube/core/search/scoring/ScoredResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/youtube/core/model/Video;

    iget-object v0, v2, Lcom/google/android/youtube/core/model/Video;->description:Ljava/lang/String;

    .line 89
    .local v0, description:Ljava/lang/String;
    if-eqz v1, :cond_f

    .line 94
    .end local v1           #matchInfo:Ljava/lang/String;
    :goto_e
    return-object v1

    .line 91
    .restart local v1       #matchInfo:Ljava/lang/String;
    :cond_f
    if-eqz v0, :cond_16

    .line 92
    invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    .line 94
    :cond_16
    const-string v1, ""

    goto :goto_e
.end method
