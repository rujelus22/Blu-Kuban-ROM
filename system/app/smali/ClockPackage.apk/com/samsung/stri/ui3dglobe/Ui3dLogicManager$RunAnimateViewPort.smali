.class public Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;
.super Ljava/lang/Object;
.source "Ui3dLogicManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunAnimateViewPort"
.end annotation


# instance fields
.field private m_anim_type:I

.field private m_time_ms:I

.field private m_viewport:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;


# direct methods
.method public constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;IILandroid/graphics/Rect;)V
    .registers 5
    .parameter
    .parameter "time_ms"
    .parameter "anim_type"
    .parameter "viewport_delta"

    .prologue
    .line 651
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput p2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->m_time_ms:I

    .line 653
    iput p3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->m_anim_type:I

    .line 654
    iput-object p4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->m_viewport:Landroid/graphics/Rect;

    .line 655
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 648
    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->m_anim_type:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;)Landroid/graphics/Rect;
    .registers 2
    .parameter "x0"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->m_viewport:Landroid/graphics/Rect;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 658
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;
    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->access$800(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 659
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->m_viewport:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;
    invoke-static {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->access$800(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 660
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->m_viewport:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    #getter for: Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->mGLView:Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;
    invoke-static {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->access$800(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 661
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->this$0:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    iget v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->m_time_ms:I

    iget v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->m_anim_type:I

    iget-object v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->m_viewport:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->m_viewport:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->m_viewport:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager$RunAnimateViewPort;->m_viewport:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    #calls: Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->nativeAnimateViewPort(IIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->access$900(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;IIIIII)V

    .line 663
    :cond_47
    return-void
.end method
