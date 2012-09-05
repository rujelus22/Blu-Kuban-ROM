.class Lcom/cooliris/media/BoundaryLayer$1;
.super Ljava/lang/Object;
.source "BoundaryLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/BoundaryLayer;->setPositionAndSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/BoundaryLayer;


# direct methods
.method constructor <init>(Lcom/cooliris/media/BoundaryLayer;)V
    .registers 2
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/cooliris/media/BoundaryLayer$1;->this$0:Lcom/cooliris/media/BoundaryLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer$1;->this$0:Lcom/cooliris/media/BoundaryLayer;

    #calls: Lcom/cooliris/media/BoundaryLayer;->setImageSize()V
    invoke-static {v0}, Lcom/cooliris/media/BoundaryLayer;->access$000(Lcom/cooliris/media/BoundaryLayer;)V

    .line 236
    iget-object v0, p0, Lcom/cooliris/media/BoundaryLayer$1;->this$0:Lcom/cooliris/media/BoundaryLayer;

    #calls: Lcom/cooliris/media/BoundaryLayer;->setPosition()V
    invoke-static {v0}, Lcom/cooliris/media/BoundaryLayer;->access$100(Lcom/cooliris/media/BoundaryLayer;)V

    .line 237
    return-void
.end method
