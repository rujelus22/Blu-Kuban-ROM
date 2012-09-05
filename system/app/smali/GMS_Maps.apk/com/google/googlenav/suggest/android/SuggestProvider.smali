.class public Lcom/google/googlenav/suggest/android/SuggestProvider;
.super Landroid/content/ContentProvider;


# static fields
.field public static final a:Landroid/net/Uri;

.field private static volatile d:Z


# instance fields
.field private b:Lcom/google/googlenav/suggest/android/b;

.field private c:I

.field private final e:Landroid/content/BroadcastReceiver;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.google.android.maps.SuggestionProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/suggest/android/SuggestProvider;->a:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/googlenav/suggest/android/SuggestProvider;->d:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Lcom/google/googlenav/suggest/android/d;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/d;-><init>(Lcom/google/googlenav/suggest/android/SuggestProvider;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->e:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->f:Z

    return-void
.end method

.method public static a()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/googlenav/suggest/android/SuggestProvider;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/suggest/android/SuggestProvider;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->c()V

    return-void
.end method

.method private b()V
    .registers 5

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    new-instance v1, LaV/l;

    invoke-direct {v1}, LaV/l;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LaV/n;->a(LaV/o;I)V

    new-instance v1, LaV/g;

    invoke-direct {v1}, LaV/g;-><init>()V

    invoke-virtual {v0, v1}, LaV/n;->a(LaV/o;)V

    new-instance v1, LaV/i;

    invoke-direct {v1}, LaV/i;-><init>()V

    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v2

    if-nez v2, :cond_24

    const-wide/16 v2, 0x3e8

    sput-wide v2, LaV/i;->b:J

    :cond_24
    invoke-virtual {v0, v1}, LaV/n;->a(LaV/o;)V

    return-void
.end method

.method private c()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    monitor-enter p0

    :try_start_6
    iget-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->f:Z

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->f:Z

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_35

    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lat/h;

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->d()LaM/e;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/f;->j()V

    invoke-virtual {v0}, LaM/e;->c()LaM/f;

    move-result-object v1

    invoke-virtual {v0}, LaM/e;->d()LaM/f;

    move-result-object v0

    invoke-static {v2, v2, v1, v0, v2}, LaV/n;->a(LaJ/u;LaE/h;LaM/f;LaM/f;Lcom/google/googlenav/android/ac;)V

    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->b()V

    :goto_32
    return-void

    :cond_33
    :try_start_33
    monitor-exit p0

    goto :goto_32

    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_35

    throw v0
.end method

.method private d()LaM/e;
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/googlenav/login/a;->a(Landroid/content/Context;Lcom/google/googlenav/android/ac;)Lcom/google/googlenav/login/g;

    :cond_e
    invoke-static {}, LaM/e;->a()LaM/e;

    move-result-object v0

    if-nez v0, :cond_40

    invoke-static {v1}, LaM/e;->a(Lcom/google/googlenav/ui/wizard/hM;)LaM/e;

    move-result-object v0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->u()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-static {}, Lcom/google/googlenav/login/g;->j()Lcom/google/googlenav/login/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/login/g;->k()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-virtual {v0}, LaM/e;->c()LaM/f;

    move-result-object v1

    invoke-interface {v1}, LaM/f;->E_()V

    invoke-virtual {v0}, LaM/e;->d()LaM/f;

    move-result-object v1

    invoke-interface {v1}, LaM/f;->E_()V

    :cond_40
    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3

    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->e:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.googlenav.suggest.android.SuggestProvider.INIT_SUGGEST_PROVIDER"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v5, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->f:Z

    invoke-static {v4, v4, v4, v4, v4}, LaV/n;->a(LaJ/u;LaE/h;LaM/f;LaM/f;Lcom/google/googlenav/android/ac;)V

    new-instance v0, Lcom/google/googlenav/suggest/android/b;

    invoke-direct {v0}, Lcom/google/googlenav/suggest/android/b;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/b;

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/suggest/android/a;

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/googlenav/suggest/android/a;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, LaV/n;->a(LaV/o;I)V

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    invoke-virtual {v0}, LaV/n;->d()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LaV/a;->a(Landroid/content/Context;)V

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    invoke-static {}, LaV/a;->a()LaV/a;

    move-result-object v1

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, LaV/n;->a(LaV/o;I)V

    :cond_4e
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.googlenav.suggest.android.SuggestProvider.SUGGEST_PROVIDER_CREATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return v5
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iput v3, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->c:I

    array-length v1, p4

    if-le v1, v4, :cond_a4

    aget-object v0, p4, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->c:I

    new-array v0, v2, [I

    aput v2, v0, v3

    move-object v1, v0

    :goto_16
    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    invoke-virtual {v0, v2}, LaV/n;->c(I)LaV/o;

    move-result-object v0

    check-cast v0, LaV/i;

    if-eqz v0, :cond_27

    iget v4, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->c:I

    invoke-virtual {v0, v4}, LaV/i;->b(I)V

    :cond_27
    invoke-static {}, Lcom/google/googlenav/android/a;->c()Z

    move-result v0

    if-nez v0, :cond_82

    array-length v0, p4

    if-le v0, v2, :cond_44

    const-string v0, "return_immediately"

    aget-object v2, p4, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/b;

    aget-object v2, p4, v3

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/suggest/android/b;->a(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/b;

    :goto_43
    return-object v0

    :cond_44
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/b;

    aget-object v2, p4, v3

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/suggest/android/b;->a(Ljava/lang/String;[I)V

    monitor-enter p0

    move v0, v3

    :goto_4d
    int-to-long v1, v0

    const-wide/16 v4, 0x32

    cmp-long v1, v1, v4

    if-gez v1, :cond_6a

    :try_start_54
    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v1

    invoke-virtual {v1}, LaV/n;->h()Z

    move-result v1

    if-nez v1, :cond_6a

    sget-boolean v1, Lcom/google/googlenav/suggest/android/SuggestProvider;->d:Z

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/b;

    invoke-virtual {v1}, Lcom/google/googlenav/suggest/android/b;->getCount()I
    :try_end_67
    .catchall {:try_start_54 .. :try_end_67} :catchall_7f
    .catch Ljava/lang/InterruptedException; {:try_start_54 .. :try_end_67} :catch_78

    move-result v1

    if-lez v1, :cond_70

    :cond_6a
    :goto_6a
    :try_start_6a
    monitor-exit p0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_7f

    sput-boolean v3, Lcom/google/googlenav/suggest/android/SuggestProvider;->d:Z

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/b;

    goto :goto_43

    :cond_70
    const-wide/16 v1, 0xc8

    :try_start_72
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_7f
    .catch Ljava/lang/InterruptedException; {:try_start_72 .. :try_end_75} :catch_78

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :catch_78
    move-exception v0

    :try_start_79
    const-string v1, "SuggestProvider"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a

    :catchall_7f
    move-exception v0

    monitor-exit p0
    :try_end_81
    .catchall {:try_start_79 .. :try_end_81} :catchall_7f

    throw v0

    :cond_82
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/b;

    aget-object v4, p4, v3

    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/suggest/android/b;->a(Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/b;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/b;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "in_progress"

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    invoke-virtual {v0}, LaV/n;->h()Z

    move-result v0

    if-nez v0, :cond_a2

    move v0, v2

    :goto_9c
    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestProvider;->b:Lcom/google/googlenav/suggest/android/b;

    goto :goto_43

    :cond_a2
    move v0, v3

    goto :goto_9c

    :cond_a4
    move-object v1, v0

    goto/16 :goto_16
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
