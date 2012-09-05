.class public Lcom/samsung/stri/ui3dglobe/Ui3d_DPUtils;
.super Ljava/lang/Object;
.source "Ui3d_DPUtils.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 5
    const-class v0, Lcom/samsung/stri/ui3dglobe/Ui3d_DPUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/samsung/stri/ui3dglobe/Ui3d_DPUtils;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ConvertFormat(I)Landroid/graphics/Bitmap$Config;
    .registers 2
    .parameter "ui3d_format"

    .prologue
    .line 8
    packed-switch p0, :pswitch_data_1a

    .line 16
    :pswitch_3
    sget-boolean v0, Lcom/samsung/stri/ui3dglobe/Ui3d_DPUtils;->$assertionsDisabled:Z

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 10
    :pswitch_d
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 19
    :goto_f
    return-object v0

    .line 12
    :pswitch_10
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_f

    .line 14
    :pswitch_13
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    goto :goto_f

    .line 19
    :cond_16
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_f

    .line 8
    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_d
        :pswitch_10
        :pswitch_3
        :pswitch_13
    .end packed-switch
.end method
