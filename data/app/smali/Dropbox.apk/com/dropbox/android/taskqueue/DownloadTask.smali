.class public Lcom/dropbox/android/taskqueue/DownloadTask;
.super Lcom/dropbox/android/taskqueue/k;
.source "panda.py"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field protected a:Lcom/dropbox/android/filemanager/LocalEntry;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/dropbox/android/util/Z;

.field private h:Ljava/io/File;

.field private i:Ljava/io/File;

.field private j:Ljava/io/OutputStream;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const-class v0, Lcom/dropbox/android/taskqueue/DownloadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/taskqueue/DownloadTask;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/k;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->j:Ljava/io/OutputStream;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->k:Z

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->c:Landroid/content/Context;

    .line 65
    invoke-direct {p0, p2}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(Lcom/dropbox/android/filemanager/LocalEntry;)V

    .line 66
    new-instance v0, Lcom/dropbox/android/util/Z;

    iget-object v1, p2, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->d:Lcom/dropbox/android/util/Z;

    .line 67
    invoke-direct {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->i()Lcom/dropbox/android/taskqueue/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(Lcom/dropbox/android/taskqueue/l;)V

    .line 68
    return-void
.end method

.method private a(Lcom/dropbox/android/filemanager/LocalEntry;)V
    .registers 4
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    .line 72
    new-instance v0, Lcom/dropbox/android/util/Z;

    iget-object v1, p1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->e()Lcom/dropbox/android/util/Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->g:Landroid/net/Uri;

    .line 74
    return-void
.end method

.method private i()Lcom/dropbox/android/taskqueue/l;
    .registers 2

    .prologue
    .line 78
    new-instance v0, Lcom/dropbox/android/taskqueue/g;

    invoke-direct {v0, p0}, Lcom/dropbox/android/taskqueue/g;-><init>(Lcom/dropbox/android/taskqueue/DownloadTask;)V

    return-object v0
.end method


# virtual methods
.method protected final a(Ldbxyzptlk/l/k;)V
    .registers 9
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 175
    new-instance v0, Lcom/dropbox/android/util/Z;

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v1

    .line 177
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 178
    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "path=?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v5, v5, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 180
    :try_start_2a
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_69

    .line 181
    invoke-static {p1}, Lcom/dropbox/android/filemanager/LocalEntry;->a(Ldbxyzptlk/l/k;)Landroid/content/ContentValues;

    move-result-object v3

    .line 182
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_42

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 184
    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to write server entry on download: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    sget-object v1, Lcom/dropbox/android/taskqueue/DownloadTask;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_64
    .catchall {:try_start_2a .. :try_end_64} :catchall_64

    .line 190
    :catchall_64
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_69
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 192
    return-void
.end method

.method public final b()V
    .registers 2

    .prologue
    .line 164
    monitor-enter p0

    .line 165
    :try_start_1
    invoke-super {p0}, Lcom/dropbox/android/taskqueue/k;->b()V

    .line 166
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->j:Ljava/io/OutputStream;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_f

    if-eqz v0, :cond_d

    .line 168
    :try_start_8
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->j:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_12

    .line 171
    :cond_d
    :goto_d
    :try_start_d
    monitor-exit p0

    .line 172
    return-void

    .line 171
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_f

    throw v0

    .line 169
    :catch_12
    move-exception v0

    goto :goto_d
.end method

.method public final c()Lcom/dropbox/android/taskqueue/m;
    .registers 14

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 196
    invoke-super {p0}, Lcom/dropbox/android/taskqueue/k;->c()Lcom/dropbox/android/taskqueue/m;

    .line 198
    new-instance v9, Lcom/dropbox/android/taskqueue/F;

    invoke-direct {v9}, Lcom/dropbox/android/taskqueue/F;-><init>()V

    .line 200
    :try_start_b
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->a()V

    .line 202
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->r()V

    .line 204
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/LocalEntry;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/dropbox/android/util/aN;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 207
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v2, v2, Lcom/dropbox/android/filemanager/LocalEntry;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    .line 208
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_31

    .line 209
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    .line 213
    :cond_31
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->o()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 214
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->s()Lcom/dropbox/android/taskqueue/m;
    :try_end_3a
    .catchall {:try_start_b .. :try_end_3a} :catchall_3cd

    move-result-object v0

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    :goto_3e
    return-object v0

    .line 217
    :cond_3f
    :try_start_3f
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/dropbox/android/util/aN;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7b

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_3cd

    if-eqz v1, :cond_7b

    move v6, v7

    .line 223
    :goto_4e
    :try_start_4e
    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v10

    .line 224
    iget-object v0, v10, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ldbxyzptlk/l/k;

    move-result-object v1

    .line 225
    invoke-virtual {p0, v1}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(Ldbxyzptlk/l/k;)V

    .line 227
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    if-eqz v0, :cond_7d

    iget-object v0, v1, Ldbxyzptlk/l/k;->r:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v2, v2, Lcom/dropbox/android/filemanager/LocalEntry;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 233
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->g()Lcom/dropbox/android/taskqueue/m;
    :try_end_76
    .catchall {:try_start_4e .. :try_end_76} :catchall_3cd
    .catch Ldbxyzptlk/m/b; {:try_start_4e .. :try_end_76} :catch_18d
    .catch Ldbxyzptlk/m/i; {:try_start_4e .. :try_end_76} :catch_24c
    .catch Ldbxyzptlk/m/g; {:try_start_4e .. :try_end_76} :catch_25d
    .catch Ldbxyzptlk/m/c; {:try_start_4e .. :try_end_76} :catch_29f
    .catch Ldbxyzptlk/m/e; {:try_start_4e .. :try_end_76} :catch_2ab
    .catch Ldbxyzptlk/m/a; {:try_start_4e .. :try_end_76} :catch_2e9

    move-result-object v0

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto :goto_3e

    :cond_7b
    move v6, v0

    .line 217
    goto :goto_4e

    .line 237
    :cond_7d
    :try_start_7d
    monitor-enter p0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_3cd
    .catch Ldbxyzptlk/m/b; {:try_start_7d .. :try_end_7e} :catch_18d
    .catch Ldbxyzptlk/m/i; {:try_start_7d .. :try_end_7e} :catch_24c
    .catch Ldbxyzptlk/m/g; {:try_start_7d .. :try_end_7e} :catch_25d
    .catch Ldbxyzptlk/m/c; {:try_start_7d .. :try_end_7e} :catch_29f
    .catch Ldbxyzptlk/m/e; {:try_start_7d .. :try_end_7e} :catch_2ab
    .catch Ldbxyzptlk/m/a; {:try_start_7d .. :try_end_7e} :catch_2e9

    .line 238
    :try_start_7e
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->o()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 239
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->s()Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    monitor-exit p0
    :try_end_89
    .catchall {:try_start_7e .. :try_end_89} :catchall_18a

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto :goto_3e

    .line 244
    :cond_8d
    :try_start_8d
    invoke-static {}, Lcom/dropbox/android/util/ab;->a()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->i:Ljava/io/File;

    .line 246
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->i:Ljava/io/File;

    if-nez v0, :cond_ac

    .line 247
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->b()V

    .line 248
    sget-object v0, Lcom/dropbox/android/taskqueue/DownloadTask;->b:Ljava/lang/String;

    const-string v1, "Couldn\'t create temp file for download."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_a6
    .catchall {:try_start_8d .. :try_end_a6} :catchall_18a
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_a6} :catch_10b

    move-result-object v0

    :try_start_a7
    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_18a

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto :goto_3e

    .line 252
    :cond_ac
    :try_start_ac
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->i:Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_b3
    .catchall {:try_start_ac .. :try_end_b3} :catchall_18a
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b3} :catch_10b

    .line 271
    :try_start_b3
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_b8
    .catchall {:try_start_b3 .. :try_end_b8} :catchall_18a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b3 .. :try_end_b8} :catch_17f

    move-result-object v0

    .line 275
    :goto_b9
    :try_start_b9
    new-instance v3, Ljava/security/DigestOutputStream;

    invoke-direct {v3, v2, v0}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    iput-object v3, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->j:Ljava/io/OutputStream;

    .line 276
    monitor-exit p0
    :try_end_c1
    .catchall {:try_start_b9 .. :try_end_c1} :catchall_18a

    .line 279
    :try_start_c1
    new-instance v2, Lcom/dropbox/android/taskqueue/h;

    invoke-direct {v2, p0}, Lcom/dropbox/android/taskqueue/h;-><init>(Lcom/dropbox/android/taskqueue/DownloadTask;)V

    .line 287
    const-wide/16 v3, 0x0

    iget-object v5, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-wide v11, v5, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    invoke-virtual {p0, v3, v4, v11, v12}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(JJ)V

    .line 288
    const-string v3, "net.start"

    invoke-static {v3, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/util/r;->c()V

    .line 289
    iget-object v3, v10, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    iget-object v4, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v4, v4, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    iget-object v5, v1, Ldbxyzptlk/l/k;->r:Ljava/lang/String;

    iget-object v8, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->j:Ljava/io/OutputStream;

    invoke-virtual {v3, v4, v5, v8, v2}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Ldbxyzptlk/l/q;)Ldbxyzptlk/l/h;

    move-result-object v2

    .line 290
    const-string v3, "net.end"

    invoke-static {v3, p0}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Lcom/dropbox/android/taskqueue/k;)Lcom/dropbox/android/util/r;

    move-result-object v3

    invoke-virtual {v3}, Lcom/dropbox/android/util/r;->c()V

    .line 292
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->o()Z

    move-result v3

    if-eqz v3, :cond_19b

    .line 293
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_102

    .line 294
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 296
    :cond_102
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->s()Lcom/dropbox/android/taskqueue/m;
    :try_end_105
    .catchall {:try_start_c1 .. :try_end_105} :catchall_3cd
    .catch Ldbxyzptlk/m/b; {:try_start_c1 .. :try_end_105} :catch_18d
    .catch Ldbxyzptlk/m/i; {:try_start_c1 .. :try_end_105} :catch_24c
    .catch Ldbxyzptlk/m/g; {:try_start_c1 .. :try_end_105} :catch_25d
    .catch Ldbxyzptlk/m/c; {:try_start_c1 .. :try_end_105} :catch_29f
    .catch Ldbxyzptlk/m/e; {:try_start_c1 .. :try_end_105} :catch_2ab
    .catch Ldbxyzptlk/m/a; {:try_start_c1 .. :try_end_105} :catch_2e9

    move-result-object v0

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    .line 253
    :catch_10b
    move-exception v0

    .line 256
    :try_start_10c
    sget-object v1, Lcom/dropbox/android/taskqueue/DownloadTask;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while downloading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v3, v3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->b()V

    .line 259
    invoke-static {}, Lcom/dropbox/android/util/ab;->c()Z

    move-result v1

    if-nez v1, :cond_15b

    .line 260
    sget-object v0, Lcom/dropbox/android/taskqueue/DownloadTask;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create new file, USB or no SD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->i:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->e:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    monitor-exit p0
    :try_end_156
    .catchall {:try_start_10c .. :try_end_156} :catchall_18a

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    .line 264
    :cond_15b
    :try_start_15b
    sget-object v1, Lcom/dropbox/android/taskqueue/DownloadTask;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException in download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;

    move-result-object v0

    monitor-exit p0
    :try_end_17a
    .catchall {:try_start_15b .. :try_end_17a} :catchall_18a

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    .line 272
    :catch_17f
    move-exception v0

    .line 273
    :try_start_180
    sget-object v3, Lcom/dropbox/android/taskqueue/DownloadTask;->b:Ljava/lang/String;

    const-string v4, "Error with MD5 "

    invoke-static {v3, v4, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    goto/16 :goto_b9

    .line 276
    :catchall_18a
    move-exception v0

    monitor-exit p0
    :try_end_18c
    .catchall {:try_start_180 .. :try_end_18c} :catchall_18a

    :try_start_18c
    throw v0
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_3cd
    .catch Ldbxyzptlk/m/b; {:try_start_18c .. :try_end_18d} :catch_18d
    .catch Ldbxyzptlk/m/i; {:try_start_18c .. :try_end_18d} :catch_24c
    .catch Ldbxyzptlk/m/g; {:try_start_18c .. :try_end_18d} :catch_25d
    .catch Ldbxyzptlk/m/c; {:try_start_18c .. :try_end_18d} :catch_29f
    .catch Ldbxyzptlk/m/e; {:try_start_18c .. :try_end_18d} :catch_2ab
    .catch Ldbxyzptlk/m/a; {:try_start_18c .. :try_end_18d} :catch_2e9

    .line 338
    :catch_18d
    move-exception v0

    .line 340
    if-nez v6, :cond_243

    .line 345
    :try_start_190
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->d:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_195
    .catchall {:try_start_190 .. :try_end_195} :catchall_3cd

    move-result-object v0

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    .line 301
    :cond_19b
    :try_start_19b
    iget-object v3, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-virtual {v2}, Ldbxyzptlk/l/h;->c()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/dropbox/android/filemanager/LocalEntry;->g:Ljava/lang/String;

    .line 303
    invoke-virtual {v2}, Ldbxyzptlk/l/h;->a()Ljava/lang/String;

    move-result-object v3

    .line 304
    if-eqz v3, :cond_1b7

    iget-object v4, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v4, v4, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b7

    .line 305
    iget-object v4, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iput-object v3, v4, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    .line 308
    :cond_1b7
    iget-object v3, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    invoke-virtual {v2}, Ldbxyzptlk/l/h;->b()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/dropbox/android/filemanager/LocalEntry;->h:J

    .line 310
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>([B)V

    .line 311
    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    if-nez v2, :cond_1e5

    .line 314
    new-instance v2, Lcom/dropbox/android/util/Z;

    iget-object v3, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v3, v3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dropbox/android/util/Z;->f()Lcom/dropbox/android/util/ap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dropbox/android/util/ap;->a()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    .line 317
    :cond_1e5
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v2

    .line 318
    invoke-virtual {v2}, Lcom/dropbox/android/filemanager/v;->m()Lcom/dropbox/android/util/ad;

    move-result-object v2

    .line 319
    if-eqz v2, :cond_1f8

    .line 320
    iget-object v3, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/dropbox/android/util/ad;->a(Ljava/lang/String;)V

    .line 322
    :cond_1f8
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/dropbox/android/util/ab;->b(Ljava/io/File;)Z

    .line 323
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->i:Ljava/io/File;

    iget-object v3, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 325
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->k:Z

    .line 327
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-boolean v2, v2, Lcom/dropbox/android/filemanager/LocalEntry;->f:Z

    if-eqz v2, :cond_223

    .line 335
    new-instance v2, Lcom/dropbox/android/util/at;

    iget-object v3, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v5, v5, Lcom/dropbox/android/filemanager/LocalEntry;->q:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v2, v3, v4, v5, v8}, Lcom/dropbox/android/util/at;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_223
    .catchall {:try_start_19b .. :try_end_223} :catchall_3cd
    .catch Ldbxyzptlk/m/b; {:try_start_19b .. :try_end_223} :catch_18d
    .catch Ldbxyzptlk/m/i; {:try_start_19b .. :try_end_223} :catch_24c
    .catch Ldbxyzptlk/m/g; {:try_start_19b .. :try_end_223} :catch_25d
    .catch Ldbxyzptlk/m/c; {:try_start_19b .. :try_end_223} :catch_29f
    .catch Ldbxyzptlk/m/e; {:try_start_19b .. :try_end_223} :catch_2ab
    .catch Ldbxyzptlk/m/a; {:try_start_19b .. :try_end_223} :catch_2e9

    .line 394
    :cond_223
    :try_start_223
    iget-object v2, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    if-eqz v2, :cond_3c2

    iget-object v2, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3c2

    .line 395
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->o()Z

    move-result v2

    if-eqz v2, :cond_2fe

    .line 396
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 397
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->s()Lcom/dropbox/android/taskqueue/m;
    :try_end_23d
    .catchall {:try_start_223 .. :try_end_23d} :catchall_3cd

    move-result-object v0

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    .line 347
    :cond_243
    :try_start_243
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->g()Lcom/dropbox/android/taskqueue/m;
    :try_end_246
    .catchall {:try_start_243 .. :try_end_246} :catchall_3cd

    move-result-object v0

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    .line 349
    :catch_24c
    move-exception v0

    .line 350
    :try_start_24d
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/dropbox/android/util/b;->b(Landroid/content/Context;)V

    .line 351
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_257
    .catchall {:try_start_24d .. :try_end_257} :catchall_3cd

    move-result-object v0

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    .line 352
    :catch_25d
    move-exception v0

    .line 353
    :try_start_25e
    iget v1, v0, Ldbxyzptlk/m/g;->b:I

    const/16 v2, 0x130

    if-ne v1, v2, :cond_26b

    .line 354
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->b:Lcom/dropbox/android/taskqueue/m;
    :try_end_266
    .catchall {:try_start_25e .. :try_end_266} :catchall_3cd

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    .line 355
    :cond_26b
    :try_start_26b
    iget v1, v0, Ldbxyzptlk/m/g;->b:I

    const/16 v2, 0x194

    if-eq v1, v2, :cond_294

    .line 356
    sget-object v1, Lcom/dropbox/android/taskqueue/DownloadTask;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interesting HTTP code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Ldbxyzptlk/m/g;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 359
    :cond_294
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_299
    .catchall {:try_start_26b .. :try_end_299} :catchall_3cd

    move-result-object v0

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    .line 360
    :catch_29f
    move-exception v0

    .line 361
    :try_start_2a0
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_2a5
    .catchall {:try_start_2a0 .. :try_end_2a5} :catchall_3cd

    move-result-object v0

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    .line 362
    :catch_2ab
    move-exception v0

    .line 371
    :try_start_2ac
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->i:Ljava/io/File;

    if-eqz v0, :cond_2bd

    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2bd

    .line 372
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->i:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 375
    :cond_2bd
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->o()Z

    move-result v0

    if-eqz v0, :cond_2d3

    .line 376
    sget-object v0, Lcom/dropbox/android/taskqueue/DownloadTask;->b:Ljava/lang/String;

    const-string v1, "Download canceled by user, stopped after partial completion."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->s()Lcom/dropbox/android/taskqueue/m;
    :try_end_2cd
    .catchall {:try_start_2ac .. :try_end_2cd} :catchall_3cd

    move-result-object v0

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    .line 380
    :cond_2d3
    if-nez v6, :cond_2e0

    .line 383
    :try_start_2d5
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->d:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_2da
    .catchall {:try_start_2d5 .. :try_end_2da} :catchall_3cd

    move-result-object v0

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    .line 385
    :cond_2e0
    :try_start_2e0
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->g()Lcom/dropbox/android/taskqueue/m;
    :try_end_2e3
    .catchall {:try_start_2e0 .. :try_end_2e3} :catchall_3cd

    move-result-object v0

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    .line 388
    :catch_2e9
    move-exception v0

    .line 390
    :try_start_2ea
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v1

    sget-object v2, Ldbxyzptlk/h/e;->b:Ldbxyzptlk/h/e;

    invoke-virtual {v1, v0, v2}, Ldbxyzptlk/h/b;->a(Ljava/lang/Throwable;Ldbxyzptlk/h/e;)V

    .line 391
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_2f8
    .catchall {:try_start_2ea .. :try_end_2f8} :catchall_3cd

    move-result-object v0

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    .line 400
    :cond_2fe
    :try_start_2fe
    iget-boolean v2, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->k:Z

    if-eqz v2, :cond_3b9

    .line 403
    new-instance v2, Lcom/dropbox/android/util/Z;

    iget-object v3, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v3, v3, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/dropbox/android/util/Z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/dropbox/android/util/Z;->b()Landroid/net/Uri;

    move-result-object v2

    .line 405
    iget-object v3, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 406
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 407
    const-string v5, "_data"

    iget-object v6, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v5, "revision"

    iget-object v6, v1, Ldbxyzptlk/l/k;->r:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v5, "local_revision"

    iget-object v1, v1, Ldbxyzptlk/l/k;->r:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v1, "local_bytes"

    iget-object v5, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 411
    iget-object v1, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 412
    const-string v1, "local_modified"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 413
    if-eqz v0, :cond_358

    .line 414
    const-string v1, "local_hash"

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_358
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->g:Ljava/lang/String;

    if-eqz v0, :cond_367

    .line 417
    const-string v0, "encoding"

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v1, v1, Lcom/dropbox/android/filemanager/LocalEntry;->g:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_367
    sget-object v0, Lcom/dropbox/android/taskqueue/DownloadTask;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downloaded local file: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " modified is: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 422
    if-eq v0, v7, :cond_3b9

    .line 423
    sget-object v1, Lcom/dropbox/android/taskqueue/DownloadTask;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t successfully update entry with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Changed is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ldbxyzptlk/h/f;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_3b9
    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->g()Lcom/dropbox/android/taskqueue/m;
    :try_end_3bc
    .catchall {:try_start_2fe .. :try_end_3bc} :catchall_3cd

    move-result-object v0

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    .line 428
    :cond_3c2
    :try_start_3c2
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->m:Lcom/dropbox/android/taskqueue/m;

    invoke-virtual {p0, v0}, Lcom/dropbox/android/taskqueue/DownloadTask;->a(Lcom/dropbox/android/taskqueue/m;)Lcom/dropbox/android/taskqueue/m;
    :try_end_3c7
    .catchall {:try_start_3c2 .. :try_end_3c7} :catchall_3cd

    move-result-object v0

    .line 431
    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    goto/16 :goto_3e

    :catchall_3cd
    move-exception v0

    invoke-virtual {v9}, Lcom/dropbox/android/taskqueue/F;->b()V

    throw v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    iget-object v0, v0, Lcom/dropbox/android/filemanager/LocalEntry;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ldbxyzptlk/i/i;
    .registers 3

    .prologue
    .line 441
    new-instance v0, Ldbxyzptlk/i/i;

    iget-object v1, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->d:Lcom/dropbox/android/util/Z;

    invoke-direct {v0, v1}, Ldbxyzptlk/i/i;-><init>(Lcom/dropbox/android/util/Z;)V

    return-object v0
.end method

.method public final f()Lcom/dropbox/android/filemanager/LocalEntry;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->a:Lcom/dropbox/android/filemanager/LocalEntry;

    return-object v0
.end method

.method public final h()Ljava/io/File;
    .registers 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/dropbox/android/taskqueue/DownloadTask;->h:Ljava/io/File;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/DownloadTask;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
