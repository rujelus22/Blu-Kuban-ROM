.class public Lcom/google/android/apps/docs/DocsApplication;
.super Lcom/google/android/apps/docs/GuiceApplication;
.source "DocsApplication.java"


# instance fields
.field public a:LFX;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LFZ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LGe;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LHW;
    .annotation runtime Lanr;
    .end annotation
.end field

.field public a:LZJ;
    .annotation runtime Lanr;
    .end annotation
.end field

.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanz;",
            ">;"
        }
    .end annotation
.end field

.field public a:Llv;
    .annotation runtime Lanr;
    .end annotation
.end field

.field a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/android/apps/docs/GuiceApplication;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/docs/DocsApplication;->a:Ljava/util/Map;

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/docs/DocsApplication;->a:Z

    .line 103
    return-void
.end method

.method static a(Landroid/app/Application;)Ljava/util/Collection;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lanz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    invoke-static {}, LaiA;->a()LaiB;

    move-result-object v0

    new-instance v1, Lch;

    invoke-direct {v1, p0}, Lch;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Laal;

    invoke-direct {v1}, Laal;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Lcb;

    invoke-direct {v1}, Lcb;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LVr;

    invoke-direct {v1}, LVr;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LpR;

    invoke-direct {v1}, LpR;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Lkl;

    invoke-direct {v1}, Lkl;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LQD;

    invoke-direct {v1}, LQD;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LIa;

    invoke-direct {v1}, LIa;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Ltd;

    invoke-direct {v1}, Ltd;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Ldz;

    invoke-direct {v1}, Ldz;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LRD;

    invoke-direct {v1}, LRD;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LJf;

    invoke-direct {v1, p0}, LJf;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LRb;

    invoke-direct {v1}, LRb;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LMe;

    invoke-direct {v1}, LMe;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LkN;

    invoke-direct {v1}, LkN;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LVA;

    invoke-direct {v1}, LVA;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LLy;

    invoke-direct {v1}, LLy;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LOF;

    invoke-direct {v1}, LOF;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Lmr;

    invoke-direct {v1}, Lmr;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LGl;

    invoke-direct {v1}, LGl;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Ldj;

    invoke-direct {v1}, Ldj;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Loo;

    invoke-direct {v1}, Loo;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LabT;

    invoke-direct {v1}, LabT;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LLj;

    invoke-direct {v1}, LLj;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Labs;

    invoke-direct {v1}, Labs;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Lmx;

    invoke-direct {v1}, Lmx;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Lja;

    invoke-direct {v1}, Lja;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Lkf;

    invoke-direct {v1}, Lkf;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, Loh;

    invoke-direct {v1}, Loh;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    new-instance v1, LNT;

    invoke-direct {v1}, LNT;-><init>()V

    invoke-virtual {v0, v1}, LaiB;->a(Ljava/lang/Object;)LaiB;

    move-result-object v0

    invoke-virtual {v0}, LaiB;->a()LaiA;

    move-result-object v0

    return-object v0
.end method

.method private a()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/docs/DocsApplication;->a:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/docs/DocsApplication;->a:Ljava/util/Map;

    .line 216
    :goto_6
    return-object v0

    .line 210
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/docs/DocsApplication;->a:Ljava/util/Map;

    .line 211
    invoke-virtual {p0}, Lcom/google/android/apps/docs/DocsApplication;->a()Ljava/util/Collection;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanz;

    .line 213
    iget-object v2, p0, Lcom/google/android/apps/docs/DocsApplication;->a:Ljava/util/Map;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/apps/docs/DocsApplication;->a(Ljava/util/Map;Lanz;)V

    goto :goto_16

    .line 216
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/docs/DocsApplication;->a:Ljava/util/Map;

    goto :goto_6
.end method

