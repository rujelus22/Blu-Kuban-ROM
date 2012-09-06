.class public final Lrv;
.super Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;
.source "PdfExportDocumentOpener.java"


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;Landroid/content/Context;)V
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
    .line 59
    iput-object p8, p0, Lrv;->a:Landroid/content/Context;

    invoke-direct/range {p0 .. p7}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;-><init>(Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lrv;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcY;->exporting_document:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(LkR;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 72
    const-string v0, "application/pdf"

    return-object v0
.end method

.method protected a(Lld;LpP;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;->a(Lld;LpP;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "exportFormat"

    const-string v2, "pdf"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 66
    const-string v1, "PdfExportDocumentOpener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "export url is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
