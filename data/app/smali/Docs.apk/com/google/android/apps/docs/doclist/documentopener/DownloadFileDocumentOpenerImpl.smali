.class public Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;
.super Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;
.source "DownloadFileDocumentOpenerImpl.java"

# interfaces
.implements Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;


# instance fields
.field private final a:LQN;

.field private final a:LRU;

.field private final a:LVg;

.field private final a:Landroid/content/Context;

.field private final a:LdE;

.field private final a:Llu;

.field private final a:LpO;


# direct methods
.method public constructor <init>(Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;)V
    .registers 8
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Laqa;
            value = "DefaultLocal"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:LVg;

    .line 63
    iput-object p3, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:Llu;

    .line 64
    iput-object p4, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:LdE;

    .line 65
    iput-object p5, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:LRU;

    .line 66
    iput-object p6, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:LpO;

    .line 67
    iput-object p7, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:LQN;

    .line 68
    return-void
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;LpP;Lld;Landroid/os/Bundle;)I
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(LpP;Lld;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private a(LpP;Lld;Landroid/os/Bundle;)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 198
    invoke-direct {p0, p2}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(Lld;)LkR;

    move-result-object v2

    .line 199
    if-nez v2, :cond_a

    move v0, v1

    .line 235
    :cond_9
    :goto_9
    return v0

    .line 203
    :cond_a
    iget-object v3, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:LpO;

    invoke-static {v3, p1, v2, p3}, LpS;->a(LpO;LpP;LkR;Landroid/os/Bundle;)LnQ;

    move-result-object v3

    .line 208
    if-eqz v3, :cond_9

    .line 212
    invoke-interface {v3}, LnQ;->a()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 213
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:Landroid/content/Context;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    .line 215
    new-instance v4, LpT;

    invoke-direct {v4, p0, v3, v2, v0}, LpT;-><init>(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;LnQ;LkR;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v4}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_24
    move v0, v1

    .line 235
    goto :goto_9

    .line 228
    :cond_26
    :goto_26
    if-ltz v0, :cond_24

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_24

    .line 229
    invoke-interface {v3, v0}, LnQ;->a(I)I

    move-result v0

    goto :goto_26
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;)LQN;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:LQN;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;)LVg;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:LVg;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;)Landroid/content/Context;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;)LdE;
    .registers 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:LdE;

    return-object v0
.end method

.method public static synthetic a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;Lld;)LkR;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(Lld;)LkR;

    move-result-object v0

    return-object v0
.end method

.method private a(Lld;)LkR;
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 240
    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:Llu;

    iget-object v2, p1, Lld;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v1

    .line 241
    if-nez v1, :cond_13

    .line 242
    const-string v1, "DownloadFileDocumentOpener"

    const-string v2, "OpenLocalFile failed: account no longer exists"

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_12
    return-object v0

    .line 246
    :cond_13
    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:Llu;

    iget-object v3, p1, Lld;->b:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Llu;->a(LkG;Ljava/lang/String;)LkR;

    move-result-object v1

    .line 247
    if-nez v1, :cond_25

    .line 248
    const-string v1, "DownloadFileDocumentOpener"

    const-string v2, "OpenLocalFile failed: document no longer exists"

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_25
    move-object v0, v1

    .line 251
    goto :goto_12
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcY;->opening_document:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(LkR;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 275
    invoke-virtual {p1}, LkR;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lld;LpP;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a:LRU;

    invoke-interface {v0, p1}, LRU;->a(Lld;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(LpP;LkR;Landroid/os/Bundle;)LnQ;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    new-instance v0, LpU;

    invoke-direct {v0, p0, p1, p2, p3}, LpU;-><init>(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;LpP;LkR;Landroid/os/Bundle;)V

    return-object v0
.end method
