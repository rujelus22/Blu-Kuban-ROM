.class public LVk;
.super Ljava/lang/Object;
.source "SingleDocSynchronizerImpl.java"

# interfaces
.implements LVj;


# instance fields
.field private final a:LQN;

.field private final a:LRU;

.field private final a:LTF;

.field private final a:LZU;


# direct methods
.method public constructor <init>(LRU;LTF;LQN;LZU;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, LVk;->a:LRU;

    .line 42
    iput-object p2, p0, LVk;->a:LTF;

    .line 43
    iput-object p3, p0, LVk;->a:LQN;

    .line 44
    iput-object p4, p0, LVk;->a:LZU;

    .line 45
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;LkR;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 74
    new-instance v0, LVm;

    invoke-direct {v0, p0, p1, p2}, LVm;-><init>(LVk;Landroid/content/Context;LkR;)V

    invoke-virtual {v0}, LVm;->start()V

    .line 81
    return-void
.end method

.method public b(Landroid/content/Context;LkR;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    new-instance v0, LVl;

    invoke-direct {v0, p0, p1, p2}, LVl;-><init>(LVk;Landroid/content/Context;LkR;)V

    invoke-virtual {v0}, LVl;->start()V

    .line 70
    return-void
.end method

.method public c(Landroid/content/Context;LkR;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, LVk;->d(Landroid/content/Context;LkR;)V

    .line 60
    return-void
.end method

.method d(Landroid/content/Context;LkR;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-virtual {p2}, LkR;->a()LkG;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, LkG;->b()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {p2}, LkR;->i()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {p2}, LkR;->h()Ljava/lang/String;

    move-result-object v3

    .line 91
    :try_start_10
    iget-object v4, p0, LVk;->a:LRU;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://docs.google.com/feeds/default/private/full/document:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1, v3}, LRU;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LSs;
    :try_end_28
    .catch Lasn; {:try_start_10 .. :try_end_28} :catch_32
    .catch LarL; {:try_start_10 .. :try_end_28} :catch_4c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_28} :catch_66

    move-result-object v1

    .line 105
    if-eqz v1, :cond_31

    .line 107
    :try_start_2b
    iget-object v3, p0, LVk;->a:LTF;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v1, v4}, LTF;->a(LkG;LSs;Ljava/lang/Boolean;)V
    :try_end_31
    .catch Ljava/text/ParseException; {:try_start_2b .. :try_end_31} :catch_80

    .line 113
    :cond_31
    :goto_31
    return-void

    .line 94
    :catch_32
    move-exception v0

    .line 95
    const-string v1, "SingleDocSynchronizerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 97
    :catch_4c
    move-exception v0

    .line 98
    const-string v1, "SingleDocSynchronizerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 100
    :catch_66
    move-exception v0

    .line 101
    const-string v1, "SingleDocSynchronizerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31

    .line 108
    :catch_80
    move-exception v0

    .line 109
    const-string v1, "SingleDocSynchronizerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, LZA;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method e(Landroid/content/Context;LkR;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, LVk;->a:LQN;

    sget-object v1, LQM;->a:LQM;

    invoke-interface {v0, p2, v1}, LQN;->c(LkR;LQM;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, LVk;->a:LZU;

    invoke-interface {v0}, LZU;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 120
    invoke-virtual {p2}, LkR;->a()Lld;

    move-result-object v0

    .line 121
    invoke-static {p1, v0}, Lcom/google/android/apps/docs/sync/syncadapter/ContentSyncService;->a(Landroid/content/Context;Lld;)V

    .line 123
    :cond_19
    return-void
.end method
