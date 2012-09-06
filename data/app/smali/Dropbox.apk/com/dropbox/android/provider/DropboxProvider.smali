.class public Lcom/dropbox/android/provider/DropboxProvider;
.super Landroid/content/ContentProvider;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/dropbox/android/provider/z;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    const-class v0, Lcom/dropbox/android/provider/DropboxProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/provider/DropboxProvider;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 45
    return-void
.end method

.method public static a(Landroid/net/Uri;)Lcom/dropbox/android/provider/l;
    .registers 3
    .parameter

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 63
    const-string v1, "/metadata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 64
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 65
    sget-object v0, Lcom/dropbox/android/provider/l;->b:Lcom/dropbox/android/provider/l;

    .line 80
    :goto_1a
    return-object v0

    .line 67
    :cond_1b
    sget-object v0, Lcom/dropbox/android/provider/l;->a:Lcom/dropbox/android/provider/l;

    goto :goto_1a

    .line 69
    :cond_1e
    const-string v1, "/favorites"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 70
    sget-object v0, Lcom/dropbox/android/provider/l;->c:Lcom/dropbox/android/provider/l;

    goto :goto_1a

    .line 71
    :cond_29
    const-string v1, "/query_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 72
    sget-object v0, Lcom/dropbox/android/provider/l;->f:Lcom/dropbox/android/provider/l;

    goto :goto_1a

    .line 73
    :cond_34
    const-string v1, "/search_suggest_query"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 74
    sget-object v0, Lcom/dropbox/android/provider/l;->e:Lcom/dropbox/android/provider/l;

    goto :goto_1a

    .line 75
    :cond_3f
    const-string v1, "/search"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 76
    sget-object v0, Lcom/dropbox/android/provider/l;->d:Lcom/dropbox/android/provider/l;

    goto :goto_1a

    .line 77
    :cond_4a
    const-string v1, "/clear_db"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 78
    sget-object v0, Lcom/dropbox/android/provider/l;->g:Lcom/dropbox/android/provider/l;

    goto :goto_1a

    .line 80
    :cond_55
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method private static a(Landroid/content/ContentValues;)V
    .registers 3
    .parameter

    .prologue
    .line 454
    const-string v0, "path"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 455
    const-string v0, "path"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 456
    const-string v1, "canon_path"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_17
    const-string v0, "parent_path"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 460
    const-string v0, "parent_path"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    const-string v1, "canon_parent_path"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :cond_2e
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 347
    invoke-static {}, Lcom/dropbox/android/DropboxApplication;->b()V

    .line 349
    if-nez p2, :cond_9

    if-eqz p3, :cond_2f

    .line 350
    :cond_9
    sget-object v1, Lcom/dropbox/android/provider/DropboxProvider;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected where clause: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' with args: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_2f
    invoke-static {p1}, Lcom/dropbox/android/provider/DropboxProvider;->a(Landroid/net/Uri;)Lcom/dropbox/android/provider/l;

    move-result-object v1

    .line 354
    if-nez v1, :cond_52

    .line 355
    sget-object v1, Lcom/dropbox/android/provider/DropboxProvider;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type of URI in delete(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_51
    return v0

    .line 359
    :cond_52
    sget-object v2, Lcom/dropbox/android/provider/k;->a:[I

    invoke-virtual {v1}, Lcom/dropbox/android/provider/l;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_90

    .line 367
    sget-object v1, Lcom/dropbox/android/provider/DropboxProvider;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type of URI in delete(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 361
    :pswitch_7a
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 362
    const-string v1, "dropbox"

    invoke-virtual {v0, v1, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 363
    invoke-virtual {p0}, Lcom/dropbox/android/provider/DropboxProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/dropbox/android/provider/t;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_51

    .line 359
    :pswitch_data_90
    .packed-switch 0x7
        :pswitch_7a
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 229
    invoke-static {p1}, Lcom/dropbox/android/provider/DropboxProvider;->a(Landroid/net/Uri;)Lcom/dropbox/android/provider/l;

    move-result-object v0

    .line 230
    if-nez v0, :cond_9

    .line 231
    const-string v0, ""

    .line 240
    :goto_8
    return-object v0

    .line 233
    :cond_9
    sget-object v1, Lcom/dropbox/android/provider/k;->a:[I

    invoke-virtual {v0}, Lcom/dropbox/android/provider/l;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1e

    .line 240
    :pswitch_14
    const-string v0, ""

    goto :goto_8

    .line 236
    :pswitch_17
    const-string v0, "vnd.android.cursor.dir/vnd.dropbox.entry"

    goto :goto_8

    .line 238
    :pswitch_1a
    const-string v0, "vnd.android.cursor.item/vnd.dropbox.entry"

    goto :goto_8

    .line 233
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1a
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 246
    invoke-static {}, Lcom/dropbox/android/DropboxApplication;->b()V

    .line 251
    invoke-static {p1}, Lcom/dropbox/android/provider/DropboxProvider;->a(Landroid/net/Uri;)Lcom/dropbox/android/provider/l;

    move-result-object v4

    .line 252
    sget-object v0, Lcom/dropbox/android/provider/l;->a:Lcom/dropbox/android/provider/l;

    if-eq v4, v0, :cond_2a

    sget-object v0, Lcom/dropbox/android/provider/l;->b:Lcom/dropbox/android/provider/l;

    if-eq v4, v0, :cond_2a

    .line 253
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert: Illegal URI for insert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_2a
    if-eqz p2, :cond_165

    .line 263
    invoke-static {p2}, Lcom/dropbox/android/provider/DropboxProvider;->a(Landroid/content/ContentValues;)V

    .line 265
    const-string v0, "_upload"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 266
    const-string v0, "_upload"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    :goto_3d
    const-string v2, "_upload_force"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15e

    .line 269
    const-string v2, "_upload_force"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v8, v2

    move-object v2, v0

    move v0, v8

    .line 272
    :goto_52
    sget-object v5, Lcom/dropbox/android/provider/l;->a:Lcom/dropbox/android/provider/l;

    if-eq v4, v5, :cond_5c

    sget-object v5, Lcom/dropbox/android/provider/l;->b:Lcom/dropbox/android/provider/l;

    if-ne v4, v5, :cond_14d

    if-eqz v2, :cond_14d

    .line 275
    :cond_5c
    if-eqz p2, :cond_73

    .line 276
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 277
    const-string v5, "path"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Entries.PATH missiong in initialvalues"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert: Can\'t insert a null entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_8c
    if-eqz v2, :cond_c7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_c7

    .line 284
    sget-object v0, Lcom/dropbox/android/provider/DropboxProvider;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding new file (from import, probably): "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance v0, Lcom/dropbox/android/taskqueue/UploadTask;

    invoke-virtual {p0}, Lcom/dropbox/android/provider/DropboxProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v5, "parent_path"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/dropbox/android/taskqueue/UploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 288
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v1

    .line 289
    invoke-virtual {v1}, Lcom/dropbox/android/filemanager/v;->k()Lcom/dropbox/android/taskqueue/G;

    move-result-object v1

    .line 290
    invoke-virtual {v1, v0}, Lcom/dropbox/android/taskqueue/G;->a(Lcom/dropbox/android/taskqueue/DbTask;)V

    .line 341
    :goto_c6
    return-object p1

    .line 295
    :cond_c7
    const-string v2, "_upload"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 296
    const-string v2, "_upload"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 298
    :cond_d4
    const-string v2, "_upload_force"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e1

    .line 299
    const-string v2, "_upload_force"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 302
    :cond_e1
    const-string v2, "_data"

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15b

    .line 303
    const-string v2, "Entries.PATH"

    const-string v5, "path"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/dropbox/android/util/S;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 306
    :try_start_fc
    const-string v5, "dropbox"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_102
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_fc .. :try_end_102} :catch_146

    .line 314
    :cond_102
    :goto_102
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 315
    const-string v1, "hash"

    const-string v5, ""

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {p1}, Lcom/dropbox/android/util/aa;->b(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 318
    const-string v5, "canon_parent_path = ?"

    .line 319
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    new-instance v7, Lcom/dropbox/android/util/Z;

    invoke-direct {v7, v1}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v7}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    .line 321
    const-string v1, "path"

    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_139

    .line 322
    const-string v1, "Entries.PATH"

    const-string v3, "path"

    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/dropbox/android/util/S;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_139
    const-string v1, "dropbox"

    invoke-virtual {v2, v1, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    invoke-virtual {p0}, Lcom/dropbox/android/provider/DropboxProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dropbox/android/provider/t;->a(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_c6

    .line 307
    :catch_146
    move-exception v5

    .line 308
    if-eqz v0, :cond_102

    .line 309
    invoke-virtual {p0, p1, v4, v1, v1}, Lcom/dropbox/android/provider/DropboxProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_102

    .line 329
    :cond_14d
    sget-object v0, Lcom/dropbox/android/provider/l;->b:Lcom/dropbox/android/provider/l;

    if-ne v4, v0, :cond_15b

    .line 331
    new-instance v0, Lcom/dropbox/android/provider/j;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/android/provider/j;-><init>(Lcom/dropbox/android/provider/DropboxProvider;Landroid/net/Uri;)V

    .line 338
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_c6

    :cond_15b
    move-object p1, v1

    .line 341
    goto/16 :goto_c6

    :cond_15e
    move-object v2, v0

    move v0, v3

    goto/16 :goto_52

    :cond_162
    move-object v0, v1

    goto/16 :goto_3d

    :cond_165
    move v0, v3

    move-object v2, v1

    goto/16 :goto_52
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 56
    new-instance v0, Lcom/dropbox/android/provider/z;

    invoke-direct {v0}, Lcom/dropbox/android/provider/z;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/provider/DropboxProvider;->b:Lcom/dropbox/android/provider/z;

    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 450
    const/4 v0, 0x0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-static {}, Lcom/dropbox/android/DropboxApplication;->b()V

    .line 90
    :try_start_3
    const-string v1, "dbonly"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_69

    const/4 v1, 0x1

    move v3, v1

    .line 93
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_35

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dbonly=true"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&&"

    const-string v4, "&"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->encodedQuery(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 99
    :cond_35
    new-instance v7, Lcom/dropbox/android/provider/u;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Lcom/dropbox/android/provider/u;-><init>(Landroid/net/Uri;)V

    .line 100
    invoke-virtual {v7}, Lcom/dropbox/android/provider/u;->d()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6c

    const/4 v1, 0x1

    move v2, v1

    .line 101
    :goto_45
    invoke-virtual {v7}, Lcom/dropbox/android/provider/u;->b()Landroid/net/Uri;

    move-result-object v4

    .line 103
    invoke-static {v4}, Lcom/dropbox/android/provider/DropboxProvider;->a(Landroid/net/Uri;)Lcom/dropbox/android/provider/l;

    move-result-object v5

    .line 104
    if-nez v5, :cond_6f

    .line 105
    sget-object v1, Lcom/dropbox/android/provider/DropboxProvider;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad uri in query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v1, 0x0

    .line 222
    :goto_68
    return-object v1

    .line 90
    :cond_69
    const/4 v1, 0x0

    move v3, v1

    goto :goto_f

    .line 100
    :cond_6c
    const/4 v1, 0x0

    move v2, v1

    goto :goto_45

    .line 108
    :cond_6f
    sget-object v1, Lcom/dropbox/android/provider/k;->a:[I

    invoke-virtual {v5}, Lcom/dropbox/android/provider/l;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_210

    .line 143
    sget-object v1, Lcom/dropbox/android/provider/DropboxProvider;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad uri in query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v1, 0x0

    goto :goto_68

    .line 110
    :pswitch_94
    if-nez p3, :cond_20a

    .line 111
    const-string p3, "canon_parent_path = ?"

    .line 112
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 p4, v0

    const/4 v1, 0x0

    new-instance v6, Lcom/dropbox/android/util/Z;

    invoke-direct {v6, v4}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v6}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p4, v1

    move-object/from16 v12, p4

    move-object/from16 v11, p3

    .line 150
    :goto_b1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 151
    const-string v15, "is_dir DESC, _display_name COLLATE NOCASE"

    .line 157
    :goto_b9
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/provider/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 158
    const-string v9, "dropbox"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p2

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 161
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/provider/DropboxProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v4}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 163
    if-eqz v3, :cond_143

    move-object/from16 v1, v16

    .line 164
    goto :goto_68

    .line 116
    :pswitch_dd
    if-nez p3, :cond_20a

    .line 117
    const-string p3, "canon_path = ?"

    .line 118
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    move-object/from16 p4, v0

    const/4 v1, 0x0

    new-instance v6, Lcom/dropbox/android/util/Z;

    invoke-direct {v6, v4}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v6}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p4, v1

    move-object/from16 v12, p4

    move-object/from16 v11, p3

    goto :goto_b1

    .line 122
    :pswitch_fb
    invoke-static {v4}, Lcom/dropbox/android/provider/u;->a(Landroid/net/Uri;)Lcom/dropbox/android/provider/u;

    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/dropbox/android/provider/u;->c()Landroid/database/Cursor;

    move-result-object v1

    goto/16 :goto_68

    .line 126
    :pswitch_105
    const-string p3, "is_favorite=1"

    move-object/from16 v12, p4

    move-object/from16 v11, p3

    .line 127
    goto :goto_b1

    .line 130
    :pswitch_10c
    const-string v1, "query"

    invoke-virtual {v4, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/android/provider/DropboxProvider;->b:Lcom/dropbox/android/provider/z;

    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/provider/DropboxProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v3

    move-object/from16 v6, p2

    invoke-virtual/range {v1 .. v7}, Lcom/dropbox/android/provider/z;->a(Landroid/content/Context;Lcom/dropbox/android/provider/g;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/dropbox/android/provider/u;)Landroid/database/Cursor;

    move-result-object v1

    goto/16 :goto_68

    .line 135
    :pswitch_126
    move-object/from16 v0, p4

    array-length v1, v0

    if-lez v1, :cond_13c

    .line 136
    const/4 v1, 0x0

    aget-object v1, p4, v1

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/provider/DropboxProvider;->b:Lcom/dropbox/android/provider/z;

    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/provider/DropboxProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/dropbox/android/provider/z;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto/16 :goto_68

    .line 139
    :cond_13c
    const/4 v1, 0x0

    goto/16 :goto_68

    :cond_13f
    move-object/from16 v15, p5

    .line 153
    goto/16 :goto_b9

    .line 169
    :cond_143
    if-eqz v16, :cond_14b

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1df

    .line 170
    :cond_14b
    const/4 v1, 0x0

    .line 172
    sget-object v3, Lcom/dropbox/android/provider/l;->b:Lcom/dropbox/android/provider/l;

    if-ne v5, v3, :cond_1a1

    .line 174
    new-instance v3, Lcom/dropbox/android/util/Z;

    invoke-direct {v3, v4}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    const/4 v6, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 177
    const-string v9, "dropbox"

    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v11, "hash"

    aput-object v11, v10, v6

    const-string v11, "canon_path = ?"

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v6

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v8 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 184
    if-eqz v3, :cond_1a1

    .line 185
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_19e

    .line 186
    const-string v6, "hash"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 187
    if-eqz v6, :cond_19e

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0x20

    if-ne v6, v8, :cond_19e

    .line 191
    const/4 v1, 0x1

    .line 194
    :cond_19e
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_1a1
    :goto_1a1
    if-eqz v2, :cond_1db

    .line 202
    sget-object v2, Lcom/dropbox/android/provider/l;->c:Lcom/dropbox/android/provider/l;

    if-eq v5, v2, :cond_1ae

    .line 204
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/provider/DropboxProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v7, v2, v1}, Lcom/dropbox/android/provider/u;->a(Landroid/content/Context;I)V

    .line 207
    :cond_1ae
    sget-object v1, Lcom/dropbox/android/provider/l;->b:Lcom/dropbox/android/provider/l;

    if-ne v5, v1, :cond_1db

    .line 208
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Lcom/dropbox/android/filemanager/v;->g()Lcom/dropbox/android/taskqueue/i;

    move-result-object v8

    .line 210
    invoke-virtual {v8}, Lcom/dropbox/android/taskqueue/i;->d()V

    .line 211
    new-instance v1, Lcom/dropbox/android/taskqueue/MetadataTask;

    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/provider/DropboxProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v3

    const/4 v6, 0x1

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/dropbox/android/taskqueue/MetadataTask;-><init>(Landroid/content/Context;Lcom/dropbox/android/provider/g;Landroid/net/Uri;Lcom/dropbox/android/provider/u;I)V

    .line 212
    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Lcom/dropbox/android/taskqueue/i;->a(Lcom/dropbox/android/taskqueue/k;Z)Z

    move-result v2

    if-eqz v2, :cond_1db

    .line 213
    new-instance v2, Lcom/dropbox/android/provider/r;

    invoke-direct {v2, v1}, Lcom/dropbox/android/provider/r;-><init>(Lcom/dropbox/android/taskqueue/MetadataTask;)V

    .line 214
    invoke-virtual {v2}, Lcom/dropbox/android/provider/r;->start()V
    :try_end_1db
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1db} :catch_1e1

    :cond_1db
    move-object/from16 v1, v16

    .line 218
    goto/16 :goto_68

    .line 198
    :cond_1df
    const/4 v1, 0x2

    goto :goto_1a1

    .line 219
    :catch_1e1
    move-exception v1

    .line 220
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v2, v1, v3}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 221
    sget-object v2, Lcom/dropbox/android/provider/DropboxProvider;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in query() with uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    const/4 v1, 0x0

    goto/16 :goto_68

    :cond_20a
    move-object/from16 v12, p4

    move-object/from16 v11, p3

    goto/16 :goto_b1

    .line 108
    :pswitch_data_210
    .packed-switch 0x1
        :pswitch_94
        :pswitch_dd
        :pswitch_fb
        :pswitch_105
        :pswitch_10c
        :pswitch_126
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 374
    invoke-static {}, Lcom/dropbox/android/DropboxApplication;->b()V

    .line 378
    const-string v3, "canon_path = ?"

    .line 379
    new-array v4, v10, [Ljava/lang/String;

    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-direct {v0, p1}, Lcom/dropbox/android/util/Z;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 381
    if-eqz p2, :cond_1e

    .line 382
    invoke-static {p2}, Lcom/dropbox/android/provider/DropboxProvider;->a(Landroid/content/ContentValues;)V

    .line 386
    :cond_1e
    invoke-static {p1}, Lcom/dropbox/android/provider/DropboxProvider;->a(Landroid/net/Uri;)Lcom/dropbox/android/provider/l;

    move-result-object v0

    .line 387
    sget-object v1, Lcom/dropbox/android/provider/l;->a:Lcom/dropbox/android/provider/l;

    if-ne v0, v1, :cond_a3

    .line 390
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/provider/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 394
    :try_start_2e
    const-string v1, "dropbox"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_9c

    move-result-object v1

    .line 399
    if-eqz v1, :cond_108

    :try_start_41
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_102

    move-result v0

    if-eqz v0, :cond_108

    move v0, v10

    .line 403
    :goto_48
    if-eqz v1, :cond_4d

    .line 404
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 414
    :cond_4d
    :goto_4d
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 415
    if-eqz p2, :cond_9b

    .line 416
    if-eqz v0, :cond_e9

    .line 419
    if-nez p4, :cond_c4

    .line 425
    :goto_5b
    const-string v0, "path"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 426
    const-string v0, "Entries.PATH"

    const-string v2, "path"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dropbox/android/util/S;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_6e
    const-string v0, "dropbox"

    invoke-virtual {v1, v0, p2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 429
    if-eq v8, v10, :cond_94

    .line 430
    sget-object v0, Lcom/dropbox/android/provider/DropboxProvider;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows modified in update operation!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_94
    :goto_94
    invoke-virtual {p0}, Lcom/dropbox/android/provider/DropboxProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/dropbox/android/provider/t;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 443
    :cond_9b
    :goto_9b
    return v8

    .line 403
    :catchall_9c
    move-exception v0

    :goto_9d
    if-eqz v9, :cond_a2

    .line 404
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a2
    throw v0

    .line 407
    :cond_a3
    sget-object v1, Lcom/dropbox/android/provider/l;->b:Lcom/dropbox/android/provider/l;

    if-eq v0, v1, :cond_105

    .line 408
    sget-object v0, Lcom/dropbox/android/provider/DropboxProvider;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type of URI in update(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9b

    .line 422
    :cond_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 423
    array-length v0, v4

    array-length v2, p4

    invoke-static {p4, v8, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v9

    goto/16 :goto_5b

    .line 433
    :cond_e9
    const-string v0, "Entries.PATH"

    const-string v2, "path"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dropbox/android/util/S;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v0, "dropbox"

    invoke-virtual {v1, v0, v9, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 435
    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_94

    move v8, v10

    .line 436
    goto :goto_94

    .line 403
    :catchall_102
    move-exception v0

    move-object v9, v1

    goto :goto_9d

    :cond_105
    move v0, v8

    goto/16 :goto_4d

    :cond_108
    move v0, v8

    goto/16 :goto_48
.end method
