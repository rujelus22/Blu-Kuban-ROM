.class public final LrF;
.super Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;
.source "VideoDocumentOpener.java"


# instance fields
.field final synthetic a:LVw;


# direct methods
.method public constructor <init>(Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;LVw;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p8, p0, LrF;->a:LVw;

    invoke-direct/range {p0 .. p7}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;-><init>(Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;)V

    return-void
.end method


# virtual methods
.method public a(LkR;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, LrF;->a:LVw;

    invoke-interface {v0}, LVw;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lld;LpP;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 63
    .line 65
    :try_start_1
    iget-object v1, p0, LrF;->a:LVw;

    invoke-interface {v1, p1}, LVw;->a(Lld;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_f
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_6} :catch_1e
    .catch LJi; {:try_start_1 .. :try_end_6} :catch_2d
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_6} :catch_3c
    .catch LJk; {:try_start_1 .. :try_end_6} :catch_4b

    move-result-object v1

    .line 83
    :goto_7
    if-nez v1, :cond_5a

    .line 84
    sget-object v1, LpQ;->d:LpQ;

    invoke-interface {p2, v1, v0}, LpP;->a(LpQ;Ljava/lang/Throwable;)V

    .line 87
    :goto_e
    return-object v0

    .line 66
    :catch_f
    move-exception v1

    .line 67
    const-string v2, "VideoDocumentOpener"

    const-string v3, "Network error while retrieving video URL."

    invoke-static {v2, v3, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    sget-object v2, LpQ;->g:LpQ;

    invoke-interface {p2, v2, v1}, LpP;->a(LpQ;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 81
    goto :goto_7

    .line 69
    :catch_1e
    move-exception v1

    .line 70
    const-string v2, "VideoDocumentOpener"

    const-string v3, "Authentication error while retrieving video URL."

    invoke-static {v2, v3, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    sget-object v2, LpQ;->f:LpQ;

    invoke-interface {p2, v2, v1}, LpP;->a(LpQ;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 81
    goto :goto_7

    .line 72
    :catch_2d
    move-exception v1

    .line 73
    const-string v2, "VideoDocumentOpener"

    const-string v3, "Credential error while retrieving video URL."

    invoke-static {v2, v3, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    sget-object v2, LpQ;->f:LpQ;

    invoke-interface {p2, v2, v1}, LpP;->a(LpQ;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 81
    goto :goto_7

    .line 75
    :catch_3c
    move-exception v1

    .line 76
    const-string v2, "VideoDocumentOpener"

    const-string v3, "Failed to construct video info URL."

    invoke-static {v2, v3, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    sget-object v2, LpQ;->h:LpQ;

    invoke-interface {p2, v2, v1}, LpP;->a(LpQ;Ljava/lang/Throwable;)V

    move-object v1, v0

    .line 81
    goto :goto_7

    .line 78
    :catch_4b
    move-exception v1

    .line 79
    const-string v2, "VideoDocumentOpener"

    const-string v3, "Too many redirects while retrieving video info URL."

    invoke-static {v2, v3, v1}, LZA;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    sget-object v2, LpQ;->h:LpQ;

    invoke-interface {p2, v2, v1}, LpP;->a(LpQ;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_7

    :cond_5a
    move-object v0, v1

    .line 87
    goto :goto_e
.end method
