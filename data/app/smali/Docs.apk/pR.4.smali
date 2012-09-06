.class public LpR;
.super Lanf;
.source "DocumentOpenerModule.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lanf;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 25
    const-class v0, LpO;

    invoke-virtual {p0, v0}, LpR;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-string v1, "DefaultLocal"

    invoke-static {v1}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/annotation/Annotation;)LanU;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/docs/doclist/documentopener/LocalFileIntentOpener;

    invoke-interface {v0, v1}, LanU;->a(Ljava/lang/Class;)LanV;

    .line 27
    const-class v0, LpO;

    invoke-virtual {p0, v0}, LpR;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-string v1, "DefaultRemote"

    invoke-static {v1}, Laqc;->a(Ljava/lang/String;)Laqa;

    move-result-object v1

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/annotation/Annotation;)LanU;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/docs/doclist/documentopener/HtmlDocumentOpener;

    invoke-interface {v0, v1}, LanU;->a(Ljava/lang/Class;)LanV;

    .line 29
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;

    invoke-virtual {p0, v0}, LpR;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 30
    const-class v0, LrR;

    invoke-virtual {p0, v0}, LpR;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LrU;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 31
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

    invoke-virtual {p0, v0}, LpR;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 32
    const-class v0, Lsw;

    invoke-virtual {p0, v0}, LpR;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lsx;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 34
    const-class v0, LrN;

    invoke-virtual {p0, v0}, LpR;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, LrO;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 38
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/GViewDocumentOpener;

    invoke-virtual {p0, v0}, LpR;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/docs/doclist/documentopener/NativeGViewDocumentOpener;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 43
    const-class v0, Lrx;

    invoke-virtual {p0, v0}, LpR;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    sget-object v1, LanI;->a:LanG;

    invoke-interface {v0, v1}, LanQ;->a(LanG;)V

    .line 44
    const-class v0, Lrt;

    invoke-virtual {p0, v0}, LpR;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    sget-object v1, LanI;->a:LanG;

    invoke-interface {v0, v1}, LanQ;->a(LanG;)V

    .line 45
    const-class v0, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

    invoke-virtual {p0, v0}, LpR;->a(Ljava/lang/Class;)LanQ;

    move-result-object v0

    const-class v1, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreatorImpl;

    invoke-interface {v0, v1}, LanQ;->a(Ljava/lang/Class;)LanV;

    .line 46
    return-void
.end method
