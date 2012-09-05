.class Lcom/arcsoft/quickview/MediaList$MediaItem;
.super Ljava/lang/Object;
.source "MediaList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/arcsoft/quickview/MediaList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaItem"
.end annotation


# instance fields
.field public dataTaken:J

.field private id:J

.field public mimeType:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field final synthetic this$0:Lcom/arcsoft/quickview/MediaList;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/arcsoft/quickview/MediaList;Landroid/database/Cursor;)V
    .registers 5
    .parameter
    .parameter "curosr"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/arcsoft/quickview/MediaList$MediaItem;->this$0:Lcom/arcsoft/quickview/MediaList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/arcsoft/quickview/MediaList$MediaItem;->id:J

    .line 404
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/quickview/MediaList$MediaItem;->path:Ljava/lang/String;

    .line 405
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/quickview/MediaList$MediaItem;->title:Ljava/lang/String;

    .line 406
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/arcsoft/quickview/MediaList$MediaItem;->mimeType:Ljava/lang/String;

    .line 407
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/arcsoft/quickview/MediaList$MediaItem;->dataTaken:J

    .line 408
    return-void
.end method

.method static synthetic access$300(Lcom/arcsoft/quickview/MediaList$MediaItem;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 395
    iget-wide v0, p0, Lcom/arcsoft/quickview/MediaList$MediaItem;->id:J

    return-wide v0
.end method


# virtual methods
.method public getUri(Z)Landroid/net/Uri;
    .registers 5
    .parameter "isVideo"

    .prologue
    .line 411
    if-eqz p1, :cond_b

    .line 412
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/arcsoft/quickview/MediaList$MediaItem;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 416
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/arcsoft/quickview/MediaList$MediaItem;->id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_a
.end method
