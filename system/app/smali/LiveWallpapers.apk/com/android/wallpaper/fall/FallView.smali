.class Lcom/android/wallpaper/fall/FallView;
.super Landroid/renderscript/RSSurfaceView;
.source "FallView.java"


# instance fields
.field private mRender:Lcom/android/wallpaper/fall/FallRS;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, p1}, Landroid/renderscript/RSSurfaceView;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/wallpaper/fall/FallView;->setFocusable(Z)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/wallpaper/fall/FallView;->setFocusableInTouchMode(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 59
    :goto_7
    const/4 v0, 0x1

    return v0

    .line 51
    :pswitch_9
    iget-object v0, p0, Lcom/android/wallpaper/fall/FallView;->mRender:Lcom/android/wallpaper/fall/FallRS;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/wallpaper/fall/FallRS;->addDrop(FF)V

    .line 53
    const-wide/16 v0, 0x10

    :try_start_18
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_7

    .line 54
    :catch_1c
    move-exception v0

    goto :goto_7

    .line 48
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 10
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Landroid/renderscript/RSSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 39
    new-instance v1, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v1}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 40
    .local v1, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    invoke-virtual {p0, v1}, Lcom/android/wallpaper/fall/FallView;->createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    .line 41
    .local v0, RS:Landroid/renderscript/RenderScriptGL;
    new-instance v2, Lcom/android/wallpaper/fall/FallRS;

    invoke-direct {v2, p3, p4}, Lcom/android/wallpaper/fall/FallRS;-><init>(II)V

    iput-object v2, p0, Lcom/android/wallpaper/fall/FallView;->mRender:Lcom/android/wallpaper/fall/FallRS;

    .line 42
    iget-object v2, p0, Lcom/android/wallpaper/fall/FallView;->mRender:Lcom/android/wallpaper/fall/FallRS;

    invoke-virtual {p0}, Lcom/android/wallpaper/fall/FallView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/wallpaper/fall/FallRS;->init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;Z)V

    .line 43
    iget-object v2, p0, Lcom/android/wallpaper/fall/FallView;->mRender:Lcom/android/wallpaper/fall/FallRS;

    invoke-virtual {v2}, Lcom/android/wallpaper/fall/FallRS;->start()V

    .line 44
    return-void
.end method
