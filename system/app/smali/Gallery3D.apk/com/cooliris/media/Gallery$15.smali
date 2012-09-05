.class Lcom/cooliris/media/Gallery$15;
.super Landroid/view/OrientationEventListener;
.source "Gallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/media/Gallery;->setOrientationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/media/Gallery;


# direct methods
.method constructor <init>(Lcom/cooliris/media/Gallery;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter "x0"

    .prologue
    .line 1991
    iput-object p1, p0, Lcom/cooliris/media/Gallery$15;->this$0:Lcom/cooliris/media/Gallery;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 8
    .parameter "orientation"

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f020031

    const v3, 0x7f020032

    .line 1995
    if-gez p1, :cond_a

    .line 2045
    :cond_9
    :goto_9
    return-void

    .line 1997
    :cond_a
    iget-object v2, p0, Lcom/cooliris/media/Gallery$15;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v2}, Lcom/cooliris/media/Gallery;->access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1999
    const/4 v0, 0x0

    .line 2000
    .local v0, checkOrientation:I
    iget-object v2, p0, Lcom/cooliris/media/Gallery$15;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v2}, Lcom/cooliris/media/Gallery;->access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/HudLayer;->getRotateButton()Lcom/cooliris/media/ImageButton;

    move-result-object v1

    .line 2001
    .local v1, rotateButton:Lcom/cooliris/media/ImageButton;
    iget-object v2, p0, Lcom/cooliris/media/Gallery$15;->this$0:Lcom/cooliris/media/Gallery;

    invoke-virtual {v2}, Lcom/cooliris/media/Gallery;->checkAutoRotationUse()V

    .line 2002
    iget-object v2, p0, Lcom/cooliris/media/Gallery$15;->this$0:Lcom/cooliris/media/Gallery;

    iget-boolean v2, v2, Lcom/cooliris/media/Gallery;->mIsAutoRotationOn:Z

    if-nez v2, :cond_33

    .line 2003
    invoke-virtual {v1, v5}, Lcom/cooliris/media/ImageButton;->setAction(Ljava/lang/Runnable;)V

    .line 2004
    invoke-virtual {v1, v3, v3}, Lcom/cooliris/media/ImageButton;->setImages(II)V

    goto :goto_9

    .line 2008
    :cond_33
    iget-object v2, p0, Lcom/cooliris/media/Gallery$15;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mOrientation:I
    invoke-static {v2}, Lcom/cooliris/media/Gallery;->access$2500(Lcom/cooliris/media/Gallery;)I

    move-result v2

    packed-switch v2, :pswitch_data_a0

    :pswitch_3c
    goto :goto_9

    .line 2010
    :pswitch_3d
    move v0, p1

    .line 2011
    const/16 v2, 0x41

    if-lt v0, v2, :cond_59

    const/16 v2, 0x127

    if-gt v0, v2, :cond_59

    .line 2012
    iget-object v2, p0, Lcom/cooliris/media/Gallery$15;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v2}, Lcom/cooliris/media/Gallery;->access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v2

    iget-object v2, v2, Lcom/cooliris/media/HudLayer;->mFullRotateButtonAction:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/ImageButton;->setAction(Ljava/lang/Runnable;)V

    .line 2013
    invoke-virtual {v1, v4, v4}, Lcom/cooliris/media/ImageButton;->setImages(II)V

    goto :goto_9

    .line 2016
    :cond_59
    invoke-virtual {v1, v5}, Lcom/cooliris/media/ImageButton;->setAction(Ljava/lang/Runnable;)V

    .line 2017
    invoke-virtual {v1, v3, v3}, Lcom/cooliris/media/ImageButton;->setImages(II)V

    goto :goto_9

    .line 2023
    :pswitch_60
    iget-object v2, p0, Lcom/cooliris/media/Gallery$15;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mOrientation:I
    invoke-static {v2}, Lcom/cooliris/media/Gallery;->access$2500(Lcom/cooliris/media/Gallery;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x4

    mul-int/lit8 v2, v2, 0x5a

    sub-int v0, p1, v2

    .line 2024
    const/16 v2, 0x8c

    if-lt p1, v2, :cond_74

    const/16 v2, 0xdc

    if-le p1, v2, :cond_97

    .line 2025
    :cond_74
    const/16 v2, 0x32

    if-ge v0, v2, :cond_83

    const/16 v2, -0x32

    if-le v0, v2, :cond_83

    .line 2026
    invoke-virtual {v1, v5}, Lcom/cooliris/media/ImageButton;->setAction(Ljava/lang/Runnable;)V

    .line 2027
    invoke-virtual {v1, v3, v3}, Lcom/cooliris/media/ImageButton;->setImages(II)V

    goto :goto_9

    .line 2030
    :cond_83
    iget-object v2, p0, Lcom/cooliris/media/Gallery$15;->this$0:Lcom/cooliris/media/Gallery;

    #getter for: Lcom/cooliris/media/Gallery;->mGridLayer:Lcom/cooliris/media/GridLayer;
    invoke-static {v2}, Lcom/cooliris/media/Gallery;->access$200(Lcom/cooliris/media/Gallery;)Lcom/cooliris/media/GridLayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v2

    iget-object v2, v2, Lcom/cooliris/media/HudLayer;->mFullRotateButtonAction:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/ImageButton;->setAction(Ljava/lang/Runnable;)V

    .line 2031
    invoke-virtual {v1, v4, v4}, Lcom/cooliris/media/ImageButton;->setImages(II)V

    goto/16 :goto_9

    .line 2035
    :cond_97
    invoke-virtual {v1, v5}, Lcom/cooliris/media/ImageButton;->setAction(Ljava/lang/Runnable;)V

    .line 2036
    invoke-virtual {v1, v3, v3}, Lcom/cooliris/media/ImageButton;->setImages(II)V

    goto/16 :goto_9

    .line 2008
    nop

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_60
        :pswitch_3c
        :pswitch_60
    .end packed-switch
.end method
