.class public final Lcom/dropbox/android/activity/base/a;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static final d:Lcom/dropbox/android/activity/base/f;

.field private static final e:Landroid/os/Handler;


# instance fields
.field private final a:Lcom/dropbox/android/activity/base/e;

.field private final b:Landroid/app/Activity;

.field private c:Z

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    new-instance v0, Lcom/dropbox/android/activity/base/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/dropbox/android/activity/base/f;-><init>(Lcom/dropbox/android/activity/base/b;)V

    sput-object v0, Lcom/dropbox/android/activity/base/a;->d:Lcom/dropbox/android/activity/base/f;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/dropbox/android/activity/base/a;->e:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/dropbox/android/activity/base/e;)V
    .registers 3
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/base/a;->c:Z

    .line 81
    new-instance v0, Lcom/dropbox/android/activity/base/b;

    invoke-direct {v0, p0}, Lcom/dropbox/android/activity/base/b;-><init>(Lcom/dropbox/android/activity/base/a;)V

    iput-object v0, p0, Lcom/dropbox/android/activity/base/a;->f:Landroid/content/BroadcastReceiver;

    .line 107
    iput-object p1, p0, Lcom/dropbox/android/activity/base/a;->a:Lcom/dropbox/android/activity/base/e;

    .line 108
    iget-object v0, p0, Lcom/dropbox/android/activity/base/a;->a:Lcom/dropbox/android/activity/base/e;

    invoke-interface {v0}, Lcom/dropbox/android/activity/base/e;->e()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/dropbox/android/activity/base/a;)Lcom/dropbox/android/activity/base/e;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/dropbox/android/activity/base/a;->a:Lcom/dropbox/android/activity/base/e;

    return-object v0
.end method

.method private a(I)V
    .registers 6
    .parameter

    .prologue
    .line 133
    const-string v0, "network_state"

    iget-object v1, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/app/Activity;)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "count"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/dropbox/android/activity/base/d;

    invoke-direct {v1, p0, v0}, Lcom/dropbox/android/activity/base/d;-><init>(Lcom/dropbox/android/activity/base/a;Lcom/dropbox/android/util/r;)V

    invoke-virtual {v1}, Lcom/dropbox/android/activity/base/d;->run()V

    .line 140
    return-void
.end method

.method static synthetic b(Lcom/dropbox/android/activity/base/a;)Landroid/app/Activity;
    .registers 2
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/dropbox/android/activity/base/a;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 112
    const-string v0, "create"

    iget-object v1, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/app/Activity;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 113
    iget-object v0, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Ldbxyzptlk/g/a;->a(Landroid/content/Context;)Ldbxyzptlk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ldbxyzptlk/g/a;->a(Landroid/app/Activity;)V

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.dropbox.android.filemanager.ApiManager.ACTION_UNLINKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-static {v1}, Ldbxyzptlk/a/g;->a(Landroid/content/Context;)Ldbxyzptlk/a/g;

    move-result-object v1

    iget-object v2, p0, Lcom/dropbox/android/activity/base/a;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Ldbxyzptlk/a/g;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 116
    return-void
.end method

.method public final b()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 119
    sget-object v0, Lcom/dropbox/android/activity/base/a;->d:Lcom/dropbox/android/activity/base/f;

    invoke-virtual {v0}, Lcom/dropbox/android/activity/base/f;->b()I

    move-result v0

    .line 120
    const-string v1, "start"

    iget-object v2, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/app/Activity;)Lcom/dropbox/android/util/r;

    move-result-object v1

    const-string v2, "count"

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v1

    .line 121
    if-ne v0, v5, :cond_23

    .line 122
    const-string v2, "time.in.background.ms"

    sget-object v3, Lcom/dropbox/android/activity/base/a;->d:Lcom/dropbox/android/activity/base/f;

    invoke-virtual {v3}, Lcom/dropbox/android/activity/base/f;->c()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    .line 124
    :cond_23
    invoke-virtual {v1}, Lcom/dropbox/android/util/r;->c()V

    .line 125
    invoke-direct {p0, v0}, Lcom/dropbox/android/activity/base/a;->a(I)V

    .line 126
    iput-boolean v5, p0, Lcom/dropbox/android/activity/base/a;->c:Z

    .line 128
    iget-object v0, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    sget-object v1, Ldbxyzptlk/k/e;->a:Ldbxyzptlk/k/e;

    invoke-static {v0, v1}, Ldbxyzptlk/k/a;->a(Landroid/content/Context;Ldbxyzptlk/k/e;)V

    .line 129
    return-void
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 143
    const-string v0, "resume"

    iget-object v1, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/app/Activity;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 144
    iget-object v0, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Ldbxyzptlk/g/a;->a(Landroid/content/Context;)Ldbxyzptlk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ldbxyzptlk/g/a;->c(Landroid/app/Activity;)V

    .line 148
    iget-object v0, p0, Lcom/dropbox/android/activity/base/a;->a:Lcom/dropbox/android/activity/base/e;

    invoke-interface {v0}, Lcom/dropbox/android/activity/base/e;->e_()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-static {}, Lcom/dropbox/android/filemanager/a;->a()Lcom/dropbox/android/filemanager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/filemanager/a;->b()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 149
    iget-object v0, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 151
    :cond_2d
    return-void
.end method

.method public final d()V
    .registers 5

    .prologue
    .line 154
    const-string v0, "stop"

    iget-object v1, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/app/Activity;)Lcom/dropbox/android/util/r;

    move-result-object v0

    const-string v1, "count"

    sget-object v2, Lcom/dropbox/android/activity/base/a;->d:Lcom/dropbox/android/activity/base/f;

    invoke-virtual {v2}, Lcom/dropbox/android/activity/base/f;->a()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/dropbox/android/util/r;->a(Ljava/lang/String;J)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/android/activity/base/a;->c:Z

    .line 156
    return-void
.end method

.method public final e()V
    .registers 3

    .prologue
    .line 159
    const-string v0, "pause"

    iget-object v1, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/app/Activity;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 160
    return-void
.end method

.method public final f()V
    .registers 3

    .prologue
    .line 163
    const-string v0, "destroy"

    iget-object v1, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/dropbox/android/util/h;->a(Ljava/lang/String;Landroid/app/Activity;)Lcom/dropbox/android/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dropbox/android/util/r;->c()V

    .line 164
    invoke-static {}, Lcom/dropbox/android/util/h;->af()V

    .line 165
    iget-object v0, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Ldbxyzptlk/g/a;->a(Landroid/content/Context;)Ldbxyzptlk/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ldbxyzptlk/g/a;->b(Landroid/app/Activity;)V

    .line 166
    iget-object v0, p0, Lcom/dropbox/android/activity/base/a;->b:Landroid/app/Activity;

    invoke-static {v0}, Ldbxyzptlk/a/g;->a(Landroid/content/Context;)Ldbxyzptlk/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/android/activity/base/a;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldbxyzptlk/a/g;->a(Landroid/content/BroadcastReceiver;)V

    .line 167
    return-void
.end method

.method public final g()Z
    .registers 2

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/dropbox/android/activity/base/a;->c:Z

    return v0
.end method
