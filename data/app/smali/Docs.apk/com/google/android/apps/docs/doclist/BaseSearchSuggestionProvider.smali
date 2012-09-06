.class public Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;
.super Lcom/google/android/apps/docs/GuiceContentProvider;
.source "BaseSearchSuggestionProvider.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final a:I

.field public a:LMb;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private final a:Landroid/content/UriMatcher;

.field private a:LnL;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "suggest_intent_action"

    aput-object v1, v0, v4

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v5

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v6

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "suggest_intent_data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_shortcut_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, LMk;->a:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v1, LMk;->p:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sget-object v1, LMk;->o:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sget-object v1, LMk;->n:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    sget-object v1, LLG;->a:LLG;

    invoke-virtual {v1}, LLG;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LMk;->j:LMk;

    invoke-virtual {v2}, LMk;->a()LLV;

    move-result-object v2

    invoke-virtual {v2}, LLV;->a()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/apps/docs/GuiceContentProvider;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:LnL;

    .line 72
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a(Ljava/lang/String;)Landroid/content/UriMatcher;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:Landroid/content/UriMatcher;

    .line 73
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/content/UriMatcher;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 79
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 81
    const-string v1, "search_suggest_query"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    const-string v1, "search_suggest_query/*"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    return-object v0
.end method

.method private a(Landroid/database/Cursor;)Landroid/database/Cursor;
    .registers 20
    .parameter

    .prologue
    .line 162
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:[Ljava/lang/String;

    invoke-direct {v3, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 163
    sget-object v1, LMk;->a:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 165
    sget-object v1, LMk;->p:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 167
    sget-object v1, LMk;->o:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 169
    sget-object v1, LMk;->n:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 171
    sget-object v1, LLG;->a:LLG;

    invoke-virtual {v1}, LLG;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 174
    sget-object v1, LMk;->j:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 176
    const/4 v1, 0x0

    .line 177
    :goto_68
    const/16 v2, 0xa

    if-ge v1, v2, :cond_d1

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 178
    add-int/lit8 v2, v1, 0x1

    .line 179
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 180
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 181
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 182
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 183
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 184
    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_cf

    const/4 v1, 0x1

    .line 186
    :goto_9b
    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "android.intent.action.VIEW"

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v10, v11, v1}, LkT;->b(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v15, v16

    const/4 v1, 0x3

    aput-object v12, v15, v1

    const/4 v1, 0x4

    aput-object v13, v15, v1

    const/4 v1, 0x5

    aput-object v14, v15, v1

    const/4 v1, 0x6

    aput-object v13, v15, v1

    const/4 v1, 0x7

    const-string v10, "_-1"

    aput-object v10, v15, v1

    invoke-virtual {v3, v15}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    move v1, v2

    .line 204
    goto :goto_68

    .line 184
    :cond_cf
    const/4 v1, 0x0

    goto :goto_9b

    .line 205
    :cond_d1
    return-object v3
.end method

.method public static a(Landroid/content/res/Resources;Lek;)Landroid/os/Bundle;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 225
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 226
    invoke-virtual {p1}, Lek;->a()Lnk;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 227
    const-string v1, "mainFilter"

    invoke-virtual {p1}, Lek;->a()Lnk;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 229
    :cond_14
    const-string v1, "accountName"

    invoke-virtual {p1}, Lek;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "docListCollectionName"

    invoke-virtual {p1}, Lek;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v1, "collectionSqlId"

    invoke-virtual {p1}, Lek;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 232
    invoke-virtual {p1}, Lek;->a()Lem;

    move-result-object v1

    .line 233
    const-string v2, "docListTitle"

    invoke-virtual {v1}, Lem;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v2, "docListUpperTitle"

    invoke-virtual {v1}, Lem;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-object v0
.end method

.method private static a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .parameter

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    if-eqz p0, :cond_9

    .line 273
    const-string v0, "app_data"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 275
    :cond_9
    if-nez v0, :cond_10

    .line 276
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 278
    :cond_10
    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 242
    if-nez p0, :cond_4

    .line 243
    const/4 v0, 0x0

    .line 252
    :cond_3
    :goto_3
    return-object v0

    .line 248
    :cond_4
    const-string v0, "intent_extra_data_key"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    if-nez v0, :cond_3

    .line 250
    invoke-static {p0}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "accountName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method a(LnL;)V
    .registers 2
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:LnL;

    .line 159
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "command not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 103
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

    .line 101
    :pswitch_2b
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0

    .line 99
    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2b
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "command not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/google/android/apps/docs/GuiceContentProvider;->onCreate()Z

    move-result v0

    if-nez v0, :cond_8

    .line 89
    const/4 v0, 0x0

    .line 93
    :goto_7
    return v0

    .line 92
    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:LMb;

    invoke-virtual {v0}, LMb;->g()V

    .line 93
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_dc

    .line 149
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

    .line 119
    :pswitch_2d
    aget-object v0, p4, v2

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_be

    .line 123
    const-wide/16 v1, -0x1

    invoke-static {v1, v2, v0}, LnP;->a(JLjava/lang/String;)LnL;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:LnL;

    if-eqz v1, :cond_d9

    .line 126
    sget-object v1, LnO;->a:LnO;

    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:LnL;

    invoke-virtual {v0, v1, v2}, LnL;->a(LnO;LnL;)LnL;

    move-result-object v0

    move-object v4, v0

    .line 129
    :goto_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EntryView inner join "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, LLF;->a()LLF;

    move-result-object v1

    invoke-virtual {v1}, LLF;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, LLF;->a()LLF;

    move-result-object v1

    invoke-virtual {v1}, LLF;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, LMk;->x:LMk;

    invoke-virtual {v1}, LMk;->a()LLV;

    move-result-object v1

    invoke-virtual {v1}, LLV;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    :try_start_8f
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:LMb;

    sget-object v2, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->b:[Ljava/lang/String;

    invoke-virtual {v4}, LnL;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, LnL;->a()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "title ASC"

    invoke-virtual/range {v0 .. v7}, LMb;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_ab
    .catchall {:try_start_8f .. :try_end_ab} :catchall_b6

    move-result-object v1

    .line 140
    :try_start_ac
    invoke-direct {p0, v1}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a(Landroid/database/Cursor;)Landroid/database/Cursor;
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_d7

    move-result-object v0

    .line 142
    if-eqz v1, :cond_b5

    .line 143
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b5
    return-object v0

    .line 142
    :catchall_b6
    move-exception v0

    move-object v1, v8

    :goto_b8
    if-eqz v1, :cond_bd

    .line 143
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_bd
    throw v0

    .line 147
    :cond_be
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

    .line 142
    :catchall_d7
    move-exception v0

    goto :goto_b8

    :cond_d9
    move-object v4, v0

    goto/16 :goto_48

    .line 117
    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_2d
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->a:Lck;

    invoke-virtual {p0}, Lcom/google/android/apps/docs/doclist/BaseSearchSuggestionProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lck;->a(Landroid/content/Context;)V

    .line 211
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "command not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
