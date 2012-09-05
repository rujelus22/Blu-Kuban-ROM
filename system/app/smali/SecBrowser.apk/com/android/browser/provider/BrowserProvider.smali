.class public Lcom/android/browser/provider/BrowserProvider;
.super Landroid/content/ContentProvider;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/provider/BrowserProvider$ResultsCursor;,
        Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;,
        Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

.field private static final SUGGEST_PROJECTION:[Ljava/lang/String;

.field static final TABLE_NAMES:[Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private SUGGEST_ARGS:[Ljava/lang/String;

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mMaxSuggestionLongSize:I

.field private mMaxSuggestionShortSize:I

.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mResultsCursor:Lcom/android/browser/provider/BrowserProvider$ResultsCursor;

.field private mResultsCursorLock:Ljava/lang/Object;

.field private mSettings:Lcom/android/browser/BrowserSettings;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 69
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "bookmarks"

    aput-object v1, v0, v4

    const-string v1, "searches"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "url"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v2

    const-string v1, "bookmark"

    aput-object v1, v0, v3

    const-string v1, "user_entered"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    .line 103
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "suggest_intent_action"

    aput-object v1, v0, v5

    const-string v1, "suggest_intent_data"

    aput-object v1, v0, v2

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v3

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "suggest_text_2_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/provider/BrowserProvider;->COLUMNS:[Ljava/lang/String;

    .line 129
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 130
    sget-object v0, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    sget-object v2, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 132
    sget-object v0, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    sget-object v0, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    sget-object v2, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    sget-object v0, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    sget-object v0, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    const-string v2, "search_suggest_query"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    sget-object v0, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "search_suggest_query"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    const-string v0, "^(http://)(.*?)(/$)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/provider/BrowserProvider;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 78
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    .line 838
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->mResultsCursorLock:Ljava/lang/Object;

    .line 179
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/android/browser/provider/BrowserProvider;->replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/provider/BrowserProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I

    return v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/browser/provider/BrowserProvider;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/browser/provider/BrowserProvider;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doSuggestQuery(Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;
    .registers 17
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "bookmarksOnly"

    .prologue
    .line 900
    const/4 v0, 0x0

    aget-object v0, p2, v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 901
    :cond_10
    new-instance v0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v5, ""

    invoke-direct {v0, p0, v1, v2, v5}, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/provider/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 937
    :goto_19
    return-object v0

    .line 903
    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 904
    .local v10, like:Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_46

    const/4 v0, 0x0

    aget-object v0, p2, v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 906
    :cond_46
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 907
    .local v4, myArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object v10, v4, v0

    .line 908
    move-object v3, p1

    .line 921
    .local v3, suggestSelection:Ljava/lang/String;
    :goto_4d
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    sget-object v2, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "visits DESC, date DESC"

    iget v8, p0, Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 925
    .local v9, c:Landroid/database/Cursor;
    if-nez p3, :cond_79

    sget-object v0, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 926
    :cond_79
    new-instance v0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {v0, p0, v9, v1, v2}, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/provider/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto :goto_19

    .line 910
    .end local v3           #suggestSelection:Ljava/lang/String;
    .end local v4           #myArgs:[Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    :cond_82
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 911
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://www."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 912
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 913
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://www."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 915
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    const/4 v1, 0x4

    aput-object v10, v0, v1

    .line 916
    iget-object v4, p0, Lcom/android/browser/provider/BrowserProvider;->SUGGEST_ARGS:[Ljava/lang/String;

    .line 917
    .restart local v4       #myArgs:[Ljava/lang/String;
    const-string v3, "(url LIKE ? OR url LIKE ? OR url LIKE ? OR url LIKE ? OR title LIKE ?) AND (bookmark = 1 OR user_entered = 1)"

    .restart local v3       #suggestSelection:Ljava/lang/String;
    goto/16 :goto_4d

    .line 929
    .restart local v9       #c:Landroid/database/Cursor;
    :cond_ed
    if-eqz v4, :cond_11d

    array-length v0, v4

    const/4 v1, 0x1

    if-le v0, v1, :cond_11d

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_11d

    .line 931
    iget-object v0, p0, Lcom/android/browser/provider/BrowserProvider;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v12

    .line 932
    .local v12, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-eqz v12, :cond_11d

    invoke-interface {v12}, Lcom/android/browser/search/SearchEngine;->supportsSuggestions()Z

    move-result v0

    if-eqz v0, :cond_11d

    .line 933
    invoke-virtual {p0}, Lcom/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-interface {v12, v0, v1}, Lcom/android/browser/search/SearchEngine;->getSuggestions(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 934
    .local v11, sc:Landroid/database/Cursor;
    new-instance v0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-direct {v0, p0, v9, v11, v1}, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/provider/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 937
    .end local v11           #sc:Landroid/database/Cursor;
    .end local v12           #searchEngine:Lcom/android/browser/search/SearchEngine;
    :cond_11d
    new-instance v0, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-direct {v0, p0, v9, v1, v2}, Lcom/android/browser/provider/BrowserProvider$MySuggestionCursor;-><init>(Lcom/android/browser/provider/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    goto/16 :goto_19
.end method

.method public static getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 10
    .parameter "cr"

    .prologue
    .line 184
    const-string v7, "android-google"

    .line 185
    .local v7, ret:Ljava/lang/String;
    const/4 v6, 0x0

    .line 186
    .local v6, legacyClientIdCursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 190
    .local v8, searchClientIdCursor:Landroid/database/Cursor;
    :try_start_4
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'search_client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 192
    if-eqz v8, :cond_33

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 193
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_27} :catch_6b

    move-result-object v7

    .line 204
    :cond_28
    :goto_28
    if-eqz v6, :cond_2d

    .line 205
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_2d
    if-eqz v8, :cond_32

    .line 208
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 211
    :cond_32
    :goto_32
    return-object v7

    .line 195
    :cond_33
    :try_start_33
    const-string v0, "content://com.google.settings/partner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=\'client_id\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 197
    if-eqz v6, :cond_28

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ms-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_69
    .catchall {:try_start_33 .. :try_end_69} :catchall_77
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_69} :catch_6b

    move-result-object v7

    goto :goto_28

    .line 201
    :catch_6b
    move-exception v0

    .line 204
    if-eqz v6, :cond_71

    .line 205
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_71
    if-eqz v8, :cond_32

    .line 208
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_32

    .line 204
    :catchall_77
    move-exception v0

    if-eqz v6, :cond_7d

    .line 205
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_7d
    if-eqz v8, :cond_82

    .line 208
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_82
    throw v0
.end method

.method private static replaceSystemPropertyInString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11
    .parameter "context"
    .parameter "srcString"

    .prologue
    .line 215
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 216
    .local v7, sb:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 218
    .local v5, lastCharLoc:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8}, Lcom/android/browser/provider/BrowserProvider;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, client_id:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v2, v8, :cond_58

    .line 221
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 222
    .local v0, c:C
    const/16 v8, 0x7b

    if-ne v0, v8, :cond_4c

    .line 223
    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 224
    move v5, v2

    .line 226
    move v3, v2

    .local v3, j:I
    :goto_26
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v3, v8, :cond_4c

    .line 227
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 228
    .local v4, k:C
    const/16 v8, 0x7d

    if-ne v4, v8, :cond_55

    .line 229
    add-int/lit8 v8, v2, 0x1

    invoke-interface {p1, v8, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, propertyKeyValue:Ljava/lang/String;
    const-string v8, "CLIENT_ID"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4f

    .line 231
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :goto_49
    add-int/lit8 v5, v3, 0x1

    .line 236
    move v2, v3

    .line 220
    .end local v3           #j:I
    .end local v4           #k:C
    .end local v6           #propertyKeyValue:Ljava/lang/String;
    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 233
    .restart local v3       #j:I
    .restart local v4       #k:C
    .restart local v6       #propertyKeyValue:Ljava/lang/String;
    :cond_4f
    const-string v8, "unknown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_49

    .line 226
    .end local v6           #propertyKeyValue:Ljava/lang/String;
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 242
    .end local v0           #c:C
    .end local v3           #j:I
    .end local v4           #k:C
    :cond_58
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v5

    if-lez v8, :cond_6a

    .line 244
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {p1, v5, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 246
    :cond_6a
    return-object v7
.end method

.method private static stripUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "url"

    .prologue
    .line 1137
    if-nez p0, :cond_4

    const/4 p0, 0x0

    .line 1142
    .end local p0
    .local v0, m:Ljava/util/regex/Matcher;
    :cond_3
    :goto_3
    return-object p0

    .line 1138
    .end local v0           #m:Ljava/util/regex/Matcher;
    .restart local p0
    :cond_4
    sget-object v1, Lcom/android/browser/provider/BrowserProvider;->STRIP_URL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1139
    .restart local v0       #m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 1140
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 19
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1018
    iget-object v3, p0, Lcom/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 1020
    .local v10, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 1021
    .local v13, match:I
    const/4 v3, -0x1

    if-eq v13, v3, :cond_15

    const/16 v3, 0x14

    if-ne v13, v3, :cond_1d

    .line 1022
    :cond_15
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown URL"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1026
    :cond_1d
    const/16 v3, 0xa

    if-ne v13, v3, :cond_b3

    const/4 v12, 0x1

    .line 1027
    .local v12, isBookmarkTable:Z
    :goto_22
    const/4 v11, 0x0

    .line 1029
    .local v11, id:Ljava/lang/String;
    if-nez v12, :cond_29

    const/16 v3, 0xb

    if-ne v13, v3, :cond_5c

    .line 1030
    :cond_29
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1031
    .local v14, sb:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_45

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_45

    .line 1032
    const-string v3, "( "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    const-string v3, " ) AND "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1036
    :cond_45
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #id:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 1037
    .restart local v11       #id:Ljava/lang/String;
    const-string v3, "_id = "

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1042
    .end local v14           #sb:Ljava/lang/StringBuilder;
    :cond_5c
    invoke-virtual {p0}, Lcom/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1045
    .local v2, cr:Landroid/content/ContentResolver;
    if-eqz v12, :cond_9e

    .line 1046
    sget-object v3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "bookmark"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1049
    .local v9, cursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 1050
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_9b

    .line 1052
    iget-object v3, p0, Lcom/android/browser/provider/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v3}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1055
    :cond_9b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1058
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_9e
    sget-object v3, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v4, v13, 0xa

    aget-object v3, v3, v4

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v10, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1059
    .local v8, count:I
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1060
    return v8

    .line 1026
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v8           #count:I
    .end local v11           #id:Ljava/lang/String;
    .end local v12           #isBookmarkTable:Z
    :cond_b3
    const/4 v12, 0x0

    goto/16 :goto_22
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "url"

    .prologue
    .line 943
    sget-object v1, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 944
    .local v0, match:I
    sparse-switch v0, :sswitch_data_20

    .line 961
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 946
    :sswitch_11
    const-string v1, "vnd.android.cursor.dir/bookmark"

    .line 958
    :goto_13
    return-object v1

    .line 949
    :sswitch_14
    const-string v1, "vnd.android.cursor.item/bookmark"

    goto :goto_13

    .line 952
    :sswitch_17
    const-string v1, "vnd.android.cursor.dir/searches"

    goto :goto_13

    .line 955
    :sswitch_1a
    const-string v1, "vnd.android.cursor.item/searches"

    goto :goto_13

    .line 958
    :sswitch_1d
    const-string v1, "vnd.android.cursor.dir/vnd.android.search.suggest"

    goto :goto_13

    .line 944
    :sswitch_data_20
    .sparse-switch
        0x0 -> :sswitch_11
        0x1 -> :sswitch_17
        0xa -> :sswitch_14
        0xb -> :sswitch_1a
        0x14 -> :sswitch_1d
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 13
    .parameter "url"
    .parameter "initialValues"

    .prologue
    const-wide/16 v8, 0x0

    .line 967
    const/4 v1, 0x0

    .line 968
    .local v1, isBookmarkTable:Z
    iget-object v6, p0, Lcom/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 970
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v6, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 971
    .local v2, match:I
    const/4 v5, 0x0

    .line 972
    .local v5, uri:Landroid/net/Uri;
    packed-switch v2, :pswitch_data_7a

    .line 997
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 975
    :pswitch_1b
    sget-object v6, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, "url"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 977
    .local v3, rowID:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_30

    .line 978
    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 981
    :cond_30
    const/4 v1, 0x1

    .line 1000
    :cond_31
    :goto_31
    if-nez v5, :cond_51

    .line 1001
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unknown URL"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 987
    .end local v3           #rowID:J
    :pswitch_3b
    sget-object v6, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, "url"

    invoke-virtual {v0, v6, v7, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 989
    .restart local v3       #rowID:J
    cmp-long v6, v3, v8

    if-lez v6, :cond_31

    .line 990
    sget-object v6, Landroid/provider/Browser;->SEARCHES_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    goto :goto_31

    .line 1003
    :cond_51
    invoke-virtual {p0}, Lcom/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1008
    if-eqz v1, :cond_78

    const-string v6, "bookmark"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_78

    const-string v6, "bookmark"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_78

    .line 1011
    iget-object v6, p0, Lcom/android/browser/provider/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v6}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1013
    :cond_78
    return-object v5

    .line 972
    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_3b
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 9

    .prologue
    const/4 v7, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 395
    invoke-virtual {p0}, Lcom/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 396
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v5, v5, 0xf

    const/4 v6, 0x4

    if-ne v5, v6, :cond_43

    move v2, v3

    .line 399
    .local v2, xlargeScreenSize:Z
    :goto_17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v3, :cond_45

    move v1, v3

    .line 403
    .local v1, isPortrait:Z
    :goto_24
    if-eqz v2, :cond_47

    if-eqz v1, :cond_47

    .line 404
    const/16 v4, 0x9

    iput v4, p0, Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I

    .line 405
    iput v7, p0, Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionShortSize:I

    .line 410
    :goto_2e
    new-instance v4, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;

    invoke-direct {v4, v0}, Lcom/android/browser/provider/BrowserProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 411
    new-instance v4, Landroid/app/backup/BackupManager;

    invoke-direct {v4, v0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/browser/provider/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 426
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/provider/BrowserProvider;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 427
    return v3

    .end local v1           #isPortrait:Z
    .end local v2           #xlargeScreenSize:Z
    :cond_43
    move v2, v4

    .line 396
    goto :goto_17

    .restart local v2       #xlargeScreenSize:Z
    :cond_45
    move v1, v4

    .line 399
    goto :goto_24

    .line 407
    .restart local v1       #isPortrait:Z
    :cond_47
    iput v7, p0, Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionLongSize:I

    .line 408
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/browser/provider/BrowserProvider;->mMaxSuggestionShortSize:I

    goto :goto_2e
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 21
    .parameter "url"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 859
    sget-object v2, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v12

    .line 860
    .local v12, match:I
    const/4 v2, -0x1

    if-ne v12, v2, :cond_13

    .line 861
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unknown URL"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 865
    :cond_13
    iget-object v3, p0, Lcom/android/browser/provider/BrowserProvider;->mResultsCursorLock:Ljava/lang/Object;

    monitor-enter v3

    .line 866
    const/16 v2, 0x14

    if-ne v12, v2, :cond_25

    :try_start_1a
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider;->mResultsCursor:Lcom/android/browser/provider/BrowserProvider$ResultsCursor;

    if-eqz v2, :cond_25

    .line 867
    iget-object v13, p0, Lcom/android/browser/provider/BrowserProvider;->mResultsCursor:Lcom/android/browser/provider/BrowserProvider$ResultsCursor;

    .line 868
    .local v13, results:Landroid/database/Cursor;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/provider/BrowserProvider;->mResultsCursor:Lcom/android/browser/provider/BrowserProvider$ResultsCursor;

    .line 869
    monitor-exit v3

    .line 894
    .end local v13           #results:Landroid/database/Cursor;
    :goto_24
    return-object v13

    .line 871
    :cond_25
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_3c

    .line 873
    const/16 v2, 0x14

    if-eq v12, v2, :cond_2e

    const/16 v2, 0x15

    if-ne v12, v2, :cond_41

    .line 875
    :cond_2e
    const/16 v2, 0x15

    if-ne v12, v2, :cond_3f

    const/4 v2, 0x1

    :goto_33
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {p0, v0, v1, v2}, Lcom/android/browser/provider/BrowserProvider;->doSuggestQuery(Ljava/lang/String;[Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v13

    goto :goto_24

    .line 871
    :catchall_3c
    move-exception v2

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v2

    .line 875
    :cond_3f
    const/4 v2, 0x0

    goto :goto_33

    .line 878
    :cond_41
    const/4 v4, 0x0

    .line 879
    .local v4, projection:[Ljava/lang/String;
    if-eqz p2, :cond_61

    move-object/from16 v0, p2

    array-length v2, v0

    if-lez v2, :cond_61

    .line 880
    move-object/from16 v0, p2

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    .line 881
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    array-length v5, v0

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    move-object/from16 v0, p2

    array-length v2, v0

    const-string v3, "_id AS _id"

    aput-object v3, v4, v2

    .line 885
    :cond_61
    const/4 v14, 0x0

    .line 886
    .local v14, whereClause:Ljava/lang/String;
    const/16 v2, 0xa

    if-eq v12, v2, :cond_6a

    const/16 v2, 0xb

    if-ne v12, v2, :cond_88

    .line 887
    :cond_6a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 890
    :cond_88
    iget-object v2, p0, Lcom/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v5, v12, 0xa

    aget-object v3, v3, v5

    move-object/from16 v0, p3

    invoke-static {v14, v0}, Landroid/database/DatabaseUtils;->concatenateWhere(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 893
    .local v11, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v11, v2, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v13, v11

    .line 894
    goto/16 :goto_24
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 21
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 1066
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/browser/provider/BrowserProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 1068
    .local v11, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v4, Lcom/android/browser/provider/BrowserProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 1069
    .local v13, match:I
    const/4 v4, -0x1

    if-eq v13, v4, :cond_17

    const/16 v4, 0x14

    if-ne v13, v4, :cond_1f

    .line 1070
    :cond_17
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unknown URL"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1073
    :cond_1f
    const/16 v4, 0xa

    if-eq v13, v4, :cond_27

    const/16 v4, 0xb

    if-ne v13, v4, :cond_5a

    .line 1074
    :cond_27
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1075
    .local v15, sb:Ljava/lang/StringBuilder;
    if-eqz p3, :cond_43

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_43

    .line 1076
    const-string v4, "( "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    const-string v4, " ) AND "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    :cond_43
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1081
    .local v12, id:Ljava/lang/String;
    const-string v4, "_id = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1086
    .end local v12           #id:Ljava/lang/String;
    .end local v15           #sb:Ljava/lang/StringBuilder;
    :cond_5a
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/provider/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1091
    .local v3, cr:Landroid/content/ContentResolver;
    const/16 v4, 0xa

    if-eq v13, v4, :cond_68

    if-nez v13, :cond_7d

    .line 1092
    :cond_68
    const/4 v9, 0x0

    .line 1096
    .local v9, changingBookmarks:Z
    const-string v4, "bookmark"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_94

    .line 1097
    const/4 v9, 0x1

    .line 1115
    :cond_74
    :goto_74
    if-eqz v9, :cond_7d

    .line 1116
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/browser/provider/BrowserProvider;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v4}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1120
    .end local v9           #changingBookmarks:Z
    :cond_7d
    sget-object v4, Lcom/android/browser/provider/BrowserProvider;->TABLE_NAMES:[Ljava/lang/String;

    rem-int/lit8 v5, v13, 0xa

    aget-object v4, v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v11, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    .line 1121
    .local v14, ret:I
    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1122
    return v14

    .line 1098
    .end local v14           #ret:I
    .restart local v9       #changingBookmarks:Z
    :cond_94
    const-string v4, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a8

    const-string v4, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    :cond_a8
    const-string v4, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 1104
    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "bookmark"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1108
    .local v10, cursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 1109
    const/4 v4, 0x0

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_ef

    const/4 v9, 0x1

    .line 1111
    :cond_eb
    :goto_eb
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_74

    .line 1109
    :cond_ef
    const/4 v9, 0x0

    goto :goto_eb
.end method
