.class public Lcom/sec/android/mimage/photoretouching/WorkSpace;
.super Ljava/lang/Object;
.source "WorkSpace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/WorkSpace$ACTION;,
        Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;
    }
.end annotation


# instance fields
.field bRotate:Z

.field btn_cancel:Landroid/widget/Button;

.field btn_ok:Landroid/widget/Button;

.field btn_rotate1:Landroid/widget/ImageButton;

.field btn_rotate2:Landroid/widget/ImageButton;

.field btn_rotate3:Landroid/widget/ImageButton;

.field btn_rotate4:Landroid/widget/ImageButton;

.field private centerMenu:Landroid/view/ViewGroup;

.field public mAction:I

.field private mClickOK:Z

.field private mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

.field private mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

.field private mViewGroup:Landroid/view/View;

.field private mVisibleRect:Landroid/graphics/Rect;

.field private pressCancel:Z

.field private pressDone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;ILandroid/view/View$OnClickListener;)V
    .registers 9
    .parameter "context"
    .parameter "imageinfo"
    .parameter "mask"
    .parameter "action_type"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressDone:Z

    .line 40
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressCancel:Z

    .line 48
    iput p4, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    .line 50
    invoke-direct {p0, p1, p2, p5, p3}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->init(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Landroid/view/View$OnClickListener;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;)V

    .line 52
    new-instance v0, Lcom/sec/android/mimage/photoretouching/EffectController;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    invoke-direct {v0, p2, p3, v1}, Lcom/sec/android/mimage/photoretouching/EffectController;-><init>(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    .line 53
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->setView(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;)V

    .line 54
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->setAction(I)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/EffectController;->setWorkspace(Lcom/sec/android/mimage/photoretouching/WorkSpace;)V

    .line 56
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->run(I)V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mVisibleRect:Landroid/graphics/Rect;

    .line 60
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->bRotate:Z

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;ILandroid/view/View$OnClickListener;Landroid/os/Handler;)V
    .registers 10
    .parameter "context"
    .parameter "imageinfo"
    .parameter "mask"
    .parameter "action_type"
    .parameter "listener"
    .parameter "handler"

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressDone:Z

    .line 40
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressCancel:Z

    .line 64
    iput p4, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    .line 66
    invoke-direct {p0, p1, p2, p5, p3}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->init(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Landroid/view/View$OnClickListener;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;)V

    .line 68
    new-instance v0, Lcom/sec/android/mimage/photoretouching/EffectController;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    invoke-direct {v0, p2, p3, v1, p6}, Lcom/sec/android/mimage/photoretouching/EffectController;-><init>(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    .line 69
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->setView(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->setAction(I)V

    .line 71
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    invoke-virtual {v0, p0}, Lcom/sec/android/mimage/photoretouching/EffectController;->setWorkspace(Lcom/sec/android/mimage/photoretouching/WorkSpace;)V

    .line 72
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    invoke-virtual {v0, v2}, Lcom/sec/android/mimage/photoretouching/EffectController;->run(I)V

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mVisibleRect:Landroid/graphics/Rect;

    .line 76
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->bRotate:Z

    .line 78
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Lcom/sec/android/mimage/photoretouching/EffectController;
    .registers 2
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Z
    .registers 2
    .parameter

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressDone:Z

    return v0
.end method

.method static synthetic access$2(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Z
    .registers 2
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressCancel:Z

    return v0
.end method

.method static synthetic access$3(Lcom/sec/android/mimage/photoretouching/WorkSpace;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressDone:Z

    return-void
.end method

.method static synthetic access$4(Lcom/sec/android/mimage/photoretouching/WorkSpace;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/sec/android/mimage/photoretouching/WorkSpace;->setClickOK(Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/sec/android/mimage/photoretouching/WorkSpace;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressCancel:Z

    return-void
.end method

.method static synthetic access$6(Lcom/sec/android/mimage/photoretouching/WorkSpace;Landroid/view/ViewGroup;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->centerMenu:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$7(Lcom/sec/android/mimage/photoretouching/WorkSpace;)Landroid/view/ViewGroup;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->centerMenu:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Landroid/view/View$OnClickListener;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;)V
    .registers 14
    .parameter "contxt"
    .parameter "info"
    .parameter "listener"
    .parameter "mask"

    .prologue
    const/4 v2, 0x0

    .line 81
    new-instance v8, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    invoke-direct {v8, p0, p1}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;-><init>(Lcom/sec/android/mimage/photoretouching/WorkSpace;Landroid/content/Context;)V

    .line 83
    .local v8, build:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;
    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 84
    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    .line 85
    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v6

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v7

    .line 84
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 87
    invoke-virtual {v8, p3}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->setOkCancelListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v3

    invoke-virtual {p4, v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->setSMask(IIF)Z

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    .line 91
    #calls: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->create()Landroid/view/View;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$1(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mViewGroup:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mViewGroup:Landroid/view/View;

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    .line 94
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0, p2, p4, p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->init(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;Lcom/sec/android/mimage/photoretouching/WorkSpace;)V

    .line 97
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressDone:Z

    .line 98
    iput-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressCancel:Z

    .line 100
    return-void
.end method

.method private setClickOK(Z)V
    .registers 2
    .parameter "clickok"

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mClickOK:Z

    return-void
.end method


# virtual methods
.method public ApplyCancel()V
    .registers 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->run(I)V

    .line 214
    return-void
.end method

.method public ApplyToOriginal()V
    .registers 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->run(I)V

    .line 209
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->save()V

    .line 210
    return-void
.end method

.method public Rotate()Z
    .registers 2

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->bRotate:Z

    return v0
.end method

.method public cancel()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 154
    const-string v0, "[PhotoEditor_U1ICS_120206]"

    const-string v1, "canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    if-eqz v0, :cond_11

    .line 156
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->cancel()V

    .line 157
    :cond_11
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    .line 159
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mViewGroup:Landroid/view/View;

    .line 160
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    .line 162
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mVisibleRect:Landroid/graphics/Rect;

    .line 163
    return-void
.end method

.method public changeOKState(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->btn_ok:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 204
    return-void
.end method

.method public changeSubImage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "path"
    .parameter "backbmp"
    .parameter "backbmp2"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/mimage/photoretouching/EffectController;->ReloadBackground(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 167
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    if-eqz v0, :cond_a

    .line 140
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->clear()V

    .line 141
    :cond_a
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    .line 143
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mViewGroup:Landroid/view/View;

    .line 145
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    if-eqz v0, :cond_17

    .line 146
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->Destroy()V

    .line 148
    :cond_17
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    .line 150
    iput-object v1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mVisibleRect:Landroid/graphics/Rect;

    .line 151
    return-void
.end method

.method public clearView()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 442
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    packed-switch v0, :pswitch_data_2a

    .line 463
    :cond_6
    :goto_6
    return-void

    .line 447
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->getDrawType()I

    move-result v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->getDrawType()I

    move-result v0

    if-ge v0, v1, :cond_6

    .line 448
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setDrawType(I)V

    goto :goto_6

    .line 457
    :pswitch_1d
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->centerMenu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 458
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->centerMenu:Landroid/view/ViewGroup;

    check-cast v0, Lcom/sec/android/mimage/photoretouching/AdjustView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/AdjustView;->clear()V

    goto :goto_6

    .line 442
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/View;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mViewGroup:Landroid/view/View;

    return-object v0
.end method

.method public init_by_config(Landroid/content/Context;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Landroid/view/View$OnClickListener;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;Z)V
    .registers 16
    .parameter "contxt"
    .parameter "info"
    .parameter "listener"
    .parameter "mask"
    .parameter "isChanged"

    .prologue
    const/4 v9, 0x6

    const/4 v2, 0x0

    .line 103
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressDone:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressCancel:Z

    if-eqz v0, :cond_b

    .line 136
    :cond_a
    :goto_a
    return-void

    .line 106
    :cond_b
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    if-ge v0, v9, :cond_1a

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->centerMenu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 107
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->centerMenu:Landroid/view/ViewGroup;

    check-cast v0, Lcom/sec/android/mimage/photoretouching/AdjustView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/AdjustView;->clear()V

    .line 110
    :cond_1a
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_26

    .line 111
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->Eraser(I)Z

    .line 114
    :cond_26
    new-instance v8, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;

    invoke-direct {v8, p0, p1}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;-><init>(Lcom/sec/android/mimage/photoretouching/WorkSpace;Landroid/content/Context;)V

    .line 116
    .local v8, build:Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;
    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 117
    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSBuff()[I

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v3

    .line 118
    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getCanvasRoi()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v6

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v7

    .line 117
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 119
    invoke-virtual {v8, p3}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->setOkCancelListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    if-ge v0, v9, :cond_65

    .line 121
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/EffectController;->getStep()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->setProgress(I)V

    .line 124
    :cond_65
    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSWidth()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getSHeight()I

    move-result v1

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScale()F

    move-result v2

    invoke-virtual {p4, v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->setSMask(IIF)Z

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Lcom/sec/android/mimage/photoretouching/mask/MaskManager;->getSBuff(Z)[B

    .line 126
    #calls: Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->create()Landroid/view/View;
    invoke-static {v8}, Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;->access$1(Lcom/sec/android/mimage/photoretouching/WorkSpace$Builder;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mViewGroup:Landroid/view/View;

    .line 128
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mViewGroup:Landroid/view/View;

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    .line 129
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {p2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getDrawBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0, p2, p4, p0}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->init(Lcom/sec/android/mimage/photoretouching/common/ImageInfo;Lcom/sec/android/mimage/photoretouching/mask/MaskManager;Lcom/sec/android/mimage/photoretouching/WorkSpace;)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    invoke-virtual {v0, v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->setView(Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;)V

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mVisibleRect:Landroid/graphics/Rect;

    .line 135
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    invoke-virtual {v0, p5}, Lcom/sec/android/mimage/photoretouching/EffectController;->restart(Z)V

    goto/16 :goto_a
.end method

.method public isClickOK()Z
    .registers 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mClickOK:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 171
    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressDone:Z

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->pressCancel:Z

    if-eqz v2, :cond_a

    .line 199
    :cond_9
    :goto_9
    return v4

    .line 175
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-gt v2, v4, :cond_9

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 178
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 180
    .local v1, y:F
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mView:Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;

    iget-object v3, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/sec/android/mimage/photoretouching/mask/WorkspaceView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 182
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 183
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mVisibleRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_46

    goto :goto_9

    .line 187
    :pswitch_33
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->touch_down(FF)Z

    goto :goto_9

    .line 190
    :pswitch_39
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->touch_move(FF)Z

    goto :goto_9

    .line 193
    :pswitch_3f
    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mEffect:Lcom/sec/android/mimage/photoretouching/EffectController;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/mimage/photoretouching/EffectController;->touch_up(FF)Z

    goto :goto_9

    .line 185
    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_33
        :pswitch_3f
        :pswitch_39
    .end packed-switch
.end method

.method public resumeView()V
    .registers 2

    .prologue
    .line 466
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->mAction:I

    packed-switch v0, :pswitch_data_12

    .line 479
    :cond_5
    :goto_5
    return-void

    .line 473
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->centerMenu:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 474
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/WorkSpace;->centerMenu:Landroid/view/ViewGroup;

    check-cast v0, Lcom/sec/android/mimage/photoretouching/AdjustView;

    invoke-virtual {v0}, Lcom/sec/android/mimage/photoretouching/AdjustView;->resume()V

    goto :goto_5

    .line 466
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method
