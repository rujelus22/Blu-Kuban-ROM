.class public Lcom/google/android/apps/docs/doclist/documentopener/VideoDocumentOpener;
.super Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;
.source "VideoDocumentOpener.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;LrR;LrN;LVw;LeZ;)V
    .registers 21
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 45
    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p11

    invoke-static/range {v0 .. v7}, Lcom/google/android/apps/docs/doclist/documentopener/VideoDocumentOpener;->a(Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;LVw;)Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p12

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/docs/doclist/documentopener/driveapp/ThirdPartyDocumentOpenerImpl;-><init>(Landroid/content/Context;Lcom/google/android/apps/docs/doclist/documentopener/FileOpenerIntentCreator;LrR;LrN;LeZ;Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;)V

    .line 48
    return-void
.end method

.method private static a(Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;LVw;)Lcom/google/android/apps/docs/doclist/documentopener/DownloadFileDocumentOpener;
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
    .line 54
    new-instance v0, LrF;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, LrF;-><init>(Landroid/content/Context;LVg;Llu;LdE;LRU;LpO;LQN;LVw;)V

    .line 91
    return-object v0
.end method
