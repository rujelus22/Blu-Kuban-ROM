.class Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;
.super Ljava/lang/Object;
.source "SecretWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WindMill"
.end annotation


# instance fields
.field private mCenter:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

.field private mPillar:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

.field private mWing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

.field private mbCreated:Z

.field private mbFlip:Z

.field private mbType:Z

.field private mfAlpha:F

.field private mfFanAngle:F

.field private mnDistance:I

.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;


# direct methods
.method constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3401
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3387
    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mPillar:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    .line 3388
    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mCenter:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    .line 3389
    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mWing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    .line 3392
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mfFanAngle:F

    .line 3394
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mbType:Z

    .line 3396
    iput v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mnDistance:I

    .line 3397
    iput-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mbCreated:Z

    .line 3398
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mfAlpha:F

    .line 3399
    iput-boolean v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mbFlip:Z

    .line 3403
    iput-boolean v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mbCreated:Z

    .line 3404
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->create()V

    .line 3405
    return-void
.end method

.method static synthetic access$2900(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mCenter:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mPillar:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mWing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 3385
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mnDistance:I

    return v0
.end method


# virtual methods
.method public create()V
    .registers 3

    .prologue
    .line 3408
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    invoke-direct {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mPillar:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    .line 3409
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    invoke-direct {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mCenter:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    .line 3410
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    iget-object v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    invoke-direct {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mWing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    .line 3411
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 3414
    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mPillar:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    .line 3415
    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mCenter:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    .line 3416
    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mWing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    .line 3417
    return-void
.end method

.method public drawWindMill(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .registers 10
    .parameter "gl"
    .parameter "bType"

    .prologue
    const/4 v6, 0x0

    .line 3453
    const/high16 v2, 0x3f80

    .line 3454
    .local v2, fColor:F
    sget-object v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mMainService:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->mbIsNight:Z
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;->access$1500(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3455
    const/4 v2, 0x0

    .line 3458
    :cond_c
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mnDistance:I

    if-nez v0, :cond_72

    .line 3459
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mPillar:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    iget v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mnDistance:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->moveTo(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 3460
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mbFlip:Z

    if-nez v0, :cond_63

    .line 3461
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->access$4100(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-result-object v0

    iget v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mfAlpha:F

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3474
    :goto_29
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mWing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    iget v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mnDistance:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->moveTo(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 3475
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mfFanAngle:F

    const/high16 v1, 0x3f80

    invoke-interface {p1, v0, v6, v6, v1}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 3476
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mnDistance:I

    if-nez v0, :cond_9b

    .line 3477
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->access$4500(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-result-object v0

    iget v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mfAlpha:F

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3482
    :goto_49
    iget v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mnDistance:I

    if-nez v0, :cond_aa

    .line 3483
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mCenter:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    iget v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mnDistance:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->moveTo(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 3484
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->access$4700(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-result-object v0

    iget v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mfAlpha:F

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 3489
    :goto_62
    return-void

    .line 3463
    :cond_63
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_01:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->access$4200(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-result-object v0

    iget v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mfAlpha:F

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto :goto_29

    .line 3466
    :cond_72
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mPillar:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    iget v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mnDistance:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->moveTo(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 3467
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mbFlip:Z

    if-nez v0, :cond_8c

    .line 3468
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->access$4300(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-result-object v0

    iget v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mfAlpha:F

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto :goto_29

    .line 3470
    :cond_8c
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_pillar_flip_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->access$4400(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-result-object v0

    iget v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mfAlpha:F

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto :goto_29

    .line 3479
    :cond_9b
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_wing_blur:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->access$4600(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-result-object v0

    iget v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mfAlpha:F

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto :goto_49

    .line 3486
    :cond_aa
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mCenter:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;

    iget v1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mnDistance:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$DrawingAttribute;->moveTo(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 3487
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;

    #getter for: Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->windmill_center_02:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;
    invoke-static {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;->access$4800(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer;)Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;

    move-result-object v0

    iget v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mfAlpha:F

    move-object v1, p1

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/Square;->draw(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    goto :goto_62
.end method

.method public isCreated()Z
    .registers 2

    .prologue
    .line 3492
    iget-boolean v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mbCreated:Z

    return v0
.end method

.method public setAlpha(F)V
    .registers 2
    .parameter "fAlpha"

    .prologue
    .line 3440
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mfAlpha:F

    .line 3441
    return-void
.end method

.method public setDistance(I)V
    .registers 2
    .parameter "nDistance"

    .prologue
    .line 3436
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mnDistance:I

    .line 3437
    return-void
.end method

.method public setFanAngle(F)V
    .registers 2
    .parameter "fFanAngle"

    .prologue
    .line 3420
    iput p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mfFanAngle:F

    .line 3421
    return-void
.end method

.method public setFlip(Z)V
    .registers 2
    .parameter "bFlip"

    .prologue
    .line 3444
    iput-boolean p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mbFlip:Z

    .line 3445
    return-void
.end method

.method public setType(Z)V
    .registers 2
    .parameter "bType"

    .prologue
    .line 3428
    iput-boolean p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/SecretWallpaperService$CSPRenderer$WindMill;->mbType:Z

    .line 3429
    return-void
.end method
