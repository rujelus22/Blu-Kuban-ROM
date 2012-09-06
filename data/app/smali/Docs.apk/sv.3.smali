.class public Lsv;
.super Ljava/lang/Object;
.source "ThirdPartyDocumentOpenerImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lsv;->a:Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 171
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 172
    return-void
.end method
