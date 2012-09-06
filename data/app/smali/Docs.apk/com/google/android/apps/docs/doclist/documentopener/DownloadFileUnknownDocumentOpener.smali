.class public Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileUnknownDocumentOpener;
.super Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;
.source "DownloadFileUnknownDocumentOpener.java"


# direct methods
.method public constructor <init>(Lsw;Landroid/content/Context;LVg;Llu;LdE;Lrt;LRU;LpO;LQN;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;LXh;)V
    .registers 20
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Laqa;
            value = "DefaultLocal"
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 35
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileUnknownDocumentOpener;->a(Lsw;Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;)Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;

    move-result-object v0

    invoke-direct {p0, p6, v0}, Lcom/google/android/apps/docs/doclist/documentopener/UnknownDocumentOpener;-><init>(Lrt;Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;)V

    .line 37
    return-void
.end method

.method private static a(Lsw;Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;)Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpener;
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    new-instance v0, LpW;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, LpW;-><init>(Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;Landroid/content/Context;)V

    .line 51
    invoke-interface {p0, v0}, Lsw;->a(Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;)Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;

    move-result-object v0

    return-object v0
.end method
