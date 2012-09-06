.class public Lsu;
.super Ljava/lang/Object;
.source "ThirdPartyDocumentOpenerImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lama;

.field final synthetic a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;Lama;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lsu;->a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;

    iput-object p2, p0, Lsu;->a:Lama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lsu;->a:Lama;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lama;->cancel(Z)Z

    .line 166
    return-void
.end method