.method private a()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/docs/DocsApplication;->a:LHW;

    invoke-interface {v0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_18

    aget-object v3, v1, v0

    .line 161
    const-string v4, "com.google.android.apps.docs"

    invoke-static {v3, v4, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 162
    invoke-static {p0, v3, v5}, LVn;->a(Landroid/content/Context;Landroid/accounts/Account;Z)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 164
    :cond_18
    return-void
.end method

.method private b()V
    .registers 6

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/docs/DocsApplication;->a:LFX;

    monitor-enter v1
    :try_end_3
    .catch LGa; {:try_start_0 .. :try_end_3} :catch_21
    .catch LGf; {:try_start_0 .. :try_end_3} :catch_2a

    .line 174
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/docs/DocsApplication;->a:LFZ;

    iget-object v2, p0, Lcom/google/android/apps/docs/DocsApplication;->a:LFX;

    invoke-interface {v0, v2}, LFZ;->b(LFX;)V

    .line 175
    invoke-static {}, LZG;->a()LdX;

    move-result-object v0

    .line 176
    iget-object v2, v0, LdX;->c:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 177
    iget-object v2, p0, Lcom/google/android/apps/docs/DocsApplication;->a:LGe;

    iget-object v0, v0, LdX;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/apps/docs/DocsApplication;->a:LFX;

    const/4 v4, 0x0

    invoke-interface {v2, v0, v3, v4}, LGe;->a(Ljava/lang/String;LFX;Z)V

    .line 179
    :cond_1c
    monitor-exit v1

    .line 185
    :goto_1d
    return-void

    .line 179
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    :try_start_20
    throw v0
    :try_end_21
    .catch LGa; {:try_start_20 .. :try_end_21} :catch_21
    .catch LGf; {:try_start_20 .. :try_end_21} :catch_2a

    .line 180
    :catch_21
    move-exception v0

    .line 181
    const-string v1, "DocsApplication"

    const-string v2, "Unable to load cached client flags, will use defaults until next sync."

    invoke-static {v1, v2, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d

    .line 182
    :catch_2a
    move-exception v0

    .line 183
    const-string v1, "DocsApplication"

    const-string v2, "Unable to parse override client flags, will use cached flags only."

    invoke-static {v1, v2, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lanz;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    invoke-static {p0}, Lcom/google/android/apps/docs/DocsApplication;->a(Landroid/app/Application;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/List;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lanz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/google/android/apps/docs/DocsApplication;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 203
    return-void
.end method

.method protected a(Ljava/util/Map;Lanz;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lanz;",
            ">;",
            "Lanz;",
            ")V"
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .registers 2
    .parameter

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/google/android/apps/docs/GuiceApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 197
    invoke-static {p1}, LZG;->a(Landroid/content/Context;)V

    .line 198
    return-void
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 116
    invoke-static {}, LZG;->a()LdX;

    move-result-object v0

    iget-boolean v0, v0, LdX;->a:Z

    if-nez v0, :cond_c

    .line 117
    const/4 v0, 0x5

    invoke-static {v0}, LZA;->a(I)V

    .line 119
    :cond_c
    const-string v0, "DocsApplication"

    const-string v1, "in DocsApplication.onCreate"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-super {p0}, Lcom/google/android/apps/docs/GuiceApplication;->onCreate()V

    .line 122
    invoke-static {p0}, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;->a(Landroid/content/Context;)V

    .line 123
    invoke-static {p0}, LRz;->a(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/apps/docs/DocsApplication;->a()Lans;

    move-result-object v0

    invoke-static {v0, p0}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 125
    invoke-virtual {p0}, Lcom/google/android/apps/docs/DocsApplication;->a()Lans;

    move-result-object v0

    invoke-interface {v0, p0}, Lans;->a(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/apps/docs/DocsApplication;->a()Lans;

    move-result-object v0

    const-class v1, LZw;

    invoke-interface {v0, v1}, Lans;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 130
    monitor-enter p0

    .line 131
    const/4 v0, 0x1

    :try_start_35
    iput-boolean v0, p0, Lcom/google/android/apps/docs/DocsApplication;->a:Z

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 133
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_6a

    .line 135
    invoke-direct {p0}, Lcom/google/android/apps/docs/DocsApplication;->b()V

    .line 140
    new-instance v0, Lcp;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Purge obsolete data using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/docs/DocsApplication;->a:Llv;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcp;-><init>(Lcom/google/android/apps/docs/DocsApplication;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    iget-object v0, p0, Lcom/google/android/apps/docs/DocsApplication;->a:LZJ;

    const/4 v1, 0x0

    const-string v2, "task_startup"

    invoke-interface {v0, v1, v2}, LZJ;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_69

    .line 151
    invoke-direct {p0}, Lcom/google/android/apps/docs/DocsApplication;->a()V

    .line 153
    :cond_69
    return-void

    .line 133
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v0
.end method

.method public onLowMemory()V
    .registers 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/google/android/apps/docs/GuiceApplication;->onLowMemory()V

    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/docs/DocsApplication;->a()Lans;

    move-result-object v0

    invoke-static {v0, p0}, LcJ;->a(Lans;Landroid/content/Context;)V

    .line 192
    return-void
.end method

.method public onTerminate()V
    .registers 3

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/google/android/apps/docs/DocsApplication;->a()Lans;

    move-result-object v0

    const-class v1, LJH;

    invoke-interface {v0, v1}, Lans;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJH;

    .line 296
    if-eqz v0, :cond_11

    .line 297
    invoke-interface {v0}, LJH;->c()V

    .line 299
    :cond_11
    invoke-super {p0}, Lcom/google/android/apps/docs/GuiceApplication;->onTerminate()V

    .line 300
    return-void
.end method
