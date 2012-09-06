.class final Lcom/dropbox/android/service/h;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:Landroid/net/Uri;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    iput-object v0, p0, Lcom/dropbox/android/service/h;->g:Ljava/lang/String;

    .line 1215
    iput-object v0, p0, Lcom/dropbox/android/service/h;->h:Ljava/lang/Long;

    .line 1226
    iput-object p1, p0, Lcom/dropbox/android/service/h;->a:Ljava/io/File;

    .line 1227
    iput-object p2, p0, Lcom/dropbox/android/service/h;->b:Ljava/lang/String;

    .line 1228
    iput-object p3, p0, Lcom/dropbox/android/service/h;->c:Ljava/lang/String;

    .line 1229
    iput-object p4, p0, Lcom/dropbox/android/service/h;->d:Ljava/lang/String;

    .line 1230
    iput-wide p5, p0, Lcom/dropbox/android/service/h;->e:J

    .line 1231
    iput-object p7, p0, Lcom/dropbox/android/service/h;->f:Landroid/net/Uri;

    .line 1232
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1219
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    move-object/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Lcom/dropbox/android/service/h;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)V

    .line 1220
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/dropbox/android/service/h;->h:Ljava/lang/Long;

    .line 1221
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/dropbox/android/service/h;->g:Ljava/lang/String;

    .line 1222
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/service/h;)J
    .registers 3
    .parameter

    .prologue
    .line 1206
    iget-wide v0, p0, Lcom/dropbox/android/service/h;->e:J

    return-wide v0
.end method

.method static synthetic b(Lcom/dropbox/android/service/h;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/dropbox/android/service/h;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/dropbox/android/service/h;->g:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 1237
    :try_start_4
    iget-object v0, p0, Lcom/dropbox/android/service/h;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/dropbox/android/service/CameraUploadService;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/service/h;->g:Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_d

    .line 1242
    :cond_c
    :goto_c
    return-void

    .line 1238
    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public final a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1245
    const-string v2, "SELECT COUNT(*) FROM camera_upload WHERE server_hash = ? AND uploaded = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/android/service/h;->g:Ljava/lang/String;

    aput-object v4, v3, v1

    const-string v4, "1"

    aput-object v4, v3, v0

    invoke-static {p1, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    .line 1249
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1a

    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19
.end method

.method public final b()Lcom/dropbox/android/service/f;
    .registers 9

    .prologue
    .line 1272
    new-instance v0, Lcom/dropbox/android/service/f;

    iget-object v1, p0, Lcom/dropbox/android/service/h;->a:Ljava/io/File;

    iget-object v2, p0, Lcom/dropbox/android/service/h;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/dropbox/android/service/h;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/dropbox/android/service/h;->h:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/dropbox/android/service/h;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/dropbox/android/service/h;->f:Landroid/net/Uri;

    invoke-direct/range {v0 .. v7}, Lcom/dropbox/android/service/f;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .parameter

    .prologue
    .line 1253
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1254
    const-string v1, "local_hash"

    iget-object v2, p0, Lcom/dropbox/android/service/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string v1, "camera_upload"

    const-string v2, "server_hash = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dropbox/android/service/h;->g:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1257
    return-void
.end method

.method public final c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 8
    .parameter

    .prologue
    .line 1260
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1261
    const-string v1, "server_hash"

    iget-object v2, p0, Lcom/dropbox/android/service/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    iget-object v1, p0, Lcom/dropbox/android/service/h;->h:Ljava/lang/Long;

    if-eqz v1, :cond_24

    .line 1263
    const-string v1, "camera_upload"

    const-string v2, "_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/dropbox/android/service/h;->h:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1269
    :goto_23
    return-void

    .line 1266
    :cond_24
    const-string v1, "local_hash"

    iget-object v2, p0, Lcom/dropbox/android/service/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const-string v1, "camera_upload"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/service/h;->h:Ljava/lang/Long;

    goto :goto_23
.end method
