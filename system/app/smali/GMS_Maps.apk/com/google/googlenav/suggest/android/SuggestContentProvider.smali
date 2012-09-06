.class public Lcom/google/googlenav/suggest/android/SuggestContentProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;


# instance fields
.field private b:Lcom/google/googlenav/suggest/android/k;

.field private final c:Landroid/content/BroadcastReceiver;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const-string v0, "content://com.google.android.maps.SuggestionProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 50
    new-instance v0, Lcom/google/googlenav/suggest/android/j;

    invoke-direct {v0, p0}, Lcom/google/googlenav/suggest/android/j;-><init>(Lcom/google/googlenav/suggest/android/SuggestContentProvider;)V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->c:Landroid/content/BroadcastReceiver;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->d:Z

    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    .line 69
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v0

    .line 73
    new-instance v1, LaI/l;

    invoke-direct {v1}, LaI/l;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LaI/o;->a(LaI/r;I)V

    .line 78
    new-instance v1, LaI/i;

    const/4 v2, 0x1

    invoke-static {v2}, LaI/h;->a(I)LaI/w;

    move-result-object v2

    invoke-direct {v1, v2}, LaI/i;-><init>(LaI/w;)V

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, LaI/o;->a(LaI/r;I)V

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/suggest/android/SuggestContentProvider;)V
    .registers 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->b()V

    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    monitor-enter p0

    .line 94
    :try_start_6
    iget-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->d:Z

    if-eqz v1, :cond_23

    .line 95
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->d:Z

    .line 100
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_25

    .line 105
    invoke-static {v0}, Lcom/google/googlenav/android/c;->a(Landroid/content/Context;)V

    .line 106
    invoke-static {v0}, Lcom/google/googlenav/android/c;->b(Landroid/content/Context;)Lac/h;

    .line 108
    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->c()V

    .line 110
    invoke-static {v2, v2, v2}, LaI/o;->a(LaI/q;LaI/p;Lcom/google/googlenav/android/Y;)V

    .line 112
    invoke-direct {p0}, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->a()V

    .line 113
    :goto_22
    return-void

    .line 98
    :cond_23
    :try_start_23
    monitor-exit p0

    goto :goto_22

    .line 100
    :catchall_25
    move-exception v0

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v0
.end method

.method private c()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    if-nez v0, :cond_e

    .line 164
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Las/a;->a(Landroid/content/Context;Lcom/google/googlenav/android/Y;)Las/f;

    .line 166
    :cond_e
    invoke-static {}, Lax/l;->a()Lax/l;

    move-result-object v0

    .line 167
    if-nez v0, :cond_40

    .line 168
    invoke-static {v1}, Lax/l;->a(Lcom/google/googlenav/ui/wizard/ju;)Lax/l;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->s()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1}, Las/f;->k()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 173
    invoke-virtual {v0}, Lax/l;->f()Lax/m;

    move-result-object v1

    invoke-interface {v1}, Lax/m;->D_()V

    .line 174
    invoke-virtual {v0}, Lax/l;->g()Lax/m;

    move-result-object v0

    invoke-interface {v0}, Lax/m;->D_()V

    .line 177
    :cond_40
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 185
    const-string v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onCreate()Z
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->c:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.googlenav.suggest.android.SuggestContentProvider.INIT_SUGGEST_PROVIDER"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    iput-boolean v5, p0, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->d:Z

    .line 133
    invoke-static {v4, v4, v4}, LaI/o;->a(LaI/q;LaI/p;Lcom/google/googlenav/android/Y;)V

    .line 134
    new-instance v0, Lcom/google/googlenav/suggest/android/k;

    invoke-direct {v0}, Lcom/google/googlenav/suggest/android/k;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->b:Lcom/google/googlenav/suggest/android/k;

    .line 136
    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/google/googlenav/suggest/android/b;

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/googlenav/suggest/android/b;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, LaI/o;->a(LaI/r;I)V

    .line 144
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, LaI/o;->a(I)Z

    move-result v1

    if-nez v1, :cond_47

    .line 145
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, LaI/a;->a(Landroid/content/Context;)V

    .line 146
    invoke-static {}, LaI/a;->a()LaI/a;

    move-result-object v1

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, LaI/o;->a(LaI/r;I)V

    .line 150
    :cond_47
    new-instance v1, Lcom/google/googlenav/suggest/android/a;

    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/googlenav/suggest/android/a;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x96

    invoke-virtual {v0, v1, v2}, LaI/o;->a(LaI/r;I)V

    .line 157
    invoke-virtual {p0}, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.googlenav.suggest.android.SuggestContentProvider.SUGGEST_PROVIDER_CREATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 158
    return v5
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 204
    :try_start_0
    invoke-static {p4}, LaI/s;->a([Ljava/lang/String;)LaI/s;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->b:Lcom/google/googlenav/suggest/android/k;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/suggest/android/k;->a(LaI/s;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_22

    .line 211
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->b:Lcom/google/googlenav/suggest/android/k;

    invoke-virtual {v0}, Lcom/google/googlenav/suggest/android/k;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "in_progress"

    invoke-static {}, LaI/o;->a()LaI/o;

    move-result-object v0

    invoke-virtual {v0}, LaI/o;->h()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    iget-object v0, p0, Lcom/google/googlenav/suggest/android/SuggestContentProvider;->b:Lcom/google/googlenav/suggest/android/k;

    :goto_21
    return-object v0

    .line 206
    :catch_22
    move-exception v0

    .line 208
    const/4 v0, 0x0

    goto :goto_21

    .line 211
    :cond_25
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
