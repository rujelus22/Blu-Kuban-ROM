.class public Lcom/dropbox/android/filemanager/a;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/dropbox/android/filemanager/a;


# instance fields
.field public final a:Ldbxyzptlk/p/i;

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const-class v0, Lcom/dropbox/android/filemanager/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/android/filemanager/a;->b:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/android/filemanager/a;->c:Lcom/dropbox/android/filemanager/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/filemanager/a;->d:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Ldbxyzptlk/j/a;->b(Landroid/content/Context;)Ldbxyzptlk/j/a;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/a;->j()Ldbxyzptlk/o/k;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_22

    .line 76
    new-instance v0, Ldbxyzptlk/p/F;

    iget-object v2, p0, Lcom/dropbox/android/filemanager/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Ldbxyzptlk/p/F;-><init>(Ldbxyzptlk/o/k;Landroid/content/Context;)V

    .line 180
    :goto_1a
    new-instance v1, Ldbxyzptlk/p/i;

    invoke-direct {v1, v0}, Ldbxyzptlk/p/i;-><init>(Ldbxyzptlk/o/m;)V

    iput-object v1, p0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    .line 181
    return-void

    .line 78
    :cond_22
    new-instance v0, Ldbxyzptlk/p/F;

    iget-object v1, p0, Lcom/dropbox/android/filemanager/a;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Ldbxyzptlk/p/F;-><init>(Landroid/content/Context;)V

    goto :goto_1a
.end method

.method public static a()Lcom/dropbox/android/filemanager/a;
    .registers 1

    .prologue
    .line 193
    sget-object v0, Lcom/dropbox/android/filemanager/a;->c:Lcom/dropbox/android/filemanager/a;

    if-nez v0, :cond_a

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 196
    :cond_a
    sget-object v0, Lcom/dropbox/android/filemanager/a;->c:Lcom/dropbox/android/filemanager/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 185
    sget-object v0, Lcom/dropbox/android/filemanager/a;->c:Lcom/dropbox/android/filemanager/a;

    if-nez v0, :cond_c

    .line 186
    new-instance v0, Lcom/dropbox/android/filemanager/a;

    invoke-direct {v0, p0}, Lcom/dropbox/android/filemanager/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/dropbox/android/filemanager/a;->c:Lcom/dropbox/android/filemanager/a;

    .line 190
    return-void

    .line 188
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ldbxyzptlk/p/p;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 221
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/dropbox/android/filemanager/a;->b:Ljava/lang/String;

    const-string v1, "handling logged in user"

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-static {}, Ldbxyzptlk/h/b;->b()Ldbxyzptlk/h/b;

    move-result-object v0

    invoke-virtual {p2}, Ldbxyzptlk/p/p;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldbxyzptlk/h/b;->a(J)V

    .line 225
    invoke-static {}, Lcom/dropbox/android/util/h;->i()Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {p2}, Ldbxyzptlk/p/p;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 226
    invoke-static {}, Lcom/dropbox/android/util/h;->L()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 228
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->d:Landroid/content/Context;

    sget-object v1, Lcom/dropbox/android/util/aw;->a:Lcom/dropbox/android/util/aw;

    invoke-static {v0, v1}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;Lcom/dropbox/android/util/aw;)V

    .line 231
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    invoke-virtual {v0}, Ldbxyzptlk/p/i;->a()Ldbxyzptlk/o/m;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/F;

    invoke-virtual {p2}, Ldbxyzptlk/p/p;->a()Ldbxyzptlk/o/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldbxyzptlk/p/F;->a(Ldbxyzptlk/o/k;)V

    .line 232
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->d:Landroid/content/Context;

    invoke-static {v0}, Ldbxyzptlk/j/a;->b(Landroid/content/Context;)Ldbxyzptlk/j/a;

    move-result-object v0

    invoke-virtual {p2}, Ldbxyzptlk/p/p;->b()J

    move-result-wide v1

    invoke-virtual {p2}, Ldbxyzptlk/p/p;->a()Ldbxyzptlk/o/k;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Ldbxyzptlk/j/a;->a(Ljava/lang/String;JLdbxyzptlk/o/k;)V

    .line 234
    invoke-static {}, Lcom/dropbox/android/util/h;->ag()V

    .line 236
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dropbox/android/provider/SDKProvider;->a(Landroid/content/Context;)V

    .line 239
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dropbox/android/provider/UploadLogProvider;->a(Landroid/content/Context;)V

    .line 240
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->d()V
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_68

    .line 242
    monitor-exit p0

    return-void

    .line 221
    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static b(Landroid/content/Context;)Lcom/dropbox/android/filemanager/a;
    .registers 2
    .parameter

    .prologue
    .line 200
    sget-object v0, Lcom/dropbox/android/filemanager/a;->c:Lcom/dropbox/android/filemanager/a;

    if-nez v0, :cond_a

    .line 202
    new-instance v0, Lcom/dropbox/android/filemanager/a;

    invoke-direct {v0, p0}, Lcom/dropbox/android/filemanager/a;-><init>(Landroid/content/Context;)V

    .line 204
    :goto_9
    return-object v0

    :cond_a
    sget-object v0, Lcom/dropbox/android/filemanager/a;->c:Lcom/dropbox/android/filemanager/a;

    goto :goto_9
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    invoke-virtual {v0, p1, p2}, Ldbxyzptlk/p/i;->c(Ljava/lang/String;Ljava/lang/String;)Ldbxyzptlk/p/p;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/dropbox/android/filemanager/a;->b:Ljava/lang/String;

    const-string v2, "Successfully authenticated"

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-direct {p0, p1, v0}, Lcom/dropbox/android/filemanager/a;->a(Ljava/lang/String;Ldbxyzptlk/p/p;)V

    .line 211
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ldbxyzptlk/p/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ldbxyzptlk/p/p;

    move-result-object v0

    .line 216
    sget-object v1, Lcom/dropbox/android/filemanager/a;->b:Ljava/lang/String;

    const-string v2, "Successfully created new user"

    invoke-static {v1, v2}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0, p1, v0}, Lcom/dropbox/android/filemanager/a;->a(Ljava/lang/String;Ldbxyzptlk/p/p;)V

    .line 218
    return-void
