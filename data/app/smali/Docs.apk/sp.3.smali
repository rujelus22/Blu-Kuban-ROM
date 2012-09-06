.class public Lsp;
.super Lsq;
.source "NativeOtherAppOpenerOption.java"


# instance fields
.field private final a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;

.field private final a:Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator$UriIntentBuilder;


# direct methods
.method public constructor <init>(Lss;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator$UriIntentBuilder;Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lsq;-><init>(Lss;)V

    .line 36
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator$UriIntentBuilder;

    iput-object v0, p0, Lsp;->a:Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator$UriIntentBuilder;

    .line 37
    invoke-static {p3}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;

    iput-object v0, p0, Lsp;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;

    .line 38
    return-void
.end method

.method public static a(LkR;LeD;Landroid/content/Context;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;)Ljava/util/List;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LkR;",
            "LeD;",
            "Landroid/content/Context;",
            "Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;",
            "Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lsp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    invoke-interface {p4, p0}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;->a(LkR;)Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, LkR;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p1, v0, v1}, Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;->a(LeD;Ljava/lang/String;Ljava/lang/String;)LpZ;

    move-result-object v2

    .line 61
    invoke-interface {v2}, LpZ;->a()Ljava/util/List;

    move-result-object v3

    .line 62
    invoke-static {}, Lajk;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 63
    invoke-interface {v2}, LpZ;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 64
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 65
    const/4 v0, 0x0

    move v1, v0

    :goto_22
    if-ge v1, v5, :cond_44

    .line 66
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 67
    invoke-interface {v2, v1}, LpZ;->a(I)Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator$UriIntentBuilder;

    move-result-object v7

    .line 68
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const-string v8, ""

    invoke-static {v6, v0, v8}, Lss;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Lss;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_40

    .line 70
    new-instance v8, Lsp;

    invoke-direct {v8, v0, v7, p4}, Lsp;-><init>(Lss;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator$UriIntentBuilder;Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;)V

    .line 72
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_40
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_22

    .line 75
    :cond_44
    return-object v4
.end method


# virtual methods
.method public a(LpP;LkR;Landroid/os/Bundle;)LalU;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LpP;",
            "LkR;",
            "Landroid/os/Bundle;",
            ")",
            "LalU",
            "<",
            "LnQ;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 44
    const-string v1, "uriIntentBuilder"

    iget-object v2, p0, Lsp;->a:Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator$UriIntentBuilder;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    iget-object v1, p0, Lsp;->a:Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;->a(LpP;LkR;Landroid/os/Bundle;)LalU;

    move-result-object v0

    return-object v0
.end method

.method a()Z
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method
