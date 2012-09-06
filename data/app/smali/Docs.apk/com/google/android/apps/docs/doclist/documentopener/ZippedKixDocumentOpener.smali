.class public Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;
.super Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;
.source "ZippedKixDocumentOpener.java"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/apps/docs/doclist/documentopener/AbstractImmediateDocumentOpener;-><init>()V

    .line 27
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;->a:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public a(LpP;LkR;Landroid/os/Bundle;)LnQ;
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-virtual {p2}, LkR;->a()Lld;

    move-result-object v0

    .line 33
    invoke-virtual {p2}, LkR;->c()Ljava/lang/String;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;->a:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/google/android/apps/docs/app/ZippedKixOpenActivity;->a(Landroid/content/Context;Lld;)Landroid/content/Intent;

    move-result-object v0

    .line 35
    new-instance v2, Lro;

    iget-object v3, p0, Lcom/google/android/apps/docs/doclist/documentopener/ZippedKixDocumentOpener;->a:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v1, v0}, Lro;-><init>(Landroid/content/Context;Lrn;Ljava/lang/String;Landroid/content/Intent;)V

    .line 36
    return-object v2
.end method
