.class public LpU;
.super Ljava/lang/Object;
.source "DownloadFileDocumentOpenerImpl.java"

# interfaces
.implements LnQ;


# instance fields
.field private final a:LQM;

.field private a:LZN;

.field private final a:Landroid/os/Bundle;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

.field private final a:Ljava/lang/String;

.field private final a:Lld;

.field private final a:LpP;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;LpP;LkR;Landroid/os/Bundle;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, LpU;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, LpU;->a:LZN;

    .line 83
    iput-object p4, p0, LpU;->a:Landroid/os/Bundle;

    .line 84
    invoke-virtual {p3}, LkR;->a()Lld;

    move-result-object v0

    iput-object v0, p0, LpU;->a:Lld;

    .line 85
    invoke-virtual {p3}, LkR;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LpU;->a:Ljava/lang/String;

    .line 86
    invoke-virtual {p1, p3}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(LkR;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LpU;->b:Ljava/lang/String;

    .line 87
    iput-object p2, p0, LpU;->a:LpP;

    .line 88
    const-string v0, "documentOpenMethod"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_35

    invoke-static {v0}, LeD;->valueOf(Ljava/lang/String;)LeD;

    move-result-object v0

    .line 91
    :goto_2a
    invoke-virtual {p3}, LkR;->a()LkU;

    move-result-object v1

    invoke-virtual {v0, v1}, LeD;->a(LkU;)LQM;

    move-result-object v0

    iput-object v0, p0, LpU;->a:LQM;

    .line 92
    return-void

    .line 89
    :cond_35
    sget-object v0, LeD;->a:LeD;

    goto :goto_2a
.end method

.method private a()I
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 126
    iget-object v0, p0, LpU;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    iget-object v1, p0, LpU;->a:Lld;

    invoke-static {v0, v1}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;Lld;)LkR;

    move-result-object v0

    .line 127
    if-nez v0, :cond_e

    move v0, v7

    .line 170
    :goto_d
    return v0

    .line 131
    :cond_e
    iget-object v1, p0, LpU;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    invoke-static {v1}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;)LQN;

    move-result-object v1

    iget-object v2, p0, LpU;->a:LQM;

    invoke-interface {v1, v0, v2}, LQN;->c(LkR;LQM;)Z

    move-result v0

    if-eqz v0, :cond_1e

    move v0, v8

    .line 132
    goto :goto_d

    .line 135
    :cond_1e
    iget-object v0, p0, LpU;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;)LdE;

    move-result-object v0

    invoke-virtual {v0, p0}, LdE;->a(Ljava/lang/Object;)V

    .line 137
    const/4 v3, 0x0

    .line 139
    :try_start_28
    iget-object v0, p0, LpU;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    iget-object v1, p0, LpU;->a:Lld;

    iget-object v2, p0, LpU;->a:LpP;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(Lld;LpP;)Ljava/lang/String;
    :try_end_31
    .catch LarL; {:try_start_28 .. :try_end_31} :catch_36
    .catch Lasn; {:try_start_28 .. :try_end_31} :catch_5b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_31} :catch_80

    move-result-object v3

    .line 151
    :goto_32
    if-nez v3, :cond_a5

    move v0, v7

    .line 152
    goto :goto_d

    .line 140
    :catch_36
    move-exception v0

    .line 141
    const-string v1, "DownloadFileDocumentOpener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authentication error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, LarL;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, LpU;->a:LpP;

    sget-object v2, LpQ;->f:LpQ;

    invoke-interface {v1, v2, v0}, LpP;->a(LpQ;Ljava/lang/Throwable;)V

    goto :goto_32

    .line 143
    :catch_5b
    move-exception v0

    .line 144
    const-string v1, "DownloadFileDocumentOpener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse document feed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lasn;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v1, p0, LpU;->a:LpP;

    sget-object v2, LpQ;->h:LpQ;

    invoke-interface {v1, v2, v0}, LpP;->a(LpQ;Ljava/lang/Throwable;)V

    goto :goto_32

    .line 146
    :catch_80
    move-exception v0

    .line 147
    const-string v1, "DownloadFileDocumentOpener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network error: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, LpU;->a:LpP;

    sget-object v2, LpQ;->g:LpQ;

    invoke-interface {v1, v2, v0}, LpP;->a(LpQ;Ljava/lang/Throwable;)V

    goto :goto_32

    .line 155
    :cond_a5
    :try_start_a5
    iget-object v0, p0, LpU;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;)LVg;

    move-result-object v0

    iget-object v1, p0, LpU;->a:Lld;

    iget-object v1, v1, Lld;->b:Ljava/lang/String;

    iget-object v2, p0, LpU;->a:Lld;

    iget-object v2, v2, Lld;->a:Ljava/lang/String;

    iget-object v4, p0, LpU;->b:Ljava/lang/String;

    iget-object v5, p0, LpU;->a:LQM;

    invoke-virtual {v5}, LQM;->name()Ljava/lang/String;

    move-result-object v5

    new-instance v6, LpV;

    iget-object v9, p0, LpU;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    invoke-static {v9}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;)Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, LpU;->a:LZN;

    invoke-direct {v6, p0, v9, v10}, LpV;-><init>(LpU;Landroid/content/Context;LZN;)V

    invoke-interface/range {v0 .. v6}, LVg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LVd;)V
    :try_end_cb
    .catchall {:try_start_a5 .. :try_end_cb} :catchall_104
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_cb} :catch_d9

    .line 168
    iget-object v0, p0, LpU;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;)LdE;

    move-result-object v0

    const-string v1, "downloadTime"

    invoke-virtual {v0, p0, v1}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v8

    .line 170
    goto/16 :goto_d

    .line 164
    :catch_d9
    move-exception v0

    .line 165
    :try_start_da
    const-string v1, "DownloadFileDocumentOpener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catchall {:try_start_da .. :try_end_f6} :catchall_104

    .line 168
    iget-object v0, p0, LpU;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;)LdE;

    move-result-object v0

    const-string v1, "downloadTime"

    invoke-virtual {v0, p0, v1}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v7

    goto/16 :goto_d

    :catchall_104
    move-exception v0

    iget-object v1, p0, LpU;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    invoke-static {v1}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;)LdE;

    move-result-object v1

    const-string v2, "downloadTime"

    invoke-virtual {v1, p0, v2}, LdE;->a(Ljava/lang/Object;Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(LpU;)LpP;
    .registers 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, LpU;->a:LpP;

    return-object v0
.end method

.method private b()I
    .registers 5

    .prologue
    .line 174
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 176
    const/4 v0, -0x1

    .line 179
    :goto_b
    return v0

    :cond_c
    iget-object v0, p0, LpU;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    iget-object v1, p0, LpU;->a:LpP;

    iget-object v2, p0, LpU;->a:Lld;

    iget-object v3, p0, LpU;->a:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;LpP;Lld;Landroid/os/Bundle;)I

    move-result v0

    goto :goto_b
.end method


# virtual methods
.method public a(I)I
    .registers 3
    .parameter

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_10

    .line 104
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 100
    :pswitch_5
    invoke-direct {p0}, LpU;->a()I

    move-result v0

    goto :goto_4

    .line 102
    :pswitch_a
    invoke-direct {p0}, LpU;->b()I

    move-result v0

    goto :goto_4

    .line 96
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method public a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 110
    iget-object v0, p0, LpU;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    invoke-virtual {v0}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LpU;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(LZN;)V
    .registers 8
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, LpU;->a:LZN;

    .line 121
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x64

    iget-object v0, p0, LpU;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    invoke-static {v0}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;)Landroid/content/Context;

    move-result-object v0

    sget v5, LcY;->download_initializing:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, LZN;->a(JJLjava/lang/String;)V

    .line 123
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 115
    const/4 v0, 0x1

    return v0
.end method
