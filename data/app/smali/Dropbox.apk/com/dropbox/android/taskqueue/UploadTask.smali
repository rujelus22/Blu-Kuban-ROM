.class public Lcom/dropbox/android/taskqueue/UploadTask;
.super Lcom/dropbox/android/taskqueue/DbTask;
.source "panda.py"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private d:Lcom/dropbox/android/util/Z;

.field private final h:Landroid/net/Uri;

.field private i:J

.field private final j:Z

.field private k:Ldbxyzptlk/p/D;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-class v0, Lcom/dropbox/android/taskqueue/UploadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/taskqueue/UploadTask;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/DbTask;-><init>()V

    .line 68
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/dropbox/android/taskqueue/UploadTask;->i:J

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/UploadTask;->k:Ldbxyzptlk/p/D;

    .line 74
    iput-object p2, p0, Lcom/dropbox/android/taskqueue/UploadTask;->c:Ljava/lang/String;

    .line 75
    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    .line 82
    :goto_1f
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/UploadTask;->b:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/dropbox/android/util/Z;

    invoke-direct {v0, p2}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/UploadTask;->g:Landroid/net/Uri;

    .line 85
    iput-boolean p4, p0, Lcom/dropbox/android/taskqueue/UploadTask;->j:Z

    .line 86
    return-void

    .line 79
    :cond_2f
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    goto :goto_1f
.end method

.method private a(Ljava/lang/String;Ljava/io/FileInputStream;JZLjava/lang/String;)Ldbxyzptlk/p/D;
    .registers 23
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    new-instance v8, Lcom/dropbox/android/taskqueue/W;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/dropbox/android/taskqueue/W;-><init>(Lcom/dropbox/android/taskqueue/UploadTask;)V

    .line 152
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v3

    iget-object v3, v3, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    .line 153
    const-wide/32 v4, 0x800000

    cmp-long v4, p3, v4

    if-lez v4, :cond_29

    .line 154
    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2, v8}, Ldbxyzptlk/p/a;->a(Ljava/io/FileInputStream;JLdbxyzptlk/l/q;)Ldbxyzptlk/p/g;

    move-result-object v8

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v3 .. v8}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;Ljava/io/FileInputStream;ZLjava/lang/String;Ldbxyzptlk/p/g;)Ldbxyzptlk/p/D;

    move-result-object v3

    .line 159
    :goto_28
    return-object v3

    .line 156
    :cond_29
    if-eqz p5, :cond_3c

    .line 157
    new-instance v9, Ldbxyzptlk/p/A;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;Ljava/io/InputStream;JLdbxyzptlk/l/q;)Ldbxyzptlk/l/p;

    move-result-object v3

    invoke-direct {v9, v3}, Ldbxyzptlk/p/A;-><init>(Ldbxyzptlk/l/p;)V

    move-object v3, v9

    goto :goto_28

    .line 159
    :cond_3c
    new-instance v4, Ldbxyzptlk/p/A;

    move-object v9, v3

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-wide/from16 v12, p3

    move-object/from16 v14, p6

    move-object v15, v8

    invoke-virtual/range {v9 .. v15}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;Ljava/io/InputStream;JLjava/lang/String;Ldbxyzptlk/l/q;)Ldbxyzptlk/l/p;

    move-result-object v3

    invoke-direct {v4, v3}, Ldbxyzptlk/p/A;-><init>(Ldbxyzptlk/l/p;)V

    move-object v3, v4

    goto :goto_28
.end method

.method private a(J)Z
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 129
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/UploadTask;->b:Landroid/content/Context;

    invoke-static {v1}, Ldbxyzptlk/j/m;->b(Landroid/content/Context;)Ldbxyzptlk/j/m;

    move-result-object v1

    invoke-virtual {v1}, Ldbxyzptlk/j/m;->c()Ldbxyzptlk/p/x;

    move-result-object v1

    .line 130
    if-nez v1, :cond_e

    .line 135
    :cond_d
    :goto_d
    return v0

    :cond_e
    iget-wide v2, v1, Ldbxyzptlk/l/c;->e:J

    add-long/2addr v2, p1

    iget-wide v4, v1, Ldbxyzptlk/l/c;->d:J

    add-long/2addr v2, v4

    iget-wide v4, v1, Ldbxyzptlk/l/c;->c:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_d

    const/4 v0, 0x0

    goto :goto_d
.end method

