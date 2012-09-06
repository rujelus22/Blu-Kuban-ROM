.class public Lcom/google/android/apps/docs/doclist/documentopener/HtmlDocumentOpener;
.super Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;
.source "HtmlDocumentOpener.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/apps/docs/doclist/documentopener/HtmlDocumentOpener;->a:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public a(LpP;LkR;Landroid/os/Bundle;)LnQ;
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    new-instance v0, Lrm;

    iget-object v1, p0, Lcom/google/android/apps/docs/doclist/documentopener/HtmlDocumentOpener;->a:Landroid/content/Context;

    invoke-virtual {p2}, LkR;->a()LkG;

    move-result-object v2

    invoke-virtual {v2}, LkG;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, LkR;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2}, LkR;->c()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lrm;-><init>(Landroid/content/Context;Lrn;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v0
.end method
