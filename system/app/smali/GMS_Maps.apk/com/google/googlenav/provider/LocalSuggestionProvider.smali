.class public Lcom/google/googlenav/provider/LocalSuggestionProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 43
    const-string v0, "content://com.google.android.maps.LocalSuggestionProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/provider/LocalSuggestionProvider;->a:Landroid/net/Uri;

    .line 53
    const/4 v0, 0x7

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

    const-string v2, "suggest_intent_query"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_format"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_longitude"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/googlenav/provider/LocalSuggestionProvider;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 345
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 140
    const-string v3, "data1 like ? OR data1 like ?"

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "% "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    .line 149
    invoke-virtual {p0}, Lcom/google/googlenav/provider/LocalSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/provider/SearchHistoryProvider;->a:Landroid/net/Uri;

    const-string v5, "_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 153
    if-eqz v0, :cond_55

    .line 154
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_56

    .line 155
    new-instance v2, Lcom/google/googlenav/provider/d;

    invoke-direct {v2, v0}, Lcom/google/googlenav/provider/d;-><init>(Landroid/database/Cursor;)V

    .line 160
    :cond_55
    :goto_55
    return-object v2

    .line 157
    :cond_56
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_55
.end method

.method static synthetic a()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlenav/provider/LocalSuggestionProvider;->b:[Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .parameter

    .prologue
    .line 168
    invoke-static {}, Lcom/google/googlenav/friend/android/e;->a()Lcom/google/googlenav/friend/android/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/provider/LocalSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/friend/android/e;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 173
    if-eqz v1, :cond_21

    .line 174
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1e

    .line 175
    new-instance v0, Lcom/google/googlenav/provider/c;

    invoke-direct {v0, v1}, Lcom/google/googlenav/provider/c;-><init>(Landroid/database/Cursor;)V

    .line 180
    :goto_1d
    return-object v0

    .line 177
    :cond_1e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 180
    :cond_21
    const/4 v0, 0x0

    goto :goto_1d
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You cannot delete suggestions"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 82
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 185
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You cannot insert suggestions"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 102
    aget-object v1, p4, v5

    .line 105
    array-length v0, p4

    if-le v0, v4, :cond_17

    aget-object v0, p4, v4

    .line 106
    :goto_9
    const/4 v2, 0x0

    .line 109
    const-string v3, "History"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 110
    invoke-direct {p0, v1}, Lcom/google/googlenav/provider/LocalSuggestionProvider;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 130
    :goto_16
    return-object v0

    .line 105
    :cond_17
    const-string v0, "History"

    goto :goto_9

    .line 111
    :cond_1a
    const-string v3, "Contact"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3f

    .line 116
    invoke-direct {p0, v1}, Lcom/google/googlenav/provider/LocalSuggestionProvider;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_3f

    .line 120
    if-eqz v2, :cond_3d

    .line 123
    new-instance v0, Landroid/database/MergeCursor;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/database/Cursor;

    aput-object v2, v3, v5

    aput-object v1, v3, v4

    invoke-direct {v0, v3}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    goto :goto_16

    :cond_3d
    move-object v0, v1

    .line 125
    goto :goto_16

    :cond_3f
    move-object v0, v2

    goto :goto_16
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You cannot update suggestions"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
