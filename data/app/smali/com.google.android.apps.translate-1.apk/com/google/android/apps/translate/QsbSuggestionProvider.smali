.class public Lcom/google/android/apps/translate/QsbSuggestionProvider;
.super Landroid/content/ContentProvider;
.source "QsbSuggestionProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.google.android.apps.translate.QsbSuggestionProvider"

.field public static final TRANSLATE_MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.com.google.android.apps.translateword"

.field private static final TRANSLATE_WORD:I

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    invoke-static {}, Lcom/google/android/apps/translate/QsbSuggestionProvider;->buildUriMatcher()Landroid/content/UriMatcher;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/translate/QsbSuggestionProvider;->sURIMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static buildUriMatcher()Landroid/content/UriMatcher;
    .registers 4

    .prologue
    .line 33
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 34
    .local v0, matcher:Landroid/content/UriMatcher;
    const-string v1, "com.google.android.apps.translate.QsbSuggestionProvider"

    const-string v2, "search_suggest_query/*"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter "uri"

    .prologue
    .line 66
    sget-object v0, Lcom/google/android/apps/translate/QsbSuggestionProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_22
    const-string v0, "vnd.android.cursor.dir/vnd.com.google.android.apps.translateword"

    return-object v0

    .line 66
    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    if-eqz p4, :cond_9

    array-length v2, p4

    if-nez v2, :cond_22

    .line 43
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectionArgs must be provided for the Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_22
    aget-object v0, p4, v4

    .line 48
    .local v0, query:Ljava/lang/String;
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v4

    const-string v3, "suggest_text_1"

    aput-object v3, v2, v5

    const-string v3, "suggest_intent_query"

    aput-object v3, v2, v6

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 53
    .local v1, suggestions:Landroid/database/MatrixCursor;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    aput-object v0, v2, v6

    invoke-virtual {v1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 55
    :cond_4c
    return-object v1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