.end method

.method public final declared-synchronized b()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    monitor-enter p0

    :try_start_3
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    invoke-virtual {v0}, Ldbxyzptlk/p/i;->a()Ldbxyzptlk/o/m;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/F;

    invoke-virtual {v0}, Ldbxyzptlk/p/F;->d()Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_4d

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    .line 259
    :goto_12
    monitor-exit p0

    return v0

    .line 248
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->d:Landroid/content/Context;

    invoke-static {v0}, Ldbxyzptlk/j/a;->b(Landroid/content/Context;)Ldbxyzptlk/j/a;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/a;->j()Ldbxyzptlk/o/k;

    move-result-object v3

    .line 249
    if-eqz v3, :cond_44

    .line 250
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    invoke-virtual {v0}, Ldbxyzptlk/p/i;->a()Ldbxyzptlk/o/m;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/F;

    invoke-virtual {v0, v3}, Ldbxyzptlk/p/F;->a(Ldbxyzptlk/o/k;)V

    .line 251
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    invoke-virtual {v0}, Ldbxyzptlk/p/i;->a()Ldbxyzptlk/o/m;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/F;

    invoke-virtual {v0}, Ldbxyzptlk/p/F;->d()Z

    move-result v0

    if-eqz v0, :cond_3b

    move v0, v1

    .line 252
    goto :goto_12

    .line 254
    :cond_3b
    sget-object v0, Lcom/dropbox/android/filemanager/a;->b:Ljava/lang/String;

    const-string v1, "Failed user authentication for stored login tokens."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 255
    goto :goto_12

    .line 258
    :cond_44
    sget-object v0, Lcom/dropbox/android/filemanager/a;->b:Ljava/lang/String;

    const-string v1, "No stored login token."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_14 .. :try_end_4b} :catchall_4d

    move v0, v2

    .line 259
    goto :goto_12

    .line 245
    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ldbxyzptlk/p/x;
    .registers 8

    .prologue
    .line 266
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    invoke-virtual {v0}, Ldbxyzptlk/p/i;->c()Ldbxyzptlk/p/x;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_3c

    .line 269
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v1

    .line 274
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v2

    .line 275
    invoke-virtual {v2}, Ldbxyzptlk/j/a;->j()Ldbxyzptlk/o/k;

    move-result-object v3

    .line 276
    if-eqz v3, :cond_39

    invoke-virtual {v1}, Ldbxyzptlk/j/m;->c()Ldbxyzptlk/p/x;

    move-result-object v4

    if-eqz v4, :cond_32

    invoke-virtual {v1}, Ldbxyzptlk/j/m;->c()Ldbxyzptlk/p/x;

    move-result-object v4

    iget-object v4, v4, Ldbxyzptlk/p/x;->h:Ljava/lang/String;

    if-eqz v4, :cond_32

    invoke-virtual {v1}, Ldbxyzptlk/j/m;->c()Ldbxyzptlk/p/x;

    move-result-object v4

    iget-object v4, v4, Ldbxyzptlk/p/x;->h:Ljava/lang/String;

    iget-object v5, v0, Ldbxyzptlk/p/x;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 277
    :cond_32
    iget-object v4, v0, Ldbxyzptlk/p/x;->h:Ljava/lang/String;

    iget-wide v5, v0, Ldbxyzptlk/p/x;->f:J

    invoke-virtual {v2, v4, v5, v6, v3}, Ldbxyzptlk/j/a;->a(Ljava/lang/String;JLdbxyzptlk/o/k;)V

    .line 280
    :cond_39
    invoke-virtual {v1, v0}, Ldbxyzptlk/j/m;->a(Ldbxyzptlk/p/x;)V

    .line 283
    :cond_3c
    return-object v0