.method private j()Ljava/lang/String;
    .registers 4

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/UploadTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/UploadTask;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/dropbox/android/util/aa;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static restore(Landroid/content/Context;JLjava/lang/String;)Lcom/dropbox/android/taskqueue/UploadTask;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 475
    new-instance v0, Ldbxyzptlk/C/b;

    invoke-direct {v0}, Ldbxyzptlk/C/b;-><init>()V

    .line 478
    :try_start_5
    invoke-virtual {v0, p3}, Ldbxyzptlk/C/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/B/c;

    .line 479
    new-instance v3, Lcom/dropbox/android/taskqueue/UploadTask;

    const-string v1, "mDropboxDir"

    invoke-virtual {v0, v1}, Ldbxyzptlk/B/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "mLocalUri"

    invoke-virtual {v0, v2}, Ldbxyzptlk/B/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "mOverwrite"

    invoke-virtual {v0, v4}, Ldbxyzptlk/B/c;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/dropbox/android/taskqueue/UploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 483
    invoke-virtual {v3, p1, p2}, Lcom/dropbox/android/taskqueue/UploadTask;->b(J)V
    :try_end_2f
    .catch Ldbxyzptlk/C/c; {:try_start_5 .. :try_end_2f} :catch_30

    .line 484
    return-object v3

    .line 485
    :catch_30
    move-exception v0

    .line 486
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final b()V
    .registers 2

    .prologue
    .line 120
    monitor-enter p0

    .line 121
    :try_start_1
    invoke-super {p0}, Lcom/dropbox/android/taskqueue/DbTask;->b()V

    .line 122
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/UploadTask;->k:Ldbxyzptlk/p/D;

    if-eqz v0, :cond_d

    .line 123
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/UploadTask;->k:Ldbxyzptlk/p/D;

    invoke-interface {v0}, Ldbxyzptlk/p/D;->a()V

    .line 125
    :cond_d
    monitor-exit p0

    .line 126
    return-void

    .line 125
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public final c()Lcom/dropbox/android/taskqueue/m;
    .registers 18

    .prologue
    .line 164
    invoke-super/range {p0 .. p0}, Lcom/dropbox/android/taskqueue/DbTask;->c()Lcom/dropbox/android/taskqueue/m;

    .line 166
    new-instance v14, Lcom/dropbox/android/taskqueue/F;

    invoke-direct {v14}, Lcom/dropbox/android/taskqueue/F;-><init>()V

    .line 168
    :try_start_8
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->a()V

    .line 170
    sget-object v1, Lcom/dropbox/android/taskqueue/UploadTask;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uploading file from URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_52e

    .line 175
    :try_start_27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/taskqueue/UploadTask;->b:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/dropbox/android/util/aa;->a(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_52e
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_32} :catch_189

    move-result-object v15

    .line 180
    :try_start_33
    invoke-direct/range {p0 .. p0}, Lcom/dropbox/android/taskqueue/UploadTask;->j()Ljava/lang/String;

    move-result-object v16

    .line 181
    const/4 v3, 0x0

    .line 184
    const/4 v11, 0x0

    .line 185
    const/4 v2, 0x0

    .line 186
    const/4 v4, 0x0

    .line 187
    const/4 v1, 0x0

    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 191
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 192
    if-eqz v7, :cond_196

    if-eqz v5, :cond_196

    const-string v6, "content"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_196

    const-string v6, "com.dropbox.android.Dropbox"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_196

    const/4 v5, 0x1

    move v6, v5

    .line 194
    :goto_62
    if-eqz v7, :cond_19a

    const-string v5, "file"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/android/util/aa;->p(Ljava/lang/String;)Z
    :try_end_77
    .catchall {:try_start_33 .. :try_end_77} :catchall_52e

    move-result v5

    if-eqz v5, :cond_19a

    const/4 v5, 0x1

    .line 196
    :goto_7b
    if-nez v6, :cond_7f

    if-eqz v5, :cond_57e

    .line 198
    :cond_7f
    :try_start_7f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dropbox/android/taskqueue/UploadTask;->b:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/dropbox/android/util/aa;->b(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;
    :try_end_8a
    .catchall {:try_start_7f .. :try_end_8a} :catchall_52e
    .catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_8a} :catch_1a0
    .catch Ljava/lang/SecurityException; {:try_start_7f .. :try_end_8a} :catch_1ac

    move-result-object v13

    .line 199
    if-eqz v13, :cond_57a

    .line 200
    :try_start_8d
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_52e
    .catch Ljava/io/FileNotFoundException; {:try_start_8d .. :try_end_92} :catch_542
    .catch Ljava/lang/SecurityException; {:try_start_8d .. :try_end_92} :catch_1ac

    .line 201
    :try_start_92
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/dropbox/android/taskqueue/UploadTask;->i:J

    .line 202
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_19d

    invoke-static {v13}, Lcom/dropbox/android/util/aa;->a(Ljava/io/File;)Z
    :try_end_a3
    .catchall {:try_start_92 .. :try_end_a3} :catchall_52e
    .catch Ljava/io/FileNotFoundException; {:try_start_92 .. :try_end_a3} :catch_549
    .catch Ljava/lang/SecurityException; {:try_start_92 .. :try_end_a3} :catch_1ac

    move-result v1

    if-eqz v1, :cond_19d

    const/4 v9, 0x1

    .line 203
    :goto_a7
    if-eqz v9, :cond_575

    .line 204
    :try_start_a9
    invoke-static/range {v16 .. v16}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_ac
    .catchall {:try_start_a9 .. :try_end_ac} :catchall_52e
    .catch Ljava/io/FileNotFoundException; {:try_start_a9 .. :try_end_ac} :catch_54f
    .catch Ljava/lang/SecurityException; {:try_start_a9 .. :try_end_ac} :catch_1ac

    move-result-object v10

    .line 205
    :try_start_ad
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/provider/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 206
    if-nez v11, :cond_56f

    .line 207
    const-string v2, "dropbox"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "local_revision"

    aput-object v5, v3, v4

    const-string v4, "canon_path = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v10, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 212
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_56c

    .line 213
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_da
    .catchall {:try_start_ad .. :try_end_da} :catchall_52e
    .catch Ljava/io/FileNotFoundException; {:try_start_ad .. :try_end_da} :catch_554
    .catch Ljava/lang/SecurityException; {:try_start_ad .. :try_end_da} :catch_1ac

    move-result-object v1

    .line 215
    :goto_db
    :try_start_db
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_52e
    .catch Ljava/io/FileNotFoundException; {:try_start_db .. :try_end_de} :catch_558
    .catch Ljava/lang/SecurityException; {:try_start_db .. :try_end_de} :catch_1ac

    move-object v2, v10

    move-object v3, v1

    move-object v4, v12

    move v1, v9

    :goto_e2
    move v10, v1

    move-object v8, v13

    move-object v11, v2

    move-object v7, v3

    move-object v2, v4

    .line 226
    :goto_e7
    const/4 v1, 0x0

    .line 227
    if-nez v2, :cond_569

    .line 229
    :try_start_ea
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/android/taskqueue/UploadTask;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 230
    if-eqz v4, :cond_160

    .line 231
    sget-object v3, Lcom/dropbox/android/taskqueue/UploadTask;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AssetFileDescriptor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_12b
    .catchall {:try_start_ea .. :try_end_12b} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_12b} :catch_1d5
    .catch Ljava/lang/NullPointerException; {:try_start_ea .. :try_end_12b} :catch_1ca
    .catch Ljava/lang/SecurityException; {:try_start_ea .. :try_end_12b} :catch_1d8

    move-result-object v3

    .line 233
    :try_start_12c
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/dropbox/android/taskqueue/UploadTask;->i:J

    .line 234
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/dropbox/android/taskqueue/UploadTask;->i:J

    const-wide/16 v12, -0x1

    cmp-long v2, v4, v12

    if-nez v2, :cond_566

    .line 237
    invoke-static {}, Lcom/dropbox/android/util/ab;->a()Ljava/io/File;
    :try_end_141
    .catchall {:try_start_12c .. :try_end_141} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_12c .. :try_end_141} :catch_53e
    .catch Ljava/lang/NullPointerException; {:try_start_12c .. :try_end_141} :catch_53a
    .catch Ljava/lang/SecurityException; {:try_start_12c .. :try_end_141} :catch_1d8

    move-result-object v1

    .line 238
    if-eqz v1, :cond_1cd

    .line 240
    const/16 v2, 0x1000

    :try_start_146
    new-array v2, v2, [B

    .line 242
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 243
    :goto_14d
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_1b9

    .line 244
    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_157
    .catchall {:try_start_146 .. :try_end_157} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_146 .. :try_end_157} :catch_158
    .catch Ljava/lang/NullPointerException; {:try_start_146 .. :try_end_157} :catch_53a
    .catch Ljava/lang/SecurityException; {:try_start_146 .. :try_end_157} :catch_1d8

    goto :goto_14d

    .line 249
    :catch_158
    move-exception v2

    .line 250
    const/4 v2, 0x0

    .line 251
    const-wide/16 v3, -0x1

    :try_start_15c
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/dropbox/android/taskqueue/UploadTask;->i:J
    :try_end_160
    .catchall {:try_start_15c .. :try_end_160} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_160} :catch_1d5
    .catch Ljava/lang/NullPointerException; {:try_start_15c .. :try_end_160} :catch_1ca
    .catch Ljava/lang/SecurityException; {:try_start_15c .. :try_end_160} :catch_1d8

    :cond_160
    :goto_160
    move-object v9, v1

    .line 269
    :goto_161
    if-nez v2, :cond_563

    .line 271
    :try_start_163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/dropbox/android/taskqueue/UploadTask;->b:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/dropbox/android/util/aa;->b(Landroid/net/Uri;Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 272
    if-eqz v3, :cond_560

    .line 273
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_17d

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1e5

    .line 274
    :cond_17d
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_184
    .catchall {:try_start_163 .. :try_end_184} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_184} :catch_20c
    .catch Ljava/lang/SecurityException; {:try_start_163 .. :try_end_184} :catch_20f

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    :goto_188
    return-object v1

    .line 176
    :catch_189
    move-exception v1

    .line 177
    :try_start_18a
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->f:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_191
    .catchall {:try_start_18a .. :try_end_191} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto :goto_188

    .line 192
    :cond_196
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_62

    .line 194
    :cond_19a
    const/4 v5, 0x0

    goto/16 :goto_7b

    .line 202
    :cond_19d
    const/4 v9, 0x0

    goto/16 :goto_a7

    .line 219
    :catch_1a0
    move-exception v5

    move v9, v1

    move-object v10, v2

    move-object v12, v3

    move-object v1, v4

    :goto_1a5
    move-object v8, v1

    move-object v7, v11

    move-object v2, v12

    move-object v11, v10

    move v10, v9

    .line 222
    goto/16 :goto_e7

    .line 220
    :catch_1ac
    move-exception v1

    .line 221
    :try_start_1ad
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->f:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_1b4
    .catchall {:try_start_1ad .. :try_end_1b4} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto :goto_188

    .line 246
    :cond_1b9
    :try_start_1b9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 247
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c1
    .catchall {:try_start_1b9 .. :try_end_1c1} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_1b9 .. :try_end_1c1} :catch_158
    .catch Ljava/lang/NullPointerException; {:try_start_1b9 .. :try_end_1c1} :catch_53a
    .catch Ljava/lang/SecurityException; {:try_start_1b9 .. :try_end_1c1} :catch_1d8

    .line 248
    :try_start_1c1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/dropbox/android/taskqueue/UploadTask;->i:J
    :try_end_1c9
    .catchall {:try_start_1c1 .. :try_end_1c9} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1c9} :catch_158
    .catch Ljava/lang/NullPointerException; {:try_start_1c1 .. :try_end_1c9} :catch_1ca
    .catch Ljava/lang/SecurityException; {:try_start_1c1 .. :try_end_1c9} :catch_1d8

    goto :goto_160

    .line 260
    :catch_1ca
    move-exception v3

    :goto_1cb
    move-object v9, v1

    .line 265
    goto :goto_161

    .line 254
    :cond_1cd
    const/4 v2, 0x0

    .line 255
    const-wide/16 v3, -0x1

    :try_start_1d0
    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/dropbox/android/taskqueue/UploadTask;->i:J
    :try_end_1d4
    .catchall {:try_start_1d0 .. :try_end_1d4} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_1d0 .. :try_end_1d4} :catch_1d5
    .catch Ljava/lang/NullPointerException; {:try_start_1d0 .. :try_end_1d4} :catch_1ca
    .catch Ljava/lang/SecurityException; {:try_start_1d0 .. :try_end_1d4} :catch_1d8

    goto :goto_160

    .line 259
    :catch_1d5
    move-exception v3

    :goto_1d6
    move-object v9, v1

    .line 265
    goto :goto_161

    .line 263
    :catch_1d8
    move-exception v1

    .line 264
    :try_start_1d9
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->f:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_1e0
    .catchall {:try_start_1d9 .. :try_end_1e0} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto :goto_188

    .line 277
    :cond_1e5
    :try_start_1e5
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1ea
    .catchall {:try_start_1e5 .. :try_end_1ea} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_1e5 .. :try_end_1ea} :catch_20c
    .catch Ljava/lang/SecurityException; {:try_start_1e5 .. :try_end_1ea} :catch_20f

    .line 278
    :try_start_1ea
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/dropbox/android/taskqueue/UploadTask;->i:J
    :try_end_1f2
    .catchall {:try_start_1ea .. :try_end_1f2} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_1f2} :catch_536
    .catch Ljava/lang/SecurityException; {:try_start_1ea .. :try_end_1f2} :catch_20f

    :goto_1f2
    move-object v3, v1

    .line 287
    :goto_1f3
    if-eqz v3, :cond_1ff

    :try_start_1f5
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/dropbox/android/taskqueue/UploadTask;->i:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-gez v1, :cond_21d

    .line 288
    :cond_1ff
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_206
    .catchall {:try_start_1f5 .. :try_end_206} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 280
    :catch_20c
    move-exception v1

    :goto_20d
    move-object v3, v2

    .line 283
    goto :goto_1f3

    .line 281
    :catch_20f
    move-exception v1

    .line 282
    :try_start_210
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->f:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_217
    .catchall {:try_start_210 .. :try_end_217} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 292
    :cond_21d
    :try_start_21d
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/dropbox/android/taskqueue/UploadTask;->i:J

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/taskqueue/UploadTask;->a(J)Z
    :try_end_226
    .catchall {:try_start_21d .. :try_end_226} :catchall_52e

    move-result v1

    if-nez v1, :cond_261

    .line 295
    :try_start_229
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/filemanager/a;->c()Ldbxyzptlk/p/x;

    .line 296
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/dropbox/android/taskqueue/UploadTask;->i:J

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/dropbox/android/taskqueue/UploadTask;->a(J)Z

    move-result v1

    if-nez v1, :cond_261

    .line 297
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dropbox/android/taskqueue/UploadTask;->e:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/dropbox/android/taskqueue/UploadTask;->e:I

    .line 298
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->k:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_24d
    .catchall {:try_start_229 .. :try_end_24d} :catchall_52e
    .catch Ldbxyzptlk/m/a; {:try_start_229 .. :try_end_24d} :catch_253

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 301
    :catch_253
    move-exception v1

    .line 303
    :try_start_254
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->h:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_25b
    .catchall {:try_start_254 .. :try_end_25b} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 307
    :cond_261
    :try_start_261
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/taskqueue/UploadTask;->o()Z

    move-result v1

    if-eqz v1, :cond_270

    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/taskqueue/UploadTask;->s()Lcom/dropbox/android/taskqueue/m;
    :try_end_26a
    .catchall {:try_start_261 .. :try_end_26a} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 311
    :cond_270
    :try_start_270
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/taskqueue/UploadTask;->r()V

    .line 313
    sget-object v1, Lcom/dropbox/android/taskqueue/UploadTask;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uploading uri "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/android/taskqueue/UploadTask;->c:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " as "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a7
    .catchall {:try_start_270 .. :try_end_2a7} :catchall_52e

    .line 317
    :try_start_2a7
    monitor-enter p0
    :try_end_2a8
    .catchall {:try_start_2a7 .. :try_end_2a8} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_2a7 .. :try_end_2a8} :catch_2e9
    .catch Ldbxyzptlk/m/b; {:try_start_2a7 .. :try_end_2a8} :catch_419
    .catch Ldbxyzptlk/m/e; {:try_start_2a7 .. :try_end_2a8} :catch_443
    .catch Ldbxyzptlk/m/i; {:try_start_2a7 .. :try_end_2a8} :catch_454
    .catch Ldbxyzptlk/m/g; {:try_start_2a7 .. :try_end_2a8} :catch_469
    .catch Ldbxyzptlk/m/d; {:try_start_2a7 .. :try_end_2a8} :catch_4c5
    .catch Ldbxyzptlk/m/a; {:try_start_2a7 .. :try_end_2a8} :catch_4f5

    .line 318
    :try_start_2a8
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/taskqueue/UploadTask;->o()Z

    move-result v1

    if-eqz v1, :cond_2b8

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/taskqueue/UploadTask;->s()Lcom/dropbox/android/taskqueue/m;

    move-result-object v1

    monitor-exit p0
    :try_end_2b3
    .catchall {:try_start_2a8 .. :try_end_2b3} :catchall_2e6

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 321
    :cond_2b8
    :try_start_2b8
    monitor-exit p0
    :try_end_2b9
    .catchall {:try_start_2b8 .. :try_end_2b9} :catchall_2e6

    .line 325
    :try_start_2b9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/dropbox/android/taskqueue/UploadTask;->j:Z

    if-nez v1, :cond_2c7

    if-eqz v10, :cond_2fe

    invoke-static {v7}, Lcom/dropbox/android/util/aN;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2fe

    .line 330
    :cond_2c7
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/dropbox/android/taskqueue/UploadTask;->i:J

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Ljava/lang/String;Ljava/io/FileInputStream;JZLjava/lang/String;)Ldbxyzptlk/p/D;

    move-result-object v1

    .line 338
    :goto_2d5
    monitor-enter p0
    :try_end_2d6
    .catchall {:try_start_2b9 .. :try_end_2d6} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_2b9 .. :try_end_2d6} :catch_2e9
    .catch Ldbxyzptlk/m/b; {:try_start_2b9 .. :try_end_2d6} :catch_419
    .catch Ldbxyzptlk/m/e; {:try_start_2b9 .. :try_end_2d6} :catch_443
    .catch Ldbxyzptlk/m/i; {:try_start_2b9 .. :try_end_2d6} :catch_454
    .catch Ldbxyzptlk/m/g; {:try_start_2b9 .. :try_end_2d6} :catch_469
    .catch Ldbxyzptlk/m/d; {:try_start_2b9 .. :try_end_2d6} :catch_4c5
    .catch Ldbxyzptlk/m/a; {:try_start_2b9 .. :try_end_2d6} :catch_4f5

    .line 339
    :try_start_2d6
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/taskqueue/UploadTask;->o()Z

    move-result v2

    if-eqz v2, :cond_30c

    .line 340
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/taskqueue/UploadTask;->s()Lcom/dropbox/android/taskqueue/m;

    move-result-object v1

    monitor-exit p0
    :try_end_2e1
    .catchall {:try_start_2d6 .. :try_end_2e1} :catchall_416

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 321
    :catchall_2e6
    move-exception v1

    :try_start_2e7
    monitor-exit p0
    :try_end_2e8
    .catchall {:try_start_2e7 .. :try_end_2e8} :catchall_2e6

    :try_start_2e8
    throw v1
    :try_end_2e9
    .catchall {:try_start_2e8 .. :try_end_2e9} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_2e8 .. :try_end_2e9} :catch_2e9
    .catch Ldbxyzptlk/m/b; {:try_start_2e8 .. :try_end_2e9} :catch_419
    .catch Ldbxyzptlk/m/e; {:try_start_2e8 .. :try_end_2e9} :catch_443
    .catch Ldbxyzptlk/m/i; {:try_start_2e8 .. :try_end_2e9} :catch_454
    .catch Ldbxyzptlk/m/g; {:try_start_2e8 .. :try_end_2e9} :catch_469
    .catch Ldbxyzptlk/m/d; {:try_start_2e8 .. :try_end_2e9} :catch_4c5
    .catch Ldbxyzptlk/m/a; {:try_start_2e8 .. :try_end_2e9} :catch_4f5

    .line 348
    :catch_2e9
    move-exception v1

    .line 349
    :try_start_2ea
    sget-object v2, Lcom/dropbox/android/taskqueue/UploadTask;->a:Ljava/lang/String;

    const-string v3, "IO exception while starting upload"

    invoke-static {v2, v3, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_2f8
    .catchall {:try_start_2ea .. :try_end_2f8} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 335
    :cond_2fe
    :try_start_2fe
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/dropbox/android/taskqueue/UploadTask;->i:J

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct/range {v1 .. v7}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Ljava/lang/String;Ljava/io/FileInputStream;JZLjava/lang/String;)Ldbxyzptlk/p/D;
    :try_end_30a
    .catchall {:try_start_2fe .. :try_end_30a} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_2fe .. :try_end_30a} :catch_2e9
    .catch Ldbxyzptlk/m/b; {:try_start_2fe .. :try_end_30a} :catch_419
    .catch Ldbxyzptlk/m/e; {:try_start_2fe .. :try_end_30a} :catch_443
    .catch Ldbxyzptlk/m/i; {:try_start_2fe .. :try_end_30a} :catch_454
    .catch Ldbxyzptlk/m/g; {:try_start_2fe .. :try_end_30a} :catch_469
    .catch Ldbxyzptlk/m/d; {:try_start_2fe .. :try_end_30a} :catch_4c5
    .catch Ldbxyzptlk/m/a; {:try_start_2fe .. :try_end_30a} :catch_4f5

    move-result-object v1

    goto :goto_2d5

    .line 342
    :cond_30c
    :try_start_30c
    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/dropbox/android/taskqueue/UploadTask;->k:Ldbxyzptlk/p/D;

    .line 343
    monitor-exit p0
    :try_end_311
    .catchall {:try_start_30c .. :try_end_311} :catchall_416

    .line 345
    :try_start_311
    const-string v1, "net.start"

    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/dropbox/android/util/h;->b(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/util/r;->c()V

    .line 346
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/android/taskqueue/UploadTask;->k:Ldbxyzptlk/p/D;

    invoke-interface {v1}, Ldbxyzptlk/p/D;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldbxyzptlk/l/k;

    .line 347
    const-string v2, "net.end"

    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/dropbox/android/util/h;->b(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/util/r;->c()V
    :try_end_331
    .catchall {:try_start_311 .. :try_end_331} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_311 .. :try_end_331} :catch_2e9
    .catch Ldbxyzptlk/m/b; {:try_start_311 .. :try_end_331} :catch_419
    .catch Ldbxyzptlk/m/e; {:try_start_311 .. :try_end_331} :catch_443
    .catch Ldbxyzptlk/m/i; {:try_start_311 .. :try_end_331} :catch_454
    .catch Ldbxyzptlk/m/g; {:try_start_311 .. :try_end_331} :catch_469
    .catch Ldbxyzptlk/m/d; {:try_start_311 .. :try_end_331} :catch_4c5
    .catch Ldbxyzptlk/m/a; {:try_start_311 .. :try_end_331} :catch_4f5

    .line 394
    :try_start_331
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_334
    .catchall {:try_start_331 .. :try_end_334} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_331 .. :try_end_334} :catch_533

    .line 397
    :goto_334
    if-eqz v9, :cond_339

    .line 398
    :try_start_336
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 404
    :cond_339
    new-instance v2, Lcom/dropbox/android/util/Z;

    iget-object v3, v1, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/dropbox/android/taskqueue/UploadTask;->d:Lcom/dropbox/android/util/Z;

    .line 405
    if-eqz v10, :cond_55d

    .line 406
    new-instance v2, Lcom/dropbox/android/util/ap;

    invoke-direct {v2, v8}, Lcom/dropbox/android/util/ap;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Lcom/dropbox/android/util/ap;->e()Lcom/dropbox/android/util/Z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    iget-object v3, v1, Ldbxyzptlk/l/k;->n:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_55d

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/taskqueue/UploadTask;->d:Lcom/dropbox/android/util/Z;

    invoke-virtual {v2}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/util/ap;->a()Ljava/io/File;

    move-result-object v2

    .line 410
    invoke-virtual {v8, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_528

    .line 417
    :goto_36d
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 418
    const-string v4, "_data"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 419
    const-string v4, "local_hash"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 420
    const-string v4, "local_modified"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 421
    const-string v4, "local_revision"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lcom/dropbox/android/provider/g;->a()Lcom/dropbox/android/provider/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/dropbox/android/provider/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 423
    const-string v5, "path"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a1

    .line 424
    const-string v5, "Entries.PATH"

    const-string v6, "path"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/dropbox/android/util/S;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_3a1
    const-string v5, "dropbox"

    const-string v6, "canon_path = ?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v11, v7, v8

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 434
    :goto_3ae
    invoke-static {v1}, Lcom/dropbox/android/filemanager/LocalEntry;->a(Ldbxyzptlk/l/k;)Landroid/content/ContentValues;

    move-result-object v3

    .line 435
    if-eqz v10, :cond_3f8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3f8

    .line 436
    const-string v4, "local_revision"

    iget-object v1, v1, Ldbxyzptlk/l/k;->r:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v1, "_data"

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 439
    const-string v1, "local_modified"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 440
    const-string v1, "local_hash"

    invoke-static {v2}, Lcom/dropbox/android/util/ab;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    sget-object v1, Lcom/dropbox/android/taskqueue/UploadTask;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uploaded file modified at: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_3f8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/android/taskqueue/UploadTask;->d:Lcom/dropbox/android/util/Z;

    invoke-virtual {v1}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v1

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/dropbox/android/taskqueue/UploadTask;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/taskqueue/UploadTask;->g()Lcom/dropbox/android/taskqueue/m;
    :try_end_410
    .catchall {:try_start_336 .. :try_end_410} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 343
    :catchall_416
    move-exception v1

    :try_start_417
    monitor-exit p0
    :try_end_418
    .catchall {:try_start_417 .. :try_end_418} :catchall_416

    :try_start_418
    throw v1
    :try_end_419
    .catchall {:try_start_418 .. :try_end_419} :catchall_52e
    .catch Ljava/io/IOException; {:try_start_418 .. :try_end_419} :catch_2e9
    .catch Ldbxyzptlk/m/b; {:try_start_418 .. :try_end_419} :catch_419
    .catch Ldbxyzptlk/m/e; {:try_start_418 .. :try_end_419} :catch_443
    .catch Ldbxyzptlk/m/i; {:try_start_418 .. :try_end_419} :catch_454
    .catch Ldbxyzptlk/m/g; {:try_start_418 .. :try_end_419} :catch_469
    .catch Ldbxyzptlk/m/d; {:try_start_418 .. :try_end_419} :catch_4c5
    .catch Ldbxyzptlk/m/a; {:try_start_418 .. :try_end_419} :catch_4f5

    .line 351
    :catch_419
    move-exception v1

    .line 352
    :try_start_41a
    sget-object v2, Lcom/dropbox/android/taskqueue/UploadTask;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IO Exception uploading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 353
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->c:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_43d
    .catchall {:try_start_41a .. :try_end_43d} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 354
    :catch_443
    move-exception v1

    .line 355
    :try_start_444
    sget-object v1, Lcom/dropbox/android/taskqueue/UploadTask;->a:Ljava/lang/String;

    const-string v2, "Upload canceled"

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/android/taskqueue/UploadTask;->s()Lcom/dropbox/android/taskqueue/m;
    :try_end_44e
    .catchall {:try_start_444 .. :try_end_44e} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 357
    :catch_454
    move-exception v1

    .line 358
    :try_start_455
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dropbox/android/taskqueue/UploadTask;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/dropbox/android/util/b;->b(Landroid/content/Context;)V

    .line 359
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_463
    .catchall {:try_start_455 .. :try_end_463} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 360
    :catch_469
    move-exception v1

    .line 361
    :try_start_46a
    sget-object v2, Lcom/dropbox/android/taskqueue/UploadTask;->a:Ljava/lang/String;

    const-string v3, "Server exception uploading."

    invoke-static {v2, v3}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget v2, v1, Ldbxyzptlk/m/g;->b:I

    packed-switch v2, :pswitch_data_586

    .line 377
    :pswitch_476
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v2, v1, v3}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 378
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->d:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_486
    .catchall {:try_start_46a .. :try_end_486} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 364
    :pswitch_48c
    :try_start_48c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/dropbox/android/taskqueue/UploadTask;->e:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/dropbox/android/taskqueue/UploadTask;->e:I
    :try_end_496
    .catchall {:try_start_48c .. :try_end_496} :catchall_52e

    .line 366
    :try_start_496
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dropbox/android/filemanager/a;->c()Ldbxyzptlk/p/x;
    :try_end_49d
    .catchall {:try_start_496 .. :try_end_49d} :catchall_52e
    .catch Ldbxyzptlk/m/a; {:try_start_496 .. :try_end_49d} :catch_4aa

    .line 372
    :try_start_49d
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->k:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_4a4
    .catchall {:try_start_49d .. :try_end_4a4} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 367
    :catch_4aa
    move-exception v1

    .line 370
    :try_start_4ab
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->h:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_4b2
    .catchall {:try_start_4ab .. :try_end_4b2} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 375
    :pswitch_4b8
    :try_start_4b8
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->h:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_4bf
    .catchall {:try_start_4b8 .. :try_end_4bf} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 380
    :catch_4c5
    move-exception v1

    .line 381
    :try_start_4c6
    invoke-virtual {v1}, Ldbxyzptlk/m/d;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "5xx"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4df

    .line 382
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->h:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_4d9
    .catchall {:try_start_4c6 .. :try_end_4d9} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 384
    :cond_4df
    :try_start_4df
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v2, v1, v3}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 385
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->d:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_4ef
    .catchall {:try_start_4df .. :try_end_4ef} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 387
    :catch_4f5
    move-exception v1

    .line 388
    :try_start_4f6
    sget-object v2, Lcom/dropbox/android/taskqueue/UploadTask;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception uploading: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v2

    sget-object v3, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v2, v1, v3}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 390
    sget-object v1, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_522
    .catchall {:try_start_4f6 .. :try_end_522} :catchall_52e

    move-result-object v1

    .line 449
    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_188

    .line 413
    :cond_528
    :try_start_528
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_52b
    .catchall {:try_start_528 .. :try_end_52b} :catchall_52e

    move-object v2, v8

    goto/16 :goto_36d

    .line 449
    :catchall_52e
    move-exception v1

    invoke-virtual {v14}, Lcom/dropbox/android/taskqueue/F;->b()V

    throw v1

    .line 395
    :catch_533
    move-exception v2

    goto/16 :goto_334

    .line 280
    :catch_536
    move-exception v2

    move-object v2, v1

    goto/16 :goto_20d

    .line 260
    :catch_53a
    move-exception v2

    move-object v2, v3

    goto/16 :goto_1cb

    .line 259
    :catch_53e
    move-exception v2

    move-object v2, v3

    goto/16 :goto_1d6

    .line 219
    :catch_542
    move-exception v4

    move v9, v1

    move-object v10, v2

    move-object v12, v3

    move-object v1, v13

    goto/16 :goto_1a5

    :catch_549
    move-exception v3

    move v9, v1

    move-object v10, v2

    move-object v1, v13

    goto/16 :goto_1a5

    :catch_54f
    move-exception v1

    move-object v1, v13

    move-object v10, v2

    goto/16 :goto_1a5

    :catch_554
    move-exception v1

    move-object v1, v13

    goto/16 :goto_1a5

    :catch_558
    move-exception v2

    move-object v11, v1

    move-object v1, v13

    goto/16 :goto_1a5

    :cond_55d
    move-object v2, v8

    goto/16 :goto_3ae

    :cond_560
    move-object v1, v2

    goto/16 :goto_1f2

    :cond_563
    move-object v3, v2

    goto/16 :goto_1f3

    :cond_566
    move-object v2, v3

    goto/16 :goto_160

    :cond_569
    move-object v9, v1

    goto/16 :goto_161

    :cond_56c
    move-object v1, v11

    goto/16 :goto_db

    :cond_56f
    move v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    goto/16 :goto_e2

    :cond_575
    move v1, v9

    move-object v3, v11

    move-object v4, v12

    goto/16 :goto_e2

    :cond_57a
    move-object v4, v3

    move-object v3, v11

    goto/16 :goto_e2

    :cond_57e
    move v10, v1

    move-object v8, v4

    move-object v7, v11

    move-object v11, v2

    move-object v2, v3

    goto/16 :goto_e7

    .line 362
    nop

    :pswitch_data_586
    .packed-switch 0x1f6
        :pswitch_4b8
        :pswitch_4b8
        :pswitch_476
        :pswitch_476
        :pswitch_476
        :pswitch_48c
    .end packed-switch
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/UploadTask;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ldbxyzptlk/i/i;
    .registers 4

    .prologue
    .line 510
    new-instance v0, Ldbxyzptlk/i/i;

    new-instance v1, Lcom/dropbox/android/util/Z;

    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/UploadTask;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ldbxyzptlk/i/i;-><init>(Lcom/dropbox/android/util/Z;)V

    return-object v0
