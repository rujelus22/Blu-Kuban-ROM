.class public Lcom/infraware/filemanager/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;
    }
.end annotation


# instance fields
.field private m_oClient:Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;

.field private m_oConnection:Landroid/media/MediaScannerConnection;

.field private m_oMediaList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/media/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_oParent:Lcom/infraware/filemanager/file/FileBaseActivity;


# direct methods
.method public constructor <init>(Lcom/infraware/filemanager/file/FileBaseActivity;)V
    .registers 6
    .parameter "parent"

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v2, p0, Lcom/infraware/filemanager/media/MediaScanner;->m_oConnection:Landroid/media/MediaScannerConnection;

    .line 23
    iput-object v2, p0, Lcom/infraware/filemanager/media/MediaScanner;->m_oClient:Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;

    .line 24
    iput-object v2, p0, Lcom/infraware/filemanager/media/MediaScanner;->m_oMediaList:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lcom/infraware/filemanager/media/MediaScanner;->m_oParent:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 30
    move-object v0, p1

    .line 31
    .local v0, context:Landroid/content/Context;
    move-object v1, v0

    .line 32
    .local v1, rootContext:Landroid/content/Context;
    :goto_e
    if-nez v0, :cond_2b

    .line 39
    iget-object v0, p0, Lcom/infraware/filemanager/media/MediaScanner;->m_oParent:Lcom/infraware/filemanager/file/FileBaseActivity;

    .line 41
    iget-object v2, p0, Lcom/infraware/filemanager/media/MediaScanner;->m_oClient:Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;

    if-nez v2, :cond_1d

    .line 42
    new-instance v2, Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;

    invoke-direct {v2, p0}, Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;-><init>(Lcom/infraware/filemanager/media/MediaScanner;)V

    iput-object v2, p0, Lcom/infraware/filemanager/media/MediaScanner;->m_oClient:Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;

    .line 44
    :cond_1d
    iget-object v2, p0, Lcom/infraware/filemanager/media/MediaScanner;->m_oConnection:Landroid/media/MediaScannerConnection;

    if-nez v2, :cond_2a

    .line 45
    new-instance v2, Landroid/media/MediaScannerConnection;

    iget-object v3, p0, Lcom/infraware/filemanager/media/MediaScanner;->m_oClient:Lcom/infraware/filemanager/media/MediaScanner$MediaScannerClient;

    invoke-direct {v2, v1, v3}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v2, p0, Lcom/infraware/filemanager/media/MediaScanner;->m_oConnection:Landroid/media/MediaScannerConnection;

    .line 46
    :cond_2a
    return-void

    .line 34
    :cond_2b
    move-object v1, v0

    .line 35
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .restart local v0       #context:Landroid/content/Context;
    goto :goto_e
.end method

.method static synthetic access$0(Lcom/infraware/filemanager/media/MediaScanner;)Lcom/infraware/filemanager/file/FileBaseActivity;
    .registers 2
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/infraware/filemanager/media/MediaScanner;->m_oParent:Lcom/infraware/filemanager/file/FileBaseActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/infraware/filemanager/media/MediaScanner;)Ljava/util/ArrayList;
    .registers 2
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/infraware/filemanager/media/MediaScanner;->m_oMediaList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/infraware/filemanager/media/MediaScanner;)Landroid/media/MediaScannerConnection;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/infraware/filemanager/media/MediaScanner;->m_oConnection:Landroid/media/MediaScannerConnection;

    return-object v0
.end method


# virtual methods
.method public scanFile(Ljava/util/ArrayList;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/infraware/filemanager/media/MediaItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/infraware/filemanager/media/MediaItem;>;"
    iput-object p1, p0, Lcom/infraware/filemanager/media/MediaScanner;->m_oMediaList:Ljava/util/ArrayList;

    .line 51
    iget-object v0, p0, Lcom/infraware/filemanager/media/MediaScanner;->m_oConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 52
    return-void
.end method
