.class public Lsx;
.super Ljava/lang/Object;
.source "ThirdPartyDocumentOpenerImpl.java"

# interfaces
.implements Lsw;


# instance fields
.field private final a:Landroid/content/Context;

.field private final a:Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

.field private final a:LeZ;

.field private final a:LrN;

.field private final a:LrR;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;LrR;LrN;LeZ;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lsx;->a:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lsx;->a:Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

    .line 70
    iput-object p3, p0, Lsx;->a:LrR;

    .line 71
    iput-object p4, p0, Lsx;->a:LrN;

    .line 72
    iput-object p5, p0, Lsx;->a:LeZ;

    .line 73
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;)Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;
    .registers 9
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;

    iget-object v1, p0, Lsx;->a:Landroid/content/Context;

    iget-object v2, p0, Lsx;->a:Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;

    iget-object v3, p0, Lsx;->a:LrR;

    iget-object v4, p0, Lsx;->a:LrN;

    iget-object v5, p0, Lsx;->a:LeZ;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;-><init>(Landroid/content/Context;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;LrR;LrN;LeZ;Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;)V

    return-object v0
.end method
