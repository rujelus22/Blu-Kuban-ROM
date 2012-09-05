.class public Lcom/google/android/finsky/providers/RecentSuggestionsProvider;
.super Landroid/content/SearchRecentSuggestionsProvider;
.source "RecentSuggestionsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;,
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;,
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;,
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;,
        Lcom/google/android/finsky/providers/RecentSuggestionsProvider$OnCompleteListener;
    }
.end annotation


# static fields
.field private static sCurrentBackendId:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 258
    invoke-direct {p0}, Landroid/content/SearchRecentSuggestionsProvider;-><init>()V

    .line 259
    const-string v0, "com.google.android.finsky.RecentSuggestionsProvider"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->setupSuggestions(Ljava/lang/String;I)V

    .line 260
    return-void
.end method

.method public static setCurrentBackendId(I)V
    .registers 1
    .parameter "backendId"

    .prologue
    .line 46
    sput p0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->sCurrentBackendId:I

    .line 47
    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v6, 0x0

    .line 273
    if-eqz p4, :cond_6

    array-length v3, p4

    if-nez v3, :cond_1f

    .line 274
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SelectionArgs must be provided for the Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 278
    :cond_1f
    aget-object v3, p4, v6

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, query:Ljava/lang/String;
    new-instance v0, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;

    invoke-super/range {p0 .. p5}, Landroid/content/SearchRecentSuggestionsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$HistorySearchSuggestor;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 283
    .local v0, historySuggestor:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
    sget v3, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->sCurrentBackendId:I

    packed-switch v3, :pswitch_data_56

    .line 293
    :pswitch_33
    new-instance v1, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;

    invoke-direct {v1, p0, v2}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AppsSearchSuggestor;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider;Ljava/lang/String;)V

    .line 297
    .local v1, networkSuggestor:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
    :goto_38
    new-instance v3, Landroid/database/MergeCursor;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/database/Cursor;

    invoke-virtual {v0}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->gatherSuggestions()Landroid/database/Cursor;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;->gatherSuggestions()Landroid/database/Cursor;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v3

    .line 287
    .end local v1           #networkSuggestor:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
    :pswitch_4e
    new-instance v1, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;

    sget v3, Lcom/google/android/finsky/providers/RecentSuggestionsProvider;->sCurrentBackendId:I

    invoke-direct {v1, p0, v3, v2}, Lcom/google/android/finsky/providers/RecentSuggestionsProvider$NonAppsSearchSuggestor;-><init>(Lcom/google/android/finsky/providers/RecentSuggestionsProvider;ILjava/lang/String;)V

    .line 288
    .restart local v1       #networkSuggestor:Lcom/google/android/finsky/providers/RecentSuggestionsProvider$AsyncSuggestionAuthority;
    goto :goto_38

    .line 283
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_4e
        :pswitch_33
        :pswitch_4e
    .end packed-switch
.end method
