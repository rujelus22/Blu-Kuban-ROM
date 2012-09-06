.class public final LpX;
.super Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;
.source "DrawingDocumentOpener.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct/range {p0 .. p7}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;-><init>(Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;)V

    return-void
.end method


# virtual methods
.method public a(LkR;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 63
    const-string v0, "image/png"

    return-object v0
.end method

.method protected a(Lld;LpP;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(Lld;LpP;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "exportFormat"

    const-string v2, "png"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
