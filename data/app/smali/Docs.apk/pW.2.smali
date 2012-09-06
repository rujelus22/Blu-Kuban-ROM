.class public final LpW;
.super Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;
.source "DownloadFileUnknownDocumentOpener.java"


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
    .line 45
    iput-object p8, p0, LpW;->a:Landroid/content/Context;

    invoke-direct/range {p0 .. p7}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpenerImpl;-><init>(Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, LpW;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, LcY;->exporting_document:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
