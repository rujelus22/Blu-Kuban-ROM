.class Lcom/cooliris/media/GridInputProcessor$2;
.super Ljava/lang/Object;
.source "GridInputProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/GridInputProcessor;->selectSlot(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/GridInputProcessor;

.field final synthetic val$item:Lcom/cooliris/media/MediaItem;


# direct methods
.method constructor <init>(Lcom/cooliris/media/GridInputProcessor;Lcom/cooliris/media/MediaItem;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1364
    iput-object p1, p0, Lcom/cooliris/media/GridInputProcessor$2;->this$0:Lcom/cooliris/media/GridInputProcessor;

    iput-object p2, p0, Lcom/cooliris/media/GridInputProcessor$2;->val$item:Lcom/cooliris/media/MediaItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/cooliris/media/GridInputProcessor$2;->this$0:Lcom/cooliris/media/GridInputProcessor;

    #getter for: Lcom/cooliris/media/GridInputProcessor;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/cooliris/media/GridInputProcessor;->access$000(Lcom/cooliris/media/GridInputProcessor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/media/GridInputProcessor$2;->val$item:Lcom/cooliris/media/MediaItem;

    invoke-static {v0, v1}, Lcom/cooliris/media/CropImage;->launchCropperOrFinish(Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    .line 1368
    return-void
.end method
