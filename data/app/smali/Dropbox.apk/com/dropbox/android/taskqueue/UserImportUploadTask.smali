.class public Lcom/dropbox/android/taskqueue/UserImportUploadTask;
.super Lcom/dropbox/android/taskqueue/UploadTask;
.source "panda.py"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/dropbox/android/taskqueue/UserImportUploadTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/dropbox/android/taskqueue/UserImportUploadTask;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/dropbox/android/taskqueue/UploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    return-void
.end method

.method public static restore(Landroid/content/Context;JLjava/lang/String;)Lcom/dropbox/android/taskqueue/UserImportUploadTask;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Ldbxyzptlk/C/b;

    invoke-direct {v0}, Ldbxyzptlk/C/b;-><init>()V

    .line 33
    :try_start_5
    invoke-virtual {v0, p3}, Ldbxyzptlk/C/b;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldbxyzptlk/B/c;

    .line 34
    new-instance v3, Lcom/dropbox/android/taskqueue/UserImportUploadTask;

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

    invoke-direct {v3, p0, v1, v2, v0}, Lcom/dropbox/android/taskqueue/UserImportUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    invoke-virtual {v3, p1, p2}, Lcom/dropbox/android/taskqueue/UserImportUploadTask;->b(J)V
    :try_end_2f
    .catch Ldbxyzptlk/C/c; {:try_start_5 .. :try_end_2f} :catch_30

    .line 39
    return-object v3

    .line 40
    :catch_30
    move-exception v0

    .line 41
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/dropbox/android/taskqueue/m;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1, p2}, Lcom/dropbox/android/taskqueue/UploadTask;->a(Landroid/content/Context;Lcom/dropbox/android/taskqueue/m;)V

    .line 22
    sget-object v0, Lcom/dropbox/android/taskqueue/m;->j:Lcom/dropbox/android/taskqueue/m;

    if-eq p2, v0, :cond_1e

    .line 23
    invoke-static {p1, p0}, Lcom/dropbox/android/provider/UploadLogProvider;->a(Landroid/content/Context;Lcom/dropbox/android/taskqueue/DbTask;)V

    .line 24
    invoke-static {p1, p0, p2}, Lcom/dropbox/android/provider/UploadLogProvider;->a(Landroid/content/Context;Lcom/dropbox/android/taskqueue/DbTask;Lcom/dropbox/android/taskqueue/m;)J

    move-result-wide v0

    .line 25
    sget-boolean v2, Lcom/dropbox/android/taskqueue/UserImportUploadTask;->a:Z

    if-nez v2, :cond_1e

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_1e
    return-void
.end method

.method public final e()Ldbxyzptlk/i/i;
    .registers 4

    .prologue
    .line 47
    new-instance v0, Ldbxyzptlk/i/i;

    invoke-virtual {p0}, Lcom/dropbox/android/taskqueue/UserImportUploadTask;->m()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ldbxyzptlk/i/i;-><init>(J)V

    return-object v0
.end method
