.class final Lorg/acra/n;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lorg/acra/ErrorReporter;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lorg/acra/ErrorReporter;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 125
    iput-object p1, p0, Lorg/acra/n;->a:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 105
    iput-object v0, p0, Lorg/acra/n;->b:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lorg/acra/n;->c:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lorg/acra/n;->d:Ljava/lang/String;

    .line 108
    iput-boolean v1, p0, Lorg/acra/n;->e:Z

    .line 109
    iput-boolean v1, p0, Lorg/acra/n;->f:Z

    .line 126
    return-void
.end method

.method public constructor <init>(Lorg/acra/ErrorReporter;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 118
    iput-object p1, p0, Lorg/acra/n;->a:Lorg/acra/ErrorReporter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 105
    iput-object v0, p0, Lorg/acra/n;->b:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lorg/acra/n;->c:Ljava/lang/String;

    .line 107
    iput-object v0, p0, Lorg/acra/n;->d:Ljava/lang/String;

    .line 108
    iput-boolean v1, p0, Lorg/acra/n;->e:Z

    .line 109
    iput-boolean v1, p0, Lorg/acra/n;->f:Z

    .line 119
    iput-boolean p2, p0, Lorg/acra/n;->e:Z

    .line 120
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/n;->f:Z

    .line 197
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lorg/acra/n;->b:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Lorg/acra/n;->c:Ljava/lang/String;

    .line 177
    return-void
.end method

.method final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lorg/acra/n;->b:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lorg/acra/n;->d:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public final run()V
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 135
    invoke-static {}, Lorg/acra/ErrorReporter;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1d

    const-string v3, "android.permission.WAKE_LOCK"

    invoke-static {}, Lorg/acra/ErrorReporter;->f()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1d

    move v0, v1

    :cond_1d
    if-nez v0, :cond_53

    const/4 v0, 0x0

    .line 137
    :goto_20
    :try_start_20
    iget-boolean v1, p0, Lorg/acra/n;->f:Z

    if-eqz v1, :cond_35

    .line 138
    iget-object v1, p0, Lorg/acra/n;->a:Lorg/acra/ErrorReporter;

    invoke-virtual {v1}, Lorg/acra/ErrorReporter;->a()V

    .line 139
    iget-object v1, p0, Lorg/acra/n;->b:Ljava/lang/String;

    const-string v2, ".stacktrace"

    const-string v3, "-approved.stacktrace"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/acra/n;->b:Ljava/lang/String;

    .line 141
    :cond_35
    invoke-static {}, Lorg/acra/ErrorReporter;->f()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/acra/n;->b:Ljava/lang/String;

    iget-object v3, p0, Lorg/acra/n;->c:Ljava/lang/String;

    iget-object v4, p0, Lorg/acra/n;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lorg/acra/ErrorReporter;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lorg/acra/n;->a:Lorg/acra/ErrorReporter;

    invoke-static {}, Lorg/acra/ErrorReporter;->f()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lorg/acra/n;->e:Z

    invoke-virtual {v1, v2, v3}, Lorg/acra/ErrorReporter;->a(Landroid/content/Context;Z)V
    :try_end_4d
    .catchall {:try_start_20 .. :try_end_4d} :catchall_69

    .line 144
    if-eqz v0, :cond_52

    .line 145
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 148
    :cond_52
    return-void

    .line 135
    :cond_53
    invoke-static {}, Lorg/acra/ErrorReporter;->f()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v2, "ACRA wakelock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_20

    .line 144
    :catchall_69
    move-exception v1

    if-eqz v0, :cond_6f

    .line 145
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6f
    throw v1
.end method