.end method

.method public final declared-synchronized d()Z
    .registers 5

    .prologue
    .line 290
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/dropbox/android/filemanager/a;->b:Ljava/lang/String;

    const-string v1, "Deauthenticating dropbox."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/a;->b()Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_61

    move-result v0

    if-nez v0, :cond_11

    .line 293
    const/4 v0, 0x0

    .line 322
    :goto_f
    monitor-exit p0

    return v0

    .line 295
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/dropbox/android/util/h;->M()Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 297
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dropbox/android/service/CameraUploadService;->a(Landroid/content/Context;)V

    .line 300
    invoke-static {}, Ldbxyzptlk/j/m;->a()Ldbxyzptlk/j/m;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Ldbxyzptlk/j/m;->b()V

    .line 304
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/dropbox/android/c;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 306
    invoke-static {}, Lcom/dropbox/android/filemanager/v;->a()Lcom/dropbox/android/filemanager/v;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/v;->d()V

    .line 309
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dropbox/android/provider/UploadLogProvider;->a(Landroid/content/Context;)V

    .line 311
    invoke-static {}, Ldbxyzptlk/h/f;->a()V

    .line 313
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dropbox/android/service/NotificationService;->a(Landroid/content/Context;)V

    .line 316
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->a:Ldbxyzptlk/p/i;

    invoke-virtual {v0}, Ldbxyzptlk/p/i;->a()Ldbxyzptlk/o/m;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/p/F;

    invoke-virtual {v0}, Ldbxyzptlk/p/F;->e()V

    .line 318
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/a;->i()V

    .line 319
    invoke-static {}, Lcom/dropbox/android/util/h;->ag()V

    .line 321
    iget-object v0, p0, Lcom/dropbox/android/filemanager/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/dropbox/android/provider/SDKProvider;->a(Landroid/content/Context;)V
    :try_end_5f
    .catchall {:try_start_11 .. :try_end_5f} :catchall_61

    .line 322
    const/4 v0, 0x1

    goto :goto_f

    .line 290
    :catchall_61
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .registers 2

    .prologue
    .line 329
    monitor-enter p0

    :try_start_1
    invoke-static {}, Ldbxyzptlk/j/a;->a()Ldbxyzptlk/j/a;

    move-result-object v0

    invoke-virtual {v0}, Ldbxyzptlk/j/a;->k()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_14

    .line 330
    invoke-virtual {p0}, Lcom/dropbox/android/filemanager/a;->d()Z

    move-result v0

    .line 331
    if-eqz v0, :cond_14

    .line 332
    invoke-static {}, Lcom/dropbox/android/util/ba;->a()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 335
    :cond_14
    monitor-exit p0

    return-void

    .line 329
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method
