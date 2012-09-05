.class Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;
.super Ljava/lang/Object;
.source "SecretWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawingAttribute"
.end annotation


# instance fields
.field private mfXpos:F

.field private mfXscale:F

.field private mfYpos:F

.field private mfYscale:F

.field private mfZpos:F

.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;


# direct methods
.method constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)V
    .registers 8
    .parameter

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 3298
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3291
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->mfXpos:F

    .line 3292
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->mfYpos:F

    .line 3293
    const/high16 v0, -0x3e60

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->mfZpos:F

    .line 3295
    iput v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->mfXscale:F

    .line 3296
    iput v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->mfYscale:F

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    .line 3299
    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->setAttribute(FFFFF)V

    .line 3300
    return-void
.end method


# virtual methods
.method moveTo(Ljavax/microedition/khronos/opengles/GL10;I)V
    .registers 7
    .parameter "gl"
    .parameter "nDistance"

    .prologue
    const/high16 v3, 0x3fc0

    .line 3314
    const/4 v0, 0x0

    .line 3315
    .local v0, weight:F
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 3317
    packed-switch p2, :pswitch_data_42

    .line 3328
    const-string v1, "SecretWallpaper"

    const-string v2, "distance not set"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    :goto_10
    iget v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->mfXpos:F

    sub-float/2addr v1, v3

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mOffset:F
    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->access$1700(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)F

    move-result v2

    mul-float/2addr v2, v0

    sub-float v2, v3, v2

    const/high16 v3, 0x40a0

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->mfYpos:F

    iget v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->mfZpos:F

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 3331
    iget v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->mfXscale:F

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->mfLandscape:F
    invoke-static {v2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->access$4000(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)F

    move-result v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->mfYscale:F

    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 3332
    return-void

    .line 3319
    :pswitch_37
    const v0, 0x3f99999a

    .line 3320
    goto :goto_10

    .line 3322
    :pswitch_3b
    const/high16 v0, 0x3f00

    .line 3323
    goto :goto_10

    .line 3325
    :pswitch_3e
    const v0, 0x3e4ccccd

    .line 3326
    goto :goto_10

    .line 3317
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_37
        :pswitch_3b
        :pswitch_3e
    .end packed-switch
.end method

.method setAttribute(FFFFF)V
    .registers 6
    .parameter "xPos"
    .parameter "yPos"
    .parameter "zPos"
    .parameter "xScale"
    .parameter "yScale"

    .prologue
    .line 3336
    invoke-virtual {p0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->setXpos(F)V

    .line 3337
    invoke-virtual {p0, p2}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->setYpos(F)V

    .line 3338
    invoke-virtual {p0, p3}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->setZpos(F)V

    .line 3340
    invoke-virtual {p0, p4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->setXscale(F)V

    .line 3341
    invoke-virtual {p0, p5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->setYscale(F)V

    .line 3342
    return-void
.end method

.method public setXpos(F)V
    .registers 2
    .parameter "fXpos"

    .prologue
    .line 3345
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->mfXpos:F

    .line 3346
    return-void
.end method

.method public setXscale(F)V
    .registers 2
    .parameter "fXscale"

    .prologue
    .line 3369
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->mfXscale:F

    .line 3370
    return-void
.end method

.method public setYpos(F)V
    .registers 2
    .parameter "fYpos"

    .prologue
    .line 3353
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->mfYpos:F

    .line 3354
    return-void
.end method

.method public setYscale(F)V
    .registers 2
    .parameter "fYscale"

    .prologue
    .line 3377
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->mfYscale:F

    .line 3378
    return-void
.end method

.method public setZpos(F)V
    .registers 2
    .parameter "fZpos"

    .prologue
    .line 3361
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->mfZpos:F

    .line 3362
    return-void
.end method
