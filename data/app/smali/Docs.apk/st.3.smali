.class public Lst;
.super Ljava/lang/Object;
.source "ThirdPartyDocumentOpenerImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lama;

.field final synthetic a:Landroid/os/Bundle;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;

.field final synthetic a:Ljava/util/List;

.field final synthetic a:LkR;

.field final synthetic a:LpP;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;Ljava/util/List;LpP;LkR;Landroid/os/Bundle;Lama;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lst;->a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;

    iput-object p2, p0, Lst;->a:Ljava/util/List;

    iput-object p3, p0, Lst;->a:LpP;

    iput-object p4, p0, Lst;->a:LkR;

    iput-object p5, p0, Lst;->a:Landroid/os/Bundle;

    iput-object p6, p0, Lst;->a:Lama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lst;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsq;

    .line 153
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 154
    iget-object v1, p0, Lst;->a:LpP;

    iget-object v2, p0, Lst;->a:LkR;

    iget-object v3, p0, Lst;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lsq;->a(LpP;LkR;Landroid/os/Bundle;)LalU;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lst;->a:Lama;

    invoke-virtual {v1, v0}, Lama;->a(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method
