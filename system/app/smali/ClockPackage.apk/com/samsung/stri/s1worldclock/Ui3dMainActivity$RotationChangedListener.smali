.class public Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$RotationChangedListener;
.super Ljava/lang/Object;
.source "Ui3dMainActivity.java"

# interfaces
.implements Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RotationChangedListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1221
    const-class v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$RotationChangedListener;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$RotationChangedListener;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .registers 9
    .parameter "angle"

    .prologue
    const/16 v6, 0xb4

    const/16 v5, -0xb4

    const/high16 v4, 0x4000

    .line 1223
    add-int/lit8 p1, p1, 0x12

    .line 1224
    neg-int p1, p1

    .line 1226
    :goto_9
    const/16 v3, 0x168

    if-lt p1, v3, :cond_10

    .line 1227
    add-int/lit16 p1, p1, -0x168

    goto :goto_9

    .line 1229
    :cond_10
    :goto_10
    if-gt p1, v5, :cond_15

    .line 1230
    add-int/lit16 p1, p1, 0x168

    goto :goto_10

    .line 1233
    :cond_15
    if-le p1, v6, :cond_1a

    .line 1234
    rsub-int v3, p1, 0x168

    neg-int p1, v3

    .line 1237
    :cond_1a
    sget-boolean v3, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$RotationChangedListener;->$assertionsDisabled:Z

    if-nez v3, :cond_28

    if-le p1, v5, :cond_22

    if-le p1, v6, :cond_28

    :cond_22
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1242
    :cond_28
    const/high16 v1, 0x4170

    .line 1243
    .local v1, fSliceAngle:F
    if-gez p1, :cond_4a

    const v3, -0x40733333

    mul-float/2addr v3, v1

    div-float v0, v3, v4

    .line 1244
    .local v0, angleDelta:F
    :goto_32
    int-to-float v3, p1

    add-float/2addr v3, v0

    float-to-int v3, v3

    float-to-int v4, v1

    div-int v2, v3, v4

    .line 1247
    .local v2, longitude:I
    const/16 v3, -0xc

    if-ne v2, v3, :cond_3e

    .line 1248
    const/16 v2, 0xd

    .line 1252
    :cond_3e
    iget-object v3, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$RotationChangedListener;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    iget-boolean v3, v3, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->m_bIsToUpdateTZBar:Z

    if-nez v3, :cond_51

    .line 1253
    iget-object v3, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$RotationChangedListener;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->m_bIsToUpdateTZBar:Z

    .line 1257
    :goto_49
    return-void

    .line 1243
    .end local v0           #angleDelta:F
    .end local v2           #longitude:I
    :cond_4a
    const v3, 0x3f8ccccd

    mul-float/2addr v3, v1

    div-float v0, v3, v4

    goto :goto_32

    .line 1255
    .restart local v0       #angleDelta:F
    .restart local v2       #longitude:I
    :cond_51
    iget-object v3, p0, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity$RotationChangedListener;->this$0:Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;

    iget-object v3, v3, Lcom/samsung/stri/s1worldclock/Ui3dMainActivity;->mSwitcher_Handler:Landroid/os/Handler;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_49
.end method
