.class public Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;
.super Lcom/sec/android/framework/draw/modes/ModeContext;
.source "ModeContext.java"


# static fields
.field public static final PenMode:Lcom/sec/android/framework/draw/modes/IModeState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    new-instance v0, Lcom/sec/android/app/ve/view/paint/drawingmodes/PenMode;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/paint/drawingmodes/PenMode;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->PenMode:Lcom/sec/android/framework/draw/modes/IModeState;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/sec/android/framework/draw/modes/ModeContext;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/sec/android/framework/draw/modes/ModeContext;-><init>(Landroid/view/View;)V

    .line 19
    sget-object v1, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->PenMode:Lcom/sec/android/framework/draw/modes/IModeState;

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    .line 22
    :try_start_7
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    if-eqz v1, :cond_10

    .line 23
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/AbstractStage;->dispose()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_18

    .line 28
    :cond_10
    :goto_10
    new-instance v1, Lcom/sec/android/framework/draw/Stage;

    invoke-direct {v1, p0}, Lcom/sec/android/framework/draw/Stage;-><init>(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V

    iput-object v1, p0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    .line 29
    return-void

    .line 25
    :catch_18
    move-exception v0

    .line 26
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method


# virtual methods
.method public invalidate(Landroid/graphics/RectF;)V
    .registers 7
    .parameter "refreshRect"

    .prologue
    .line 33
    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->view:Landroid/view/View;

    if-nez v3, :cond_5

    .line 45
    :goto_4
    return-void

    .line 37
    :cond_5
    :try_start_5
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 38
    .local v2, roundedRect:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v3}, Lcom/sec/android/framework/draw/Setting;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 39
    .local v0, canvasRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 40
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 41
    iget-object v3, p0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->view:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V
    :try_end_1f
    .catch Landroid/util/AndroidRuntimeException; {:try_start_5 .. :try_end_1f} :catch_20

    goto :goto_4

    .line 42
    .end local v0           #canvasRect:Landroid/graphics/Rect;
    .end local v2           #roundedRect:Landroid/graphics/Rect;
    :catch_20
    move-exception v1

    .line 43
    .local v1, e:Landroid/util/AndroidRuntimeException;
    invoke-virtual {v1}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    goto :goto_4
.end method