.end method

.method protected final f()J
    .registers 3

    .prologue
    .line 141
    iget-wide v0, p0, Lcom/dropbox/android/taskqueue/UploadTask;->i:J

    return-wide v0
.end method

.method public final h()Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 455
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 456
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/UploadTask;->d:Lcom/dropbox/android/util/Z;

    if-eqz v1, :cond_1a

    .line 457
    sget-object v1, Lcom/dropbox/android/provider/f;->d:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/UploadTask;->d:Lcom/dropbox/android/util/Z;

    invoke-virtual {v2}, Lcom/dropbox/android/util/Z;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/android/provider/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    :cond_1a
    sget-object v1, Lcom/dropbox/android/provider/f;->e:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget-object v1, Lcom/dropbox/android/provider/f;->f:Lcom/dropbox/android/provider/a;

    iget-object v1, v1, Lcom/dropbox/android/provider/a;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/dropbox/android/taskqueue/UploadTask;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 461
    return-object v0
.end method

.method public final i()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    return-object v0
.end method

.method public final j_()Lcom/dropbox/android/taskqueue/o;
    .registers 2

    .prologue
    .line 105
    invoke-static {}, Lcom/dropbox/android/service/t;->a()Lcom/dropbox/android/service/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/service/t;->b()Lcom/dropbox/android/service/w;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/dropbox/android/service/w;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 107
    sget-object v0, Lcom/dropbox/android/taskqueue/o;->a:Lcom/dropbox/android/taskqueue/o;

    .line 109
    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/dropbox/android/taskqueue/o;->c:Lcom/dropbox/android/taskqueue/o;

    goto :goto_10
.end method

.method public final k()Ljava/lang/String;
    .registers 4

    .prologue
    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/UploadTask;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    .line 504
    :goto_c
    return-object v0

    .line 500
    :catch_d
    move-exception v0

    .line 503
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 504
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final l()Ljava/lang/String;
    .registers 4

    .prologue
    .line 466
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 467
    const-string v1, "mDropboxDir"

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/UploadTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string v1, "mLocalUri"

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/UploadTask;->h:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string v1, "mOverwrite"

    iget-boolean v2, p0, Lcom/dropbox/android/taskqueue/UploadTask;->j:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-static {v0}, Ldbxyzptlk/B/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/UploadTask;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
