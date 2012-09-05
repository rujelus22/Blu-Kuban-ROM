.class final Lcom/sdgtl/mediahub/spr/ah;
.super Lcom/sdgtl/mediahub/spr/ap;

# interfaces
.implements Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$BitmapProvider;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/Main;


# direct methods
.method private constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 3

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/ah;->a:Lcom/sdgtl/mediahub/spr/Main;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sdgtl/mediahub/spr/ap;-><init>(Lcom/sdgtl/mediahub/spr/Main;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sdgtl/mediahub/spr/Main;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sdgtl/mediahub/spr/ah;-><init>(Lcom/sdgtl/mediahub/spr/Main;)V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/ah;)Lcom/sdgtl/mediahub/spr/Main;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ah;->a:Lcom/sdgtl/mediahub/spr/Main;

    return-object v0
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/ah;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/ah;->a(Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/a/a/d/b;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3a

    move-result-object v0

    if-nez v0, :cond_e

    :goto_c
    monitor-exit p0

    return-void

    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/ah;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->D(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getCoverWidth()I

    move-result v2

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/ah;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->D(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->getCoverHeight()I
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_3a

    move-result v3

    const/4 v1, 0x0

    :try_start_23
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_36
    .catchall {:try_start_23 .. :try_end_36} :catchall_3a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_36} :catch_3d

    :goto_36
    :try_start_36
    invoke-interface {p2, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;->bitmapReady(Landroid/graphics/Bitmap;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_c

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3d
    move-exception v0

    :try_start_3e
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_3a

    goto :goto_36
.end method


# virtual methods
.method public final synthetic requestBitmap(Ljava/lang/Object;Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;)V
    .registers 5

    check-cast p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ah;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->o(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->j:Ljava/lang/String;

    if-eqz v0, :cond_32

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->j:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {}, Lcom/a/a/a/a/d/b;->a()Lcom/a/a/a/a/d/b;

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/a/a/a/a/d/b;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2e

    iget-object v0, p1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->j:Ljava/lang/String;

    new-instance v1, Lcom/sdgtl/mediahub/spr/ai;

    invoke-direct {v1, p0, p1, p2}, Lcom/sdgtl/mediahub/spr/ai;-><init>(Lcom/sdgtl/mediahub/spr/ah;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;)V

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/aj;->a(Ljava/lang/String;Lcom/sdgtl/mediahub/spr/am;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    invoke-direct {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/ah;->a(Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;)V

    goto :goto_2d

    :cond_32
    invoke-direct {p0, p1, p2}, Lcom/sdgtl/mediahub/spr/ah;->a(Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL$NotifyBitmapReady;)V

    goto :goto_2d
.end method
