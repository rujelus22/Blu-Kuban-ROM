.class Lcom/cooliris/media/MediaItemTexture$1;
.super Ljava/lang/Thread;
.source "MediaItemTexture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/MediaItemTexture;->load(Lcom/cooliris/media/RenderView;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/MediaItemTexture;


# direct methods
.method constructor <init>(Lcom/cooliris/media/MediaItemTexture;)V
    .registers 2
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/cooliris/media/MediaItemTexture$1;->this$0:Lcom/cooliris/media/MediaItemTexture;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 282
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_1b

    .line 287
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/cooliris/media/MediaItemTexture$1;->this$0:Lcom/cooliris/media/MediaItemTexture;

    #getter for: Lcom/cooliris/media/MediaItemTexture;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cooliris/media/MediaItemTexture;->access$000(Lcom/cooliris/media/MediaItemTexture;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/MediaItemTexture$1;->this$0:Lcom/cooliris/media/MediaItemTexture;

    #getter for: Lcom/cooliris/media/MediaItemTexture;->mItem:Lcom/cooliris/media/MediaItem;
    invoke-static {v1}, Lcom/cooliris/media/MediaItemTexture;->access$100(Lcom/cooliris/media/MediaItemTexture;)Lcom/cooliris/media/MediaItem;

    move-result-object v1

    iget-wide v1, v1, Lcom/cooliris/media/MediaItem;->mId:J

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->cancelThumbnailRequest(Landroid/content/ContentResolver;J)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1a} :catch_1d

    .line 292
    :goto_1a
    return-void

    .line 283
    :catch_1b
    move-exception v0

    goto :goto_5

    .line 289
    :catch_1d
    move-exception v0

    goto :goto_1a
.end method
