.class public Lcom/swype/android/widget/InputWindow;
.super Lcom/swype/android/widget/SwypeView;
.source "InputWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/widget/InputWindow$KeyboardDisplay;,
        Lcom/swype/android/widget/InputWindow$DrawBuffer;
    }
.end annotation


# static fields
.field public static final ENTITY_KEYBOARD:I = 0x0

.field public static final ENTITY_KEYBOARD_W_HANDLES:I = 0x1

.field private static final GRID_COUNT:I = 0x3

.field public static final HIGHLIGHT_COLOR:I = -0x55cccccd

.field private static final LANGUAGE_KEY_STRING_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final MAX_NUMBER_OF_PATHS:I = 0xa

.field private static final MIN_GRID_MOVEMENT:I = 0xa

.field private static final MIN_HANDLE_PRESS_TO_ACTIVATE:J = 0x96L

.field private static final PATH_ACTIVE:I = 0x1

.field private static final PATH_BLOCKED:I = 0x2

.field private static final PATH_INACTIVE_UNBLOCKED:I = 0x0

.field private static final RETURN_KEY_ALTERNATIVE_ICON:Ljava/lang/String; = "SwypeReturnKeyIcon"

.field public static isSmallerkb:Z

.field public static isToggleCalled:Z


# instance fields
.field final DEBUG:Z

.field private backgroundColor:I

.field private core:Lcom/swype/android/jni/SwypeCore;

.field private displayWingTransparent:Z

.field private display_no:I

.field private drawTracePath:Z

.field private force_bold_font:Z

.field private highLightRectEnlarged:Landroid/graphics/Rect;

.field private ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

.field private isKeyboardDynamic:Z

.field public isWingDrawnInDynamic:I

.field private keyPressGlow:Landroid/graphics/drawable/Drawable;

.field private keyboardCurrentWidth:I

.field private keyboardIsInMoveState:Z

.field private keyboardOffsetX:I

.field private keyboardPosition:I

.field private lastMovePress:J

.field private linePath:Landroid/graphics/Path;

.field private mBufMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/swype/android/widget/InputWindow$DrawBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurBitmap:Landroid/graphics/Bitmap;

.field private mCurCanvas:Landroid/graphics/Canvas;

.field private mCurX:I

.field private mLastKeyboard:Landroid/graphics/Bitmap;

.field private mLastKeyboardCropped:Landroid/graphics/Bitmap;

.field private mMovePathId:I

.field private mPressXOffset:I

.field private m_destRect:Landroid/graphics/Rect;

.field private m_tempRect:Landroid/graphics/Rect;

.field public moveableKbOutlineColor:I

.field private paintPermHighlight:Landroid/graphics/Paint;

.field private pathStates:[I

.field private pathTracePath:Landroid/graphics/Path;

.field private positionToMove:I

.field private touchStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/swype/android/widget/TouchEventType;",
            ">;"
        }
    .end annotation
.end field

.field private userVenturedOutsideKeyboardBoundaries:Z

.field private wingDrawables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private wingWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 83
    sput-boolean v0, Lcom/swype/android/widget/InputWindow;->isSmallerkb:Z

    .line 87
    sput-boolean v0, Lcom/swype/android/widget/InputWindow;->isToggleCalled:Z

    .line 139
    const-string v0, "[A-Z]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/swype/android/widget/InputWindow;->LANGUAGE_KEY_STRING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 298
    invoke-direct {p0, p1}, Lcom/swype/android/widget/SwypeView;-><init>(Landroid/content/Context;)V

    .line 48
    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->DEBUG:Z

    .line 128
    iput v2, p0, Lcom/swype/android/widget/InputWindow;->backgroundColor:I

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/widget/InputWindow;->drawTracePath:Z

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->highLightRectEnlarged:Landroid/graphics/Rect;

    .line 180
    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->displayWingTransparent:Z

    .line 201
    iput v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardCurrentWidth:I

    .line 206
    iput v2, p0, Lcom/swype/android/widget/InputWindow;->display_no:I

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->mBufMap:Ljava/util/Map;

    .line 244
    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->touchStates:Ljava/util/Map;

    .line 264
    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->isKeyboardDynamic:Z

    .line 275
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_44

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->pathStates:[I

    .line 299
    return-void

    .line 275
    nop

    :array_44
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 308
    invoke-direct {p0, p1, p2}, Lcom/swype/android/widget/SwypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->DEBUG:Z

    .line 128
    iput v2, p0, Lcom/swype/android/widget/InputWindow;->backgroundColor:I

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/widget/InputWindow;->drawTracePath:Z

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->highLightRectEnlarged:Landroid/graphics/Rect;

    .line 180
    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->displayWingTransparent:Z

    .line 201
    iput v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardCurrentWidth:I

    .line 206
    iput v2, p0, Lcom/swype/android/widget/InputWindow;->display_no:I

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->mBufMap:Ljava/util/Map;

    .line 244
    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->touchStates:Ljava/util/Map;

    .line 264
    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->isKeyboardDynamic:Z

    .line 275
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_44

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->pathStates:[I

    .line 309
    return-void

    .line 275
    nop

    :array_44
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 319
    invoke-direct {p0, p1, p2, p3}, Lcom/swype/android/widget/SwypeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->DEBUG:Z

    .line 128
    iput v2, p0, Lcom/swype/android/widget/InputWindow;->backgroundColor:I

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/widget/InputWindow;->drawTracePath:Z

    .line 159
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    .line 160
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->highLightRectEnlarged:Landroid/graphics/Rect;

    .line 180
    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->displayWingTransparent:Z

    .line 201
    iput v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardCurrentWidth:I

    .line 206
    iput v2, p0, Lcom/swype/android/widget/InputWindow;->display_no:I

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->mBufMap:Ljava/util/Map;

    .line 244
    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->touchStates:Ljava/util/Map;

    .line 264
    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->isKeyboardDynamic:Z

    .line 275
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_44

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->pathStates:[I

    .line 320
    return-void

    .line 275
    nop

    :array_44
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private computeTextSizeBestFit(FLjava/lang/String;Landroid/graphics/Rect;)F
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1251
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->fontSizeMap:Ljava/util/Map;

    if-eqz v0, :cond_28

    .line 1252
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->fontSizeMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 1253
    if-eqz v0, :cond_28

    .line 1254
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1278
    :goto_27
    return v0

    .line 1259
    :cond_28
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_51

    const/4 v0, 0x3

    .line 1260
    :goto_30
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    .line 1262
    const/high16 v2, 0x4080

    add-float/2addr v2, p1

    .line 1265
    :goto_3b
    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1266
    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1267
    int-to-float v4, v0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_53

    .line 1269
    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0

    sub-double/2addr v2, v4

    double-to-float v2, v2

    .line 1273
    goto :goto_3b

    .line 1259
    :cond_51
    const/4 v0, 0x0

    goto :goto_30

    .line 1274
    :cond_53
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->fontSizeMap:Ljava/util/Map;

    if-nez v0, :cond_5e

    .line 1275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->fontSizeMap:Ljava/util/Map;

    .line 1277
    :cond_5e
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->fontSizeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    .line 1278
    goto :goto_27
.end method

.method private drawHighLight(ZLandroid/graphics/Rect;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1222
    sget-boolean v0, Lcom/swype/android/inputmethod/ConfigSetting;->DEBUG_DRAW_BOUNDING_RECT:Z

    if-nez v0, :cond_6

    if-nez p1, :cond_10

    .line 1224
    :cond_6
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mCurBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->paintPermHighlight:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, p2, p2, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1238
    :goto_f
    return-void

    .line 1228
    :cond_10
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->highLightRectEnlarged:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1229
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 1230
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->highLightRectEnlarged:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 1231
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->highLightRectEnlarged:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1232
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 1233
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->highLightRectEnlarged:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1234
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->highLightRectEnlarged:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1235
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->keyPressGlow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->highLightRectEnlarged:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1236
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->keyPressGlow:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_f
.end method

.method private drawKeyboardBitmap(Ljava/lang/String;)V
    .registers 9
    .parameter

    .prologue
    .line 1151
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/swype/android/widget/KeyboardBitmapManager;->getKeyboard(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1153
    if-eqz v2, :cond_173

    .line 1156
    :try_start_a
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a3

    .line 1157
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_50

    iget v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    if-lez v0, :cond_50

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWingBackgroundTransparent()Z

    move-result v0

    if-nez v0, :cond_50

    .line 1159
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1161
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1163
    :cond_50
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->hasMovableWings()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1164
    const/4 v0, 0x2

    .line 1165
    iget-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    if-eqz v1, :cond_194

    .line 1166
    const/4 v0, 0x4

    move v1, v0

    .line 1167
    :goto_5d
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 1168
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr v4, v0

    const/4 v5, 0x0

    iget v6, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1172
    invoke-direct {p0, v3}, Lcom/swype/android/widget/InputWindow;->sanitizeRect(Landroid/graphics/Rect;)V

    .line 1173
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1174
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1178
    :cond_a3
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardPosition:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/swype/android/widget/InputWindow;->getKbBoundingRect(II)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1179
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1180
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1182
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_173

    .line 1183
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_116

    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_116

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWingBackgroundTransparent()Z

    move-result v0

    if-nez v0, :cond_116

    .line 1186
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int v3, v0, v1

    .line 1187
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1189
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1191
    :cond_116
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->hasMovableWings()Z

    move-result v0

    if-eqz v0, :cond_173

    .line 1192
    const/4 v0, 0x3

    .line 1193
    iget-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    if-eqz v1, :cond_192

    .line 1194
    const/4 v0, 0x5

    move v1, v0

    .line 1195
    :goto_123
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_173

    .line 1196
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v3, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v3, v0

    .line 1198
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v2, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int/2addr v2, v0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-direct {v4, v2, v5, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1200
    invoke-direct {p0, v4}, Lcom/swype/android/widget/InputWindow;->sanitizeRect(Landroid/graphics/Rect;)V

    .line 1201
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1202
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_173
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_173} :catch_174

    .line 1219
    :cond_173
    :goto_173
    return-void

    .line 1206
    :catch_174
    move-exception v0

    .line 1214
    const-string v1, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RuntimeException at InputWindow.drawKeyboardBitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_173

    :cond_192
    move v1, v0

    goto :goto_123

    :cond_194
    move v1, v0

    goto/16 :goto_5d
.end method

.method private drawText(Lcom/swype/android/widget/PaintCommand;)V
    .registers 21
    .parameter

    .prologue
    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    move v5, v0

    const/4 v6, 0x3

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x4

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    move v7, v0

    const/4 v8, 0x5

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x6

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 585
    const/4 v4, 0x7

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v11

    .line 586
    const/16 v4, 0x8

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v4

    int-to-float v4, v4

    .line 587
    const/16 v5, 0x9

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v12

    .line 588
    const/16 v5, 0xa

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v6

    .line 589
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArg(I)Ljava/lang/String;

    move-result-object v5

    .line 590
    const/4 v7, 0x1

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArg(I)Ljava/lang/String;

    move-result-object v7

    .line 591
    const/4 v8, 0x0

    .line 592
    const/4 v9, 0x2

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->getArg(I)Ljava/lang/String;

    move-result-object v9

    .line 594
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/swype/android/widget/InputWindow;->isKeyboardDynamic:Z

    move v10, v0

    if-nez v10, :cond_1ee

    .line 595
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/InputWindow;->defaultTextSize:F

    move v4, v0

    .line 596
    const/4 v6, 0x1

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-nez v10, :cond_9a

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v13, v0

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    sub-float/2addr v13, v4

    float-to-int v13, v13

    iput v13, v10, Landroid/graphics/Rect;->top:I

    .line 605
    :cond_9a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v13, 0x2

    if-gt v10, v13, :cond_a9

    const-string v10, "SwypeReturnKeyIcon"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e7

    :cond_a9
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/InputWindow;->doWrapText(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1e7

    .line 608
    const-string v8, "SwypeReturnKeyIcon"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e0

    .line 609
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/InputWindow;->defaultTextSize:F

    move v4, v0

    const/high16 v6, 0x4040

    add-float/2addr v4, v6

    .line 610
    const/4 v6, 0x1

    move/from16 v18, v6

    move v6, v4

    move/from16 v4, v18

    .line 614
    :goto_c8
    const/4 v8, 0x1

    move/from16 v18, v8

    move v8, v6

    move v6, v4

    move/from16 v4, v18

    .line 620
    :goto_cf
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v13, 0x2

    if-ne v10, v13, :cond_f8

    .line 621
    sget-object v4, Lcom/swype/android/widget/InputWindow;->LANGUAGE_KEY_STRING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1a8

    .line 622
    const/4 v4, 0x0

    .line 625
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/InputWindow;->defaultTextSize:F

    move v8, v0

    const-string v10, "NN"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v13, v0

    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v10

    move-object v3, v13

    invoke-direct {v0, v1, v2, v3}, Lcom/swype/android/widget/InputWindow;->computeTextSizeBestFit(FLjava/lang/String;Landroid/graphics/Rect;)F

    move-result v8

    .line 631
    :cond_f8
    :goto_f8
    if-eqz v4, :cond_1dd

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v4, v0

    move-object/from16 v0, p0

    move v1, v8

    move-object v2, v5

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/swype/android/widget/InputWindow;->computeTextSizeBestFit(FLjava/lang/String;Landroid/graphics/Rect;)F

    move-result v4

    move v13, v6

    move v8, v4

    .line 639
    :goto_10a
    float-to-double v14, v8

    const-wide/high16 v16, 0x4020

    cmpg-double v4, v14, v16

    if-gez v4, :cond_1c4

    if-eqz v7, :cond_1c4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1c4

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/widget/InputWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v7, v5}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 644
    if-eqz v4, :cond_1ab

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 661
    :goto_194
    sget-boolean v4, Lcom/swype/android/inputmethod/ConfigSetting;->DEBUG_DRAW_BOUNDING_RECT:Z

    if-eqz v4, :cond_1a7

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v4, v0

    const v5, -0xffff01

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/widget/InputWindow;->debugDrawRect(Landroid/graphics/Rect;I)V

    .line 664
    :cond_1a7
    return-void

    .line 627
    :cond_1a8
    const/4 v4, 0x1

    goto/16 :goto_f8

    .line 652
    :cond_1ab
    const-string v4, "Swype"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "alternativeIcon not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_194

    .line 655
    :cond_1c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/swype/android/widget/InputWindow;->force_bold_font:Z

    move v4, v0

    if-eqz v4, :cond_1da

    const/4 v4, 0x1

    move v10, v4

    :goto_1d3
    const/4 v14, 0x1

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lcom/swype/android/widget/InputWindow;->drawText(Ljava/lang/String;Landroid/graphics/Rect;ZFLjava/lang/String;IIIII)V

    goto :goto_194

    :cond_1da
    const/4 v4, 0x0

    move v10, v4

    goto :goto_1d3

    :cond_1dd
    move v13, v6

    goto/16 :goto_10a

    :cond_1e0
    move/from16 v18, v6

    move v6, v4

    move/from16 v4, v18

    goto/16 :goto_c8

    :cond_1e7
    move/from16 v18, v8

    move v8, v4

    move/from16 v4, v18

    goto/16 :goto_cf

    :cond_1ee
    move v13, v6

    move v8, v4

    goto/16 :goto_10a
.end method

.method private flushCanvas(Landroid/graphics/Rect;)V
    .registers 6
    .parameter "rect"

    .prologue
    .line 1133
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->offScreenCanvas:Landroid/graphics/Canvas;

    if-eq v1, v2, :cond_19

    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->offScreenCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mCurBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_19

    .line 1136
    invoke-direct {p0, p1}, Lcom/swype/android/widget/InputWindow;->sanitizeRect(Landroid/graphics/Rect;)V

    .line 1137
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->offScreenCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->mCurBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, p1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1139
    :cond_19
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->offScreenCanvas:Landroid/graphics/Canvas;

    iput-object v1, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    .line 1140
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->offScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/swype/android/widget/InputWindow;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 1142
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 1143
    .local v0, d:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1144
    return-void
.end method

.method private getCenterPosition()I
    .registers 2

    .prologue
    .line 1424
    const/4 v0, 0x1

    return v0
.end method

.method private getKbBoundingRect(II)Landroid/graphics/Rect;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1539
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getKeyboardBitmapSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/widget/ViewSize;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/swype/android/widget/InputWindow;->wingWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1540
    div-int/lit8 v1, v0, 0x2

    .line 1542
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getScreenDefinition()Lcom/swype/android/inputmethod/ScreenDefinition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/ScreenDefinition;->getScreenWidth()I

    move-result v2

    .line 1543
    div-int/lit8 v3, v2, 0x3

    .line 1545
    rem-int v4, v2, v3

    div-int/lit8 v4, v4, 0x2

    .line 1547
    mul-int v5, v3, p1

    sub-int v4, v5, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    sub-int v1, v3, v1

    .line 1549
    if-gez v1, :cond_55

    move v1, v6

    .line 1555
    :cond_2e
    :goto_2e
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1556
    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 1557
    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getKeyboardBitmapSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swype/android/widget/ViewSize;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1558
    if-nez p2, :cond_5c

    iget v3, p0, Lcom/swype/android/widget/InputWindow;->wingWidth:I

    :goto_45
    add-int/2addr v1, v3

    iput v1, v2, Landroid/graphics/Rect;->left:I

    .line 1559
    iget v1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    if-nez p2, :cond_5e

    iget v1, p0, Lcom/swype/android/widget/InputWindow;->wingWidth:I

    mul-int/lit8 v1, v1, 0x2

    :goto_51
    sub-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->right:I

    .line 1560
    return-object v2

    .line 1551
    :cond_55
    add-int v3, v1, v0

    if-le v3, v2, :cond_2e

    .line 1552
    sub-int v1, v2, v0

    goto :goto_2e

    :cond_5c
    move v3, v6

    .line 1558
    goto :goto_45

    :cond_5e
    move v1, v6

    .line 1559
    goto :goto_51
.end method

.method private resetKeyboardPosition()V
    .registers 4

    .prologue
    .line 1434
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->hasMovableWings()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->hasMovableWingsDyn()Z

    move-result v0

    if-nez v0, :cond_2a

    sget-boolean v0, Lcom/swype/android/widget/InputWindow;->isSmallerkb:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x30

    sget-object v2, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;->SMALL_DISPLAY:Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

    invoke-virtual {v2}, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/jni/SwypeCore;->getSettingInt(II)I

    move-result v0

    sget-object v1, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;->LARGE_DISPLAY:Lcom/swype/android/widget/InputWindow$KeyboardDisplay;

    invoke-virtual {v1}, Lcom/swype/android/widget/InputWindow$KeyboardDisplay;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_41

    sget-boolean v0, Lcom/swype/android/widget/InputWindow;->isToggleCalled:Z

    if-nez v0, :cond_41

    .line 1437
    :cond_2a
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->getKeyboardHorzPos()I

    move-result v0

    iput v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardPosition:I

    .line 1438
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardPosition:I

    if-ltz v0, :cond_3b

    iget v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardPosition:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_41

    .line 1439
    :cond_3b
    invoke-direct {p0}, Lcom/swype/android/widget/InputWindow;->getCenterPosition()I

    move-result v0

    iput v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardPosition:I

    .line 1442
    :cond_41
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->recalculateKeyboardOffsetX()V

    .line 1443
    return-void
.end method

.method private sanitizeRect(Landroid/graphics/Rect;)V
    .registers 4
    .parameter "rect"

    .prologue
    const/4 v1, 0x0

    .line 1390
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-gez v0, :cond_7

    .line 1391
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 1393
    :cond_7
    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-gez v0, :cond_d

    .line 1394
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1396
    :cond_d
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_1b

    .line 1397
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1399
    :cond_1b
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_29

    .line 1400
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1402
    :cond_29
    return-void
.end method

.method private setClipping(Landroid/graphics/Rect;)V
    .registers 4
    .parameter

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1148
    return-void
.end method

.method private setCurCanvas(I)V
    .registers 6
    .parameter

    .prologue
    .line 1071
    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 1073
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->offScreenCanvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    .line 1074
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->offScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 1104
    :goto_b
    return-void

    .line 1077
    :cond_c
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->mBufMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;

    .line 1078
    if-nez v0, :cond_1f

    .line 1079
    new-instance v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;

    invoke-direct {v0}, Lcom/swype/android/widget/InputWindow$DrawBuffer;-><init>()V

    .line 1082
    :cond_1f
    iget-object v1, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->canvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_3b

    iget-object v1, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_5f

    .line 1084
    :cond_3b
    iget-object v1, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_44

    .line 1086
    iget-object v1, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1089
    :cond_44
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->bitmap:Landroid/graphics/Bitmap;

    .line 1091
    iget-object v1, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->canvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_5f

    .line 1092
    iget-object v1, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->canvas:Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1096
    :cond_5f
    iget-object v1, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->canvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_75

    .line 1097
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->canvas:Landroid/graphics/Canvas;

    .line 1098
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mBufMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    :cond_75
    iget-object v1, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->canvas:Landroid/graphics/Canvas;

    iput-object v1, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    .line 1102
    iget-object v0, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->mCurBitmap:Landroid/graphics/Bitmap;

    goto :goto_b
.end method

.method private setKeyboardPosition(I)V
    .registers 3
    .parameter "position"

    .prologue
    .line 1452
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->hasMovableWings()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->hasMovableWingsDyn()Z

    move-result v0

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/swype/android/widget/InputWindow;->isSmallerkb:Z

    if-eqz v0, :cond_21

    .line 1453
    :cond_10
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardPosition:I

    if-eq v0, p1, :cond_19

    if-ltz p1, :cond_19

    const/4 v0, 0x3

    if-lt p1, v0, :cond_1a

    .line 1460
    :cond_19
    :goto_19
    return-void

    .line 1456
    :cond_1a
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p1}, Lcom/swype/android/jni/SwypeCore;->setKeyboardHorzPos(I)V

    .line 1457
    iput p1, p0, Lcom/swype/android/widget/InputWindow;->keyboardPosition:I

    .line 1459
    :cond_21
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->recalculateKeyboardOffsetX()V

    goto :goto_19
.end method

.method private snapToGrid(I)I
    .registers 19
    .parameter

    .prologue
    .line 1488
    const/4 v2, 0x0

    move v0, v2

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getKeyboardBitmapSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swype/android/widget/ViewSize;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/InputWindow;->wingWidth:I

    move v4, v0

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 1490
    div-int/lit8 v4, v3, 0x2

    .line 1491
    add-int/2addr v2, v4

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/widget/InputWindow;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getScreenDefinition()Lcom/swype/android/inputmethod/ScreenDefinition;

    move-result-object v5

    invoke-virtual {v5}, Lcom/swype/android/inputmethod/ScreenDefinition;->getScreenWidth()I

    move-result v5

    .line 1494
    div-int/lit8 v6, v5, 0x3

    .line 1496
    rem-int v7, v5, v6

    div-int/lit8 v7, v7, 0x2

    .line 1500
    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/InputWindow;->keyboardPosition:I

    move v8, v0

    .line 1501
    const/4 v9, 0x3

    new-array v9, v9, [I

    const/4 v10, 0x0

    sub-int v11, v2, v4

    aput v11, v9, v10

    const/4 v10, 0x1

    aput v2, v9, v10

    const/4 v10, 0x2

    add-int v11, v2, v4

    aput v11, v9, v10

    .line 1506
    array-length v10, v9

    const/4 v11, 0x0

    move v12, v5

    move/from16 v16, v8

    move v8, v11

    move/from16 v11, v16

    :goto_50
    if-ge v8, v10, :cond_84

    aget v13, v9, v8

    .line 1507
    add-int/2addr v13, v7

    div-int/2addr v13, v6

    .line 1508
    const/4 v14, 0x2

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1511
    mul-int v14, v13, v6

    div-int/lit8 v15, v6, 0x2

    add-int/2addr v14, v15

    .line 1512
    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1513
    sub-int v15, v5, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1516
    sub-int v14, v2, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 1517
    if-ge v14, v12, :cond_81

    move-object/from16 v0, p0

    iget v0, v0, Lcom/swype/android/widget/InputWindow;->keyboardPosition:I

    move v15, v0

    if-ne v13, v15, :cond_7f

    mul-int/lit8 v15, v3, 0xa

    div-int/lit8 v15, v15, 0x64

    if-gt v14, v15, :cond_81

    :cond_7f
    move v11, v13

    move v12, v14

    .line 1506
    :cond_81
    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    .line 1525
    :cond_84
    return v11
.end method


# virtual methods
.method public clearBuffer()V
    .registers 2

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->paintBuffer:Lcom/swype/android/widget/PaintBuffer;

    invoke-virtual {v0}, Lcom/swype/android/widget/PaintBuffer;->clear()V

    .line 1421
    return-void
.end method

.method public createNewCanvas()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1110
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->mBufMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;

    .line 1111
    if-nez v0, :cond_15

    .line 1112
    new-instance v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;

    invoke-direct {v0}, Lcom/swype/android/widget/InputWindow$DrawBuffer;-><init>()V

    .line 1114
    :cond_15
    iput-object v3, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->bitmap:Landroid/graphics/Bitmap;

    .line 1115
    iput-object v3, v0, Lcom/swype/android/widget/InputWindow$DrawBuffer;->canvas:Landroid/graphics/Canvas;

    .line 1116
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mBufMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getHeight()I

    move-result v1

    .line 1121
    if-eqz v0, :cond_2e

    if-nez v1, :cond_51

    .line 1122
    :cond_2e
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWindowSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v0

    .line 1123
    invoke-virtual {v0}, Lcom/swype/android/widget/ViewSize;->getWidth()I

    move-result v1

    .line 1124
    invoke-virtual {v0}, Lcom/swype/android/widget/ViewSize;->getHeight()I

    move-result v0

    .line 1127
    :goto_3a
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->offScreenBitmap:Landroid/graphics/Bitmap;

    .line 1128
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->offScreenCanvas:Landroid/graphics/Canvas;

    .line 1129
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->offScreenCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->offScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1130
    return-void

    :cond_51
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_3a
.end method

.method protected drawBitmap(Lcom/swype/android/widget/PaintCommand;)V
    .registers 13
    .parameter

    .prologue
    .line 668
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/swype/android/widget/PaintCommand;->getArg(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 669
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->isWingDrawnInDynamic:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/swype/android/widget/InputWindow;->isWingDrawnInDynamic:I

    .line 671
    :cond_13
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/swype/android/widget/PaintCommand;->getArg(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 673
    if-eqz v0, :cond_dd

    .line 674
    invoke-virtual {p1}, Lcom/swype/android/widget/PaintCommand;->getIntArgs()[I

    move-result-object v1

    .line 675
    const/4 v2, 0x4

    aget v2, v1, v2

    .line 676
    const/4 v3, 0x5

    aget v3, v1, v3

    .line 677
    const/4 v4, 0x6

    aget v4, v1, v4

    .line 678
    iget-object v5, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    aget v6, v1, v6

    const/4 v7, 0x1

    aget v7, v1, v7

    const/4 v8, 0x2

    aget v8, v1, v8

    const/4 v9, 0x3

    aget v9, v1, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 680
    iget-object v5, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-nez v5, :cond_5d

    .line 681
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 682
    iget-object v6, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->left:I

    .line 683
    iget-object v6, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v7

    iput v5, v6, Landroid/graphics/Rect;->right:I

    .line 685
    :cond_5d
    iget-object v5, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-nez v5, :cond_79

    .line 686
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    .line 687
    iget-object v6, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 688
    iget-object v6, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    iget v7, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v7

    iput v5, v6, Landroid/graphics/Rect;->bottom:I

    .line 691
    :cond_79
    const/4 v5, 0x0

    .line 692
    const/4 v6, 0x0

    .line 693
    packed-switch v4, :pswitch_data_192

    move v4, v6

    .line 712
    :goto_7f
    packed-switch v2, :pswitch_data_19c

    .line 722
    :pswitch_82
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 723
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->right:I

    .line 727
    :goto_9b
    packed-switch v3, :pswitch_data_1a6

    .line 742
    :goto_9e
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 743
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 745
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 747
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 750
    sget-boolean v0, Lcom/swype/android/inputmethod/ConfigSetting;->DEBUG_DRAW_BOUNDING_RECT:Z

    if-eqz v0, :cond_dd

    .line 751
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    const/4 v3, 0x0

    aget v3, v1, v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    aget v3, v1, v3

    iget v4, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    const/4 v5, 0x2

    aget v5, v1, v5

    add-int/2addr v4, v5

    const/4 v5, 0x3

    aget v1, v1, v5

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 753
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    const v1, -0xffff01

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/widget/InputWindow;->debugDrawRect(Landroid/graphics/Rect;I)V

    .line 756
    :cond_dd
    return-void

    .line 695
    :pswitch_de
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 696
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    move v10, v5

    move v5, v4

    move v4, v10

    .line 697
    goto :goto_7f

    .line 699
    :pswitch_ea
    iget-object v4, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    iget-object v6, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-double v6, v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 702
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v4

    double-to-int v6, v6

    .line 703
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-double v7, v7

    mul-double/2addr v4, v7

    double-to-int v4, v4

    move v5, v6

    .line 705
    goto/16 :goto_7f

    .line 707
    :pswitch_119
    iget-object v4, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 708
    iget-object v5, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    move v10, v5

    move v5, v4

    move v4, v10

    goto/16 :goto_7f

    .line 714
    :pswitch_12a
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 715
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->right:I

    goto/16 :goto_9b

    .line 718
    :pswitch_13d
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 719
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v5, v6, v5

    iput v5, v2, Landroid/graphics/Rect;->left:I

    goto/16 :goto_9b

    .line 729
    :pswitch_151
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 730
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9e

    .line 733
    :pswitch_164
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 734
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_9e

    .line 737
    :pswitch_177
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/swype/android/widget/InputWindow;->m_tempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v5

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 738
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_9e

    .line 693
    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_de
        :pswitch_ea
        :pswitch_119
    .end packed-switch

    .line 712
    :pswitch_data_19c
    .packed-switch 0x0
        :pswitch_12a
        :pswitch_82
        :pswitch_13d
    .end packed-switch

    .line 727
    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_151
        :pswitch_177
        :pswitch_164
    .end packed-switch
.end method

.method public drawGhostKeyboard()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1599
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1601
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1604
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1605
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1606
    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1609
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWingBackgroundTransparent()Z

    move-result v1

    if-nez v1, :cond_41

    .line 1611
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getHeight()I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1612
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1613
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->mLastKeyboard:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v6, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1616
    :cond_41
    iget-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    if-eqz v1, :cond_84

    .line 1617
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1618
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1619
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1620
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 1621
    iget v2, p0, Lcom/swype/android/widget/InputWindow;->moveableKbOutlineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1622
    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1623
    iget v2, p0, Lcom/swype/android/widget/InputWindow;->positionToMove:I

    invoke-direct {p0, v2, v7}, Lcom/swype/android/widget/InputWindow;->getKbBoundingRect(II)Landroid/graphics/Rect;

    move-result-object v2

    .line 1625
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1626
    iget v3, v2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1627
    iget v3, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v7

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1628
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v7

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1629
    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1631
    :cond_84
    const/16 v1, 0xbf

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1632
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x4170

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->INNER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1634
    iget v1, p0, Lcom/swype/android/widget/InputWindow;->mCurX:I

    iget v2, p0, Lcom/swype/android/widget/InputWindow;->mPressXOffset:I

    sub-int/2addr v1, v2

    .line 1635
    if-gez v1, :cond_9d

    move v1, v5

    .line 1636
    :cond_9d
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->mLastKeyboardCropped:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_b5

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->mLastKeyboardCropped:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1638
    :cond_b5
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->mLastKeyboardCropped:Landroid/graphics/Bitmap;

    int-to-float v1, v1

    invoke-virtual {v2, v3, v1, v6, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1640
    return-void
.end method

.method public forceRedraw()V
    .registers 2

    .prologue
    .line 1414
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->clearBuffer()V

    .line 1415
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->refreshKeyboard()V

    .line 1416
    return-void
.end method

.method protected getCurCanvas()Landroid/graphics/Canvas;
    .registers 2

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getKbBoundingWidth()I
    .registers 3

    .prologue
    .line 1567
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->recalculateKeyboardOffsetX()V

    .line 1568
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardCurrentWidth:I

    .line 1569
    .local v0, width:I
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->hasMovableWings()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1570
    iget v1, p0, Lcom/swype/android/widget/InputWindow;->wingWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1572
    :cond_10
    return v0
.end method

.method public getKeyboardIsInMoveState()Z
    .registers 2

    .prologue
    .line 1648
    iget-boolean v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    return v0
.end method

.method public getKeyboardOffsetX()I
    .registers 2

    .prologue
    .line 1476
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    return v0
.end method

.method public getOffScreenBitmapSize()Lcom/swype/android/widget/ViewSize;
    .registers 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWindowSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v0

    return-object v0
.end method

.method public getWindowSize()Lcom/swype/android/widget/ViewSize;
    .registers 3

    .prologue
    .line 393
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getKeyboardBitmapSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v0

    .line 394
    .local v0, view_size:Lcom/swype/android/widget/ViewSize;
    if-eqz v0, :cond_14

    .line 397
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getScreenDefinition()Lcom/swype/android/inputmethod/ScreenDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/ScreenDefinition;->getScreenWidth()I

    move-result v1

    iput v1, v0, Lcom/swype/android/widget/ViewSize;->width:I

    .line 399
    :cond_14
    return-object v0
.end method

.method public getWingBackgroundTransparent()Z
    .registers 2

    .prologue
    .line 1590
    iget-boolean v0, p0, Lcom/swype/android/widget/InputWindow;->displayWingTransparent:Z

    return v0
.end method

.method public getWingWidth()I
    .registers 2

    .prologue
    .line 1285
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->wingWidth:I

    return v0
.end method

.method public hasMovableWings()Z
    .registers 3

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasMovableWingsDyn()Z
    .registers 3

    .prologue
    .line 1366
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->isWingDrawnInDynamic:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public hasWings()Z
    .registers 2

    .prologue
    .line 1370
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->hasMovableWings()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->hasMovableWingsDyn()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public inputMethodInit(Lcom/swype/android/inputmethod/SwypeInputMethod;Lcom/swype/android/jni/SwypeCore;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 328
    const-string v0, "Swype"

    const-string v1, "inputMethodInit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iput-object p1, p0, Lcom/swype/android/widget/InputWindow;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    .line 330
    iput-object p2, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    .line 332
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->reLoadWingGraphics()V

    .line 333
    invoke-direct {p0}, Lcom/swype/android/widget/InputWindow;->resetKeyboardPosition()V

    .line 334
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 336
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/swype/android/widget/InputWindow;->init(I)V

    .line 337
    const v1, 0x7f0a0008

    invoke-virtual {p0, v1}, Lcom/swype/android/widget/InputWindow;->setFontSize(I)V

    .line 338
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/swype/android/widget/InputWindow;->pathTracePath:Landroid/graphics/Path;

    .line 339
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/swype/android/widget/InputWindow;->linePath:Landroid/graphics/Path;

    .line 340
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/swype/android/widget/InputWindow;->paintPermHighlight:Landroid/graphics/Paint;

    .line 342
    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_a8

    .line 364
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->paintPermHighlight:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 365
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getScreenDefinition()Lcom/swype/android/inputmethod/ScreenDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swype/android/inputmethod/ScreenDefinition;->getDisplayNumber()I

    move-result v3

    invoke-static {v3}, Lcom/swype/android/widget/KeyboardBitmapManager;->getPrefixForDisplay(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "glow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/widget/InputWindow;->keyPressGlow:Landroid/graphics/drawable/Drawable;

    .line 370
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->invalidate()V

    .line 371
    const/4 v1, -0x1

    iput v1, p0, Lcom/swype/android/widget/InputWindow;->backgroundColor:I

    .line 373
    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->force_bold_font:Z

    .line 374
    const v1, 0x7f0b0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/swype/android/widget/InputWindow;->moveableKbOutlineColor:I

    .line 378
    invoke-virtual {p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getKeyboardBitmapSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_a7

    iget v0, v0, Lcom/swype/android/widget/ViewSize;->width:I

    invoke-virtual {p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getScreenDefinition()Lcom/swype/android/inputmethod/ScreenDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/ScreenDefinition;->getScreenWidth()I

    move-result v1

    if-lt v0, v1, :cond_a7

    .line 380
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->backgroundColor:I

    .line 381
    if-gez v0, :cond_9f

    .line 382
    const/high16 v0, -0x100

    .line 384
    :cond_9f
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 385
    invoke-virtual {p0, v1}, Lcom/swype/android/widget/InputWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 387
    :cond_a7
    return-void

    .line 342
    :array_a8
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected onBufferInitDraw()V
    .registers 1

    .prologue
    .line 576
    return-void
.end method

.method protected onBufferRedraw()V
    .registers 16

    .prologue
    .line 762
    invoke-static {}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isSelected()Z

    move-result v0

    if-nez v0, :cond_7

    .line 937
    :goto_6
    return-void

    .line 766
    :cond_7
    iget-boolean v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    if-eqz v0, :cond_f

    .line 767
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->drawGhostKeyboard()V

    goto :goto_6

    .line 771
    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 772
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->paintBuffer:Lcom/swype/android/widget/PaintBuffer;

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintBuffer;->getAllFrames(Ljava/util/Collection;)V

    .line 776
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 777
    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_271

    .line 778
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/PaintBuffer$Frame;

    .line 779
    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->linePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 780
    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->pathTracePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 781
    const/4 v3, 0x0

    .line 782
    const/4 v4, 0x0

    .line 783
    const/4 v5, 0x0

    .line 784
    const/4 v6, 0x0

    .line 786
    invoke-virtual {v0}, Lcom/swype/android/widget/PaintBuffer$Frame;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v13, v6

    move v6, v3

    move v3, v13

    move v14, v4

    move v4, v5

    move v5, v14

    :cond_41
    :goto_41
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_233

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/PaintCommand;

    .line 787
    invoke-virtual {v0}, Lcom/swype/android/widget/PaintCommand;->getType()Lcom/swype/android/widget/PaintCommandType;

    move-result-object v8

    .line 788
    sget-object v9, Lcom/swype/android/widget/PaintCommandType;->FLUSH_DRAWING:Lcom/swype/android/widget/PaintCommandType;

    if-eq v8, v9, :cond_233

    .line 789
    sget-object v9, Lcom/swype/android/widget/PaintCommandType;->BEGIN_DRAW:Lcom/swype/android/widget/PaintCommandType;

    if-ne v8, v9, :cond_85

    .line 791
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->reLoadWingGraphics()V

    .line 793
    iget-boolean v0, p0, Lcom/swype/android/widget/InputWindow;->isCanvasDirty:Z

    if-eqz v0, :cond_66

    .line 794
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->createNewCanvas()V

    .line 795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/widget/InputWindow;->isCanvasDirty:Z

    .line 798
    :cond_66
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->offScreenCanvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    .line 799
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->offScreenBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->mCurBitmap:Landroid/graphics/Bitmap;

    .line 801
    new-instance v0, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getHeight()I

    move-result v11

    invoke-direct {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 802
    iget-object v8, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    sget-object v9, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v8, v0, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_41

    .line 803
    :cond_85
    sget-object v9, Lcom/swype/android/widget/PaintCommandType;->DRAWKEYBOARD:Lcom/swype/android/widget/PaintCommandType;

    if-ne v8, v9, :cond_a4

    .line 804
    iget-object v8, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    if-eqz v8, :cond_41

    .line 805
    invoke-virtual {v0}, Lcom/swype/android/widget/PaintCommand;->getIntArgs()[I

    move-result-object v8

    const/4 v9, 0x3

    aget v8, v8, v9

    if-nez v8, :cond_a2

    const/4 v8, 0x0

    :goto_97
    iput-boolean v8, p0, Lcom/swype/android/widget/InputWindow;->isKeyboardDynamic:Z

    .line 809
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/swype/android/widget/PaintCommand;->getArg(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swype/android/widget/InputWindow;->drawKeyboardBitmap(Ljava/lang/String;)V

    goto :goto_41

    .line 805
    :cond_a2
    const/4 v8, 0x1

    goto :goto_97

    .line 811
    :cond_a4
    sget-object v9, Lcom/swype/android/widget/PaintCommandType;->DRAWLINE:Lcom/swype/android/widget/PaintCommandType;

    if-ne v8, v9, :cond_e7

    .line 812
    iget-object v8, p0, Lcom/swype/android/widget/InputWindow;->linePath:Landroid/graphics/Path;

    invoke-virtual {v8}, Landroid/graphics/Path;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_d1

    .line 813
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v5

    .line 814
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v6

    .line 815
    iget-object v8, p0, Lcom/swype/android/widget/InputWindow;->linePath:Landroid/graphics/Path;

    iget v9, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    move v13, v6

    move v6, v5

    move v5, v13

    .line 818
    :cond_d1
    iget-object v8, p0, Lcom/swype/android/widget/InputWindow;->linePath:Landroid/graphics/Path;

    iget v9, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/4 v10, 0x3

    invoke-virtual {v0, v10}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8, v9, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_41

    .line 820
    :cond_e7
    sget-object v9, Lcom/swype/android/widget/PaintCommandType;->DRAWTRACEPATH:Lcom/swype/android/widget/PaintCommandType;

    if-ne v8, v9, :cond_125

    .line 821
    iget-boolean v8, p0, Lcom/swype/android/widget/InputWindow;->drawTracePath:Z

    if-eqz v8, :cond_41

    .line 822
    invoke-virtual {v0}, Lcom/swype/android/widget/PaintCommand;->getIntArgs()[I

    move-result-object v0

    .line 825
    const/4 v3, 0x0

    aget v3, v0, v3

    .line 826
    const/4 v4, 0x1

    aget v4, v0, v4

    .line 827
    iget-object v8, p0, Lcom/swype/android/widget/InputWindow;->pathTracePath:Landroid/graphics/Path;

    iget v9, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    const/4 v10, 0x2

    aget v10, v0, v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/4 v10, 0x3

    aget v10, v0, v10

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 828
    const/4 v8, 0x4

    :goto_10a
    array-length v9, v0

    if-ge v8, v9, :cond_120

    .line 829
    iget-object v9, p0, Lcom/swype/android/widget/InputWindow;->pathTracePath:Landroid/graphics/Path;

    iget v10, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    aget v11, v0, v8

    add-int/2addr v10, v11

    int-to-float v10, v10

    add-int/lit8 v11, v8, 0x1

    aget v11, v0, v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 828
    add-int/lit8 v8, v8, 0x2

    goto :goto_10a

    :cond_120
    move v13, v4

    move v4, v3

    move v3, v13

    .line 831
    goto/16 :goto_41

    .line 832
    :cond_125
    sget-object v9, Lcom/swype/android/widget/PaintCommandType;->DRAWTEXT:Lcom/swype/android/widget/PaintCommandType;

    if-ne v8, v9, :cond_132

    .line 833
    iget-object v8, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    if-eqz v8, :cond_41

    .line 834
    invoke-direct {p0, v0}, Lcom/swype/android/widget/InputWindow;->drawText(Lcom/swype/android/widget/PaintCommand;)V

    goto/16 :goto_41

    .line 837
    :cond_132
    sget-object v9, Lcom/swype/android/widget/PaintCommandType;->DRAWHIGHLIGHT:Lcom/swype/android/widget/PaintCommandType;

    if-ne v8, v9, :cond_180

    .line 838
    iget-object v8, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    if-eqz v8, :cond_41

    .line 839
    iget-object v8, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    iget v9, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v10

    iget v11, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x3

    invoke-virtual {v0, v12}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 844
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Lcom/swype/android/widget/PaintCommand;->getArgAsInt(I)I

    move-result v0

    .line 845
    const/4 v8, 0x1

    if-ne v0, v8, :cond_169

    .line 846
    const/4 v0, 0x1

    iget-object v8, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v8}, Lcom/swype/android/widget/InputWindow;->drawHighLight(ZLandroid/graphics/Rect;)V

    goto/16 :goto_41

    .line 847
    :cond_169
    const/4 v8, 0x2

    if-ne v0, v8, :cond_174

    .line 848
    const/4 v0, 0x0

    iget-object v8, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v8}, Lcom/swype/android/widget/InputWindow;->drawHighLight(ZLandroid/graphics/Rect;)V

    goto/16 :goto_41

    .line 849
    :cond_174
    const/4 v8, 0x3

    if-ne v0, v8, :cond_41

    .line 850
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->m_destRect:Landroid/graphics/Rect;

    const/high16 v8, -0x1

    invoke-virtual {p0, v0, v8}, Lcom/swype/android/widget/InputWindow;->debugDrawRect(Landroid/graphics/Rect;I)V

    goto/16 :goto_41

    .line 852
    :cond_180
    sget-object v9, Lcom/swype/android/widget/PaintCommandType;->DRAWBITMAP:Lcom/swype/android/widget/PaintCommandType;

    if-ne v8, v9, :cond_18d

    .line 853
    iget-object v8, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    if-eqz v8, :cond_41

    .line 854
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->drawBitmap(Lcom/swype/android/widget/PaintCommand;)V

    goto/16 :goto_41

    .line 857
    :cond_18d
    sget-object v9, Lcom/swype/android/widget/PaintCommandType;->DRAW_BUF:Lcom/swype/android/widget/PaintCommandType;

    if-ne v8, v9, :cond_19d

    .line 858
    invoke-virtual {v0}, Lcom/swype/android/widget/PaintCommand;->getIntArgs()[I

    move-result-object v0

    const/4 v8, 0x0

    aget v0, v0, v8

    .line 859
    invoke-direct {p0, v0}, Lcom/swype/android/widget/InputWindow;->setCurCanvas(I)V

    goto/16 :goto_41

    .line 860
    :cond_19d
    sget-object v9, Lcom/swype/android/widget/PaintCommandType;->FLUSH_BUF:Lcom/swype/android/widget/PaintCommandType;

    if-ne v8, v9, :cond_1bb

    .line 861
    invoke-virtual {v0}, Lcom/swype/android/widget/PaintCommand;->getIntArgs()[I

    move-result-object v0

    .line 862
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/4 v11, 0x2

    aget v11, v0, v11

    const/4 v12, 0x3

    aget v0, v0, v12

    invoke-direct {v8, v9, v10, v11, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 863
    invoke-direct {p0, v8}, Lcom/swype/android/widget/InputWindow;->flushCanvas(Landroid/graphics/Rect;)V

    goto/16 :goto_41

    .line 864
    :cond_1bb
    sget-object v9, Lcom/swype/android/widget/PaintCommandType;->SET_CLIP:Lcom/swype/android/widget/PaintCommandType;

    if-ne v8, v9, :cond_1e0

    .line 865
    iget-object v8, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    if-eqz v8, :cond_41

    .line 866
    invoke-virtual {v0}, Lcom/swype/android/widget/PaintCommand;->getIntArgs()[I

    move-result-object v0

    .line 869
    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/4 v11, 0x2

    aget v11, v0, v11

    const/4 v12, 0x3

    aget v0, v0, v12

    invoke-direct {v8, v9, v10, v11, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 870
    invoke-direct {p0, v8}, Lcom/swype/android/widget/InputWindow;->sanitizeRect(Landroid/graphics/Rect;)V

    .line 871
    invoke-direct {p0, v8}, Lcom/swype/android/widget/InputWindow;->setClipping(Landroid/graphics/Rect;)V

    goto/16 :goto_41

    .line 872
    :cond_1e0
    sget-object v9, Lcom/swype/android/widget/PaintCommandType;->DRAWPOLYGON:Lcom/swype/android/widget/PaintCommandType;

    if-ne v8, v9, :cond_41

    .line 873
    iget-object v8, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    if-eqz v8, :cond_41

    .line 874
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 877
    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 878
    sget-object v9, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 879
    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 880
    iget v9, p0, Lcom/swype/android/widget/InputWindow;->moveableKbOutlineColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 881
    const/high16 v9, 0x4000

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 882
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 884
    invoke-virtual {v0}, Lcom/swype/android/widget/PaintCommand;->getIntArgs()[I

    move-result-object v0

    .line 885
    const/4 v10, 0x0

    aget v10, v0, v10

    int-to-float v10, v10

    const/4 v11, 0x1

    aget v11, v0, v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 886
    const/4 v10, 0x2

    :goto_21b
    array-length v11, v0

    if-ge v10, v11, :cond_22c

    .line 887
    aget v11, v0, v10

    .line 888
    add-int/lit8 v12, v10, 0x1

    aget v12, v0, v12

    .line 889
    int-to-float v11, v11

    int-to-float v12, v12

    invoke-virtual {v9, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 886
    add-int/lit8 v10, v10, 0x2

    goto :goto_21b

    .line 892
    :cond_22c
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v9, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_41

    .line 896
    :cond_233
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1d

    .line 897
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->linePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_253

    .line 900
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 901
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->linePaint:Landroid/graphics/Paint;

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 902
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/swype/android/widget/InputWindow;->linePath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/swype/android/widget/InputWindow;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 904
    :cond_253
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->pathTracePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 906
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 907
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->linePaint:Landroid/graphics/Paint;

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 908
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->pathTracePath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/swype/android/widget/InputWindow;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1d

    .line 911
    :cond_271
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->backgroundColor:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2ee

    .line 912
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 913
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 914
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 915
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 916
    iget v2, p0, Lcom/swype/android/widget/InputWindow;->backgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 917
    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 919
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getKeyboardBitmapSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v2

    .line 920
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 922
    invoke-virtual {v2}, Lcom/swype/android/widget/ViewSize;->getWidth()I

    move-result v4

    .line 923
    invoke-virtual {v2}, Lcom/swype/android/widget/ViewSize;->getHeight()I

    move-result v2

    .line 924
    iget v5, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    const/high16 v6, 0x4000

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 925
    iget v5, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int/2addr v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x4000

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 926
    iget v5, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int/2addr v4, v5

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x1

    sub-int v5, v2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 927
    iget v4, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 928
    iget v2, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    const/high16 v4, 0x4000

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 930
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    if-nez v2, :cond_2e6

    .line 931
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->offScreenCanvas:Landroid/graphics/Canvas;

    iput-object v2, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    .line 933
    :cond_2e6
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 934
    const/4 v0, -0x1

    iput v0, p0, Lcom/swype/android/widget/InputWindow;->backgroundColor:I

    .line 936
    :cond_2ee
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->paintBuffer:Lcom/swype/android/widget/PaintBuffer;

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintBuffer;->checkinFrames(Ljava/util/Collection;)V

    goto/16 :goto_6
.end method

.method public onHighlight(IIIIII)Z
    .registers 8
    .parameter "level"
    .parameter "key"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1704
    invoke-static {p2}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isMove(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1705
    const/4 v0, 0x1

    .line 1707
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onKBBeginDrawBuf(I)V
    .registers 5
    .parameter "imageLayer"

    .prologue
    .line 430
    sget-object v1, Lcom/swype/android/widget/PaintCommandType;->DRAW_BUF:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {p0, v1}, Lcom/swype/android/widget/InputWindow;->getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v0

    .line 431
    .local v0, command:Lcom/swype/android/widget/PaintCommand;
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setIntParams([I)V

    .line 432
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 433
    return-void
.end method

.method public onKBDrawBackground(I)V
    .registers 2
    .parameter "color"

    .prologue
    .line 547
    iput p1, p0, Lcom/swype/android/widget/InputWindow;->backgroundColor:I

    .line 548
    return-void
.end method

.method public onKBDrawBegin()V
    .registers 3

    .prologue
    .line 425
    sget-object v1, Lcom/swype/android/widget/PaintCommandType;->BEGIN_DRAW:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {p0, v1}, Lcom/swype/android/widget/InputWindow;->getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v0

    .line 426
    .local v0, command:Lcom/swype/android/widget/PaintCommand;
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 427
    return-void
.end method

.method public onKBDrawBitmap(Ljava/lang/String;Landroid/graphics/Rect;III)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 481
    sget-object v0, Lcom/swype/android/widget/PaintCommandType;->DRAWBITMAP:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v0

    .line 482
    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setStrParams([Ljava/lang/String;)V

    .line 483
    const/4 v1, 0x7

    new-array v1, v1, [I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    aput v2, v1, v3

    iget v2, p2, Landroid/graphics/Rect;->top:I

    aput v2, v1, v4

    const/4 v2, 0x2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    aput v3, v1, v2

    const/4 v2, 0x4

    aput p3, v1, v2

    const/4 v2, 0x5

    aput p4, v1, v2

    const/4 v2, 0x6

    aput p5, v1, v2

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setIntParams([I)V

    .line 485
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 486
    return-void
.end method

.method public onKBDrawHighlight(IIIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 534
    sget-object v0, Lcom/swype/android/widget/PaintCommandType;->DRAWHIGHLIGHT:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v0

    .line 535
    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    const/4 v2, 0x4

    aput p5, v1, v2

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setIntParams([I)V

    .line 536
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 537
    return-void
.end method

.method public onKBDrawKeyboardBitmap(Ljava/lang/String;IIIZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 467
    sget-object v0, Lcom/swype/android/widget/PaintCommandType;->DRAWKEYBOARD:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v0

    .line 468
    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setStrParams([Ljava/lang/String;)V

    .line 469
    const/4 v1, 0x4

    new-array v1, v1, [I

    aput p2, v1, v3

    aput p3, v1, v4

    const/4 v2, 0x2

    aput p4, v1, v2

    const/4 v2, 0x3

    if-eqz p5, :cond_1d

    move v3, v4

    :cond_1d
    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setIntParams([I)V

    .line 470
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 471
    return-void
.end method

.method public onKBDrawLine(IIIIII)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 493
    sget-object v0, Lcom/swype/android/widget/PaintCommandType;->DRAWLINE:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v0

    .line 494
    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    const/4 v2, 0x4

    aput p5, v1, v2

    const/4 v2, 0x5

    aput p6, v1, v2

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setIntParams([I)V

    .line 495
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 496
    return-void
.end method

.method public onKBDrawText(Ljava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/String;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 523
    sget-object v0, Lcom/swype/android/widget/PaintCommandType;->DRAWTEXT:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v0

    .line 524
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p10, v1, v2

    const/4 v2, 0x2

    aput-object p11, v1, v2

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setStrParams([Ljava/lang/String;)V

    .line 525
    const/16 v1, 0x8

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    const/4 v2, 0x2

    aput p4, v1, v2

    const/4 v2, 0x3

    aput p5, v1, v2

    const/4 v2, 0x4

    aput p6, v1, v2

    const/4 v2, 0x5

    aput p7, v1, v2

    const/4 v2, 0x6

    aput p8, v1, v2

    const/4 v2, 0x7

    aput p9, v1, v2

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setIntParams([I)V

    .line 527
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 528
    return-void
.end method

.method public onKBDrawTrace(II[S)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 509
    sget-object v0, Lcom/swype/android/widget/PaintCommandType;->DRAWTRACEPATH:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v0

    .line 510
    array-length v1, p3

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/PaintCommand;->setNumOfIntParams(I)V

    .line 511
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/swype/android/widget/PaintCommand;->setIntParamAtIndex(II)V

    .line 512
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/swype/android/widget/PaintCommand;->setIntParamAtIndex(II)V

    .line 513
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Lcom/swype/android/widget/PaintCommand;->setIntParams(I[S)V

    .line 514
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 515
    return-void
.end method

.method public onKBFlushDrawingBuf(IIII)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 554
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    if-lez v0, :cond_3f

    .line 556
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int/2addr v0, p1

    .line 557
    iget v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int/2addr v1, p3

    .line 560
    iget v2, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    if-gt v0, v2, :cond_10

    move v0, v4

    .line 563
    :cond_10
    iget v2, p0, Lcom/swype/android/widget/InputWindow;->keyboardCurrentWidth:I

    iget v3, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_3b

    .line 564
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->offScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move v5, v1

    move v1, v0

    move v0, v5

    .line 567
    :goto_20
    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->FLUSH_BUF:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {p0, v2}, Lcom/swype/android/widget/InputWindow;->getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v2

    .line 568
    const/4 v3, 0x4

    new-array v3, v3, [I

    aput v1, v3, v4

    const/4 v1, 0x1

    aput p2, v3, v1

    const/4 v1, 0x2

    aput v0, v3, v1

    const/4 v0, 0x3

    aput p4, v3, v0

    invoke-virtual {v2, v3}, Lcom/swype/android/widget/PaintCommand;->setIntParams([I)V

    .line 569
    invoke-virtual {p0, v2}, Lcom/swype/android/widget/InputWindow;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 570
    return-void

    :cond_3b
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_20

    :cond_3f
    move v0, p3

    move v1, p1

    goto :goto_20
.end method

.method public onKBInvalidate()V
    .registers 3

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->isShown()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 412
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 413
    .local v0, rect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/swype/android/widget/InputWindow;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 414
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1, v0}, Lcom/swype/android/jni/SwypeCore;->drawKeyboard(Landroid/graphics/Rect;)V

    .line 416
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_13
    return-void
.end method

.method public onKBInvalidateRect(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "rect"

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->isShown()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 420
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p1}, Lcom/swype/android/jni/SwypeCore;->drawKeyboard(Landroid/graphics/Rect;)V

    .line 422
    :cond_b
    return-void
.end method

.method public onKBSetClipping(IIII)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 436
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    if-lez v0, :cond_3f

    .line 438
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int/2addr v0, p1

    .line 439
    iget v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int/2addr v1, p3

    .line 442
    iget v2, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    if-gt v0, v2, :cond_10

    move v0, v4

    .line 446
    :cond_10
    iget v2, p0, Lcom/swype/android/widget/InputWindow;->keyboardCurrentWidth:I

    iget v3, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_3b

    .line 447
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->offScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move v5, v1

    move v1, v0

    move v0, v5

    .line 450
    :goto_20
    sget-object v2, Lcom/swype/android/widget/PaintCommandType;->SET_CLIP:Lcom/swype/android/widget/PaintCommandType;

    invoke-virtual {p0, v2}, Lcom/swype/android/widget/InputWindow;->getCommandWithType(Lcom/swype/android/widget/PaintCommandType;)Lcom/swype/android/widget/PaintCommand;

    move-result-object v2

    .line 451
    const/4 v3, 0x4

    new-array v3, v3, [I

    aput v1, v3, v4

    const/4 v1, 0x1

    aput p2, v3, v1

    const/4 v1, 0x2

    aput v0, v3, v1

    const/4 v0, 0x3

    aput p4, v3, v0

    invoke-virtual {v2, v3}, Lcom/swype/android/widget/PaintCommand;->setIntParams([I)V

    .line 452
    invoke-virtual {p0, v2}, Lcom/swype/android/widget/InputWindow;->addCommand(Lcom/swype/android/widget/PaintCommand;)V

    .line 453
    return-void

    :cond_3b
    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_20

    :cond_3f
    move v0, p3

    move v1, p1

    goto :goto_20
.end method

.method public onKeyFromCore(IIIIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1688
    const/4 v0, 0x3

    if-ne p3, v0, :cond_2b

    invoke-static {p2}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isMove(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v0, -0x1

    if-eq p4, v0, :cond_2b

    .line 1689
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->touchStates:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/TouchEventType;

    .line 1690
    if-eqz v0, :cond_2b

    sget-object v1, Lcom/swype/android/widget/TouchEventType;->DOWN:Lcom/swype/android/widget/TouchEventType;

    if-ne v0, v1, :cond_2b

    .line 1692
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardPosition:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/swype/android/widget/InputWindow;->getKbBoundingRect(II)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1693
    add-int/2addr v0, p5

    invoke-virtual {p0, v0, p4}, Lcom/swype/android/widget/InputWindow;->startKeyboardMove(II)V

    .line 1696
    :cond_2b
    return-void
.end method

.method public onMultitouchEvent(Lcom/swype/android/widget/TouchEventType;IIIJ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 947
    if-nez p2, :cond_13c

    .line 948
    const/4 v0, 0x1

    move v2, v0

    .line 950
    :goto_4
    if-nez p3, :cond_139

    .line 951
    const/4 v0, 0x1

    move v4, v0

    .line 955
    :goto_8
    const/16 v0, 0xa

    if-ge p4, v0, :cond_1f

    .line 956
    sget-object v0, Lcom/swype/android/widget/TouchEventType;->DOWN:Lcom/swype/android/widget/TouchEventType;

    if-ne p1, v0, :cond_103

    .line 957
    if-ltz v2, :cond_14

    if-gez v4, :cond_1a

    .line 958
    :cond_14
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->pathStates:[I

    const/4 v1, 0x2

    aput v1, v0, p4

    .line 1067
    :cond_19
    :goto_19
    return-void

    .line 961
    :cond_1a
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->pathStates:[I

    const/4 v1, 0x1

    aput v1, v0, p4

    .line 979
    :cond_1f
    :goto_1f
    invoke-static {}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isKeyboardViewActive()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 986
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->mMovePathId:I

    if-ne v0, p4, :cond_33

    .line 987
    iput v2, p0, Lcom/swype/android/widget/InputWindow;->mCurX:I

    .line 991
    :cond_33
    iget-boolean v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    if-nez v0, :cond_136

    const/4 v0, 0x1

    .line 997
    :goto_38
    sget-object v1, Lcom/swype/android/widget/TouchEventType;->UP:Lcom/swype/android/widget/TouchEventType;

    if-ne p1, v1, :cond_89

    .line 998
    iget v1, p0, Lcom/swype/android/widget/InputWindow;->mMovePathId:I

    if-ne v1, p4, :cond_77

    .line 999
    iget-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    if-eqz v1, :cond_77

    .line 1001
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/swype/android/widget/InputWindow;->lastMovePress:J

    sub-long/2addr v5, v7

    .line 1002
    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/swype/android/widget/InputWindow;->lastMovePress:J

    .line 1003
    const/4 v1, -0x1

    iput v1, p0, Lcom/swype/android/widget/InputWindow;->mMovePathId:I

    .line 1004
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->refreshKeyboard()V

    .line 1005
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mLastKeyboard:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/swype/android/widget/InputWindow;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 1006
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mLastKeyboardCropped:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/swype/android/widget/InputWindow;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 1008
    const-wide/16 v7, 0x96

    cmp-long v1, v5, v7

    if-lez v1, :cond_74

    .line 1009
    iget v1, p0, Lcom/swype/android/widget/InputWindow;->positionToMove:I

    invoke-direct {p0, v1}, Lcom/swype/android/widget/InputWindow;->setKeyboardPosition(I)V

    .line 1010
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->createNewCanvas()V

    .line 1011
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->keyboardMoved()V

    .line 1013
    :cond_74
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    .line 1017
    :cond_77
    iget-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->userVenturedOutsideKeyboardBoundaries:Z

    if-eqz v1, :cond_89

    .line 1018
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->createNewCanvas()V

    .line 1019
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->userVenturedOutsideKeyboardBoundaries:Z

    .line 1020
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->drawTracePath:Z

    .line 1021
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->refreshKeyboard()V

    .line 1027
    :cond_89
    sget-object v1, Lcom/swype/android/widget/TouchEventType;->DOWN:Lcom/swype/android/widget/TouchEventType;

    if-ne p1, v1, :cond_ba

    .line 1028
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->drawTracePath:Z

    .line 1031
    iget-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    if-nez v1, :cond_ba

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->hasMovableWings()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 1032
    iget v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    iget v3, p0, Lcom/swype/android/widget/InputWindow;->wingWidth:I

    sub-int/2addr v1, v3

    if-lt v2, v1, :cond_a5

    iget v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    if-lt v2, v1, :cond_b6

    :cond_a5
    iget v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    iget v3, p0, Lcom/swype/android/widget/InputWindow;->keyboardCurrentWidth:I

    add-int/2addr v1, v3

    if-lt v2, v1, :cond_ba

    iget v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    iget v3, p0, Lcom/swype/android/widget/InputWindow;->keyboardCurrentWidth:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/swype/android/widget/InputWindow;->wingWidth:I

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_ba

    .line 1037
    :cond_b6
    invoke-virtual {p0, v2, p4}, Lcom/swype/android/widget/InputWindow;->startKeyboardMove(II)V

    .line 1040
    const/4 v0, 0x0

    .line 1045
    :cond_ba
    iget-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    if-eqz v1, :cond_cf

    iget v1, p0, Lcom/swype/android/widget/InputWindow;->mMovePathId:I

    if-ne v1, p4, :cond_cf

    .line 1048
    iget v1, p0, Lcom/swype/android/widget/InputWindow;->mPressXOffset:I

    sub-int v1, v2, v1

    invoke-direct {p0, v1}, Lcom/swype/android/widget/InputWindow;->snapToGrid(I)I

    move-result v1

    iput v1, p0, Lcom/swype/android/widget/InputWindow;->positionToMove:I

    .line 1049
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->postInvalidate()V

    .line 1053
    :cond_cf
    iget v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    iget v3, p0, Lcom/swype/android/widget/InputWindow;->keyboardCurrentWidth:I

    add-int/2addr v1, v3

    if-ge v2, v1, :cond_da

    iget v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    if-gt v2, v1, :cond_e1

    :cond_da
    iget-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    if-nez v1, :cond_e1

    .line 1055
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/swype/android/widget/InputWindow;->userVenturedOutsideKeyboardBoundaries:Z

    .line 1058
    :cond_e1
    sget-object v1, Lcom/swype/android/widget/TouchEventType;->DOWN:Lcom/swype/android/widget/TouchEventType;

    if-eq p1, v1, :cond_e9

    sget-object v1, Lcom/swype/android/widget/TouchEventType;->UP:Lcom/swype/android/widget/TouchEventType;

    if-ne p1, v1, :cond_f2

    .line 1059
    :cond_e9
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->touchStates:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    :cond_f2
    if-eqz v0, :cond_19

    .line 1064
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    const/4 v1, 0x0

    iget v3, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    sub-int v3, v2, v3

    move-object v2, p1

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/swype/android/jni/SwypeCore;->sendMouseEvent(ILcom/swype/android/widget/TouchEventType;IIIJ)V

    goto/16 :goto_19

    .line 963
    :cond_103
    sget-object v0, Lcom/swype/android/widget/TouchEventType;->UP:Lcom/swype/android/widget/TouchEventType;

    if-ne p1, v0, :cond_12d

    .line 964
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->pathStates:[I

    aget v0, v0, p4

    if-nez v0, :cond_111

    if-ltz v2, :cond_19

    if-ltz v4, :cond_19

    .line 966
    :cond_111
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->pathStates:[I

    aget v0, v0, p4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11f

    .line 967
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->pathStates:[I

    const/4 v1, 0x0

    aput v1, v0, p4

    goto/16 :goto_19

    .line 969
    :cond_11f
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->pathStates:[I

    aget v0, v0, p4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 970
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->pathStates:[I

    const/4 v1, 0x0

    aput v1, v0, p4

    goto/16 :goto_1f

    .line 973
    :cond_12d
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->pathStates:[I

    aget v0, v0, p4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    goto/16 :goto_19

    .line 991
    :cond_136
    const/4 v0, 0x0

    goto/16 :goto_38

    :cond_139
    move v4, p3

    goto/16 :goto_8

    :cond_13c
    move v2, p2

    goto/16 :goto_4
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 1406
    if-nez p1, :cond_5

    .line 1407
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->forceRedraw()V

    .line 1409
    :cond_5
    invoke-super {p0, p1}, Lcom/swype/android/widget/SwypeView;->onWindowVisibilityChanged(I)V

    .line 1410
    return-void
.end method

.method public reLoadWingGraphics()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x22

    const/4 v6, 0x0

    .line 1293
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getScreenDefinition()Lcom/swype/android/inputmethod/ScreenDefinition;

    move-result-object v0

    .line 1294
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/ScreenDefinition;->getDisplayNumber()I

    move-result v1

    .line 1298
    iget v2, p0, Lcom/swype/android/widget/InputWindow;->display_no:I

    if-ne v2, v1, :cond_13

    .line 1359
    :goto_12
    return-void

    .line 1301
    :cond_13
    iput v6, p0, Lcom/swype/android/widget/InputWindow;->isWingDrawnInDynamic:I

    .line 1303
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    .line 1304
    iput-boolean v6, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    .line 1305
    iput v1, p0, Lcom/swype/android/widget/InputWindow;->display_no:I

    .line 1306
    iput v6, p0, Lcom/swype/android/widget/InputWindow;->wingWidth:I

    .line 1308
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/ScreenDefinition;->getOrientation()I

    move-result v0

    .line 1309
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v2, v7}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v2

    const-string v3, "Left"

    const-string v4, "Standard"

    invoke-static {v2, v1, v0, v3, v4}, Lcom/swype/android/widget/KeyboardBitmapManager;->getWingName(ZIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1313
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v8}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1315
    if-eqz v2, :cond_d8

    .line 1316
    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1317
    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v3, v7}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v3

    const-string v4, "Right"

    const-string v5, "Standard"

    invoke-static {v3, v1, v0, v4, v5}, Lcom/swype/android/widget/KeyboardBitmapManager;->getWingName(ZIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1321
    iget-object v4, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3, v6}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1323
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/swype/android/widget/InputWindow;->wingWidth:I

    .line 1326
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v2, v7}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v2

    const-string v3, "Left"

    const-string v4, "Move"

    invoke-static {v2, v1, v0, v3, v4}, Lcom/swype/android/widget/KeyboardBitmapManager;->getWingName(ZIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1330
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v8}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1332
    if-eqz v2, :cond_d8

    .line 1333
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Lcom/swype/android/widget/InputWindow;->wingWidth:I

    .line 1335
    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1336
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v2, v7}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v2

    const-string v3, "Right"

    const-string v4, "Move"

    invoke-static {v2, v1, v0, v3, v4}, Lcom/swype/android/widget/KeyboardBitmapManager;->getWingName(ZIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1340
    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v6}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1343
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v2, v7}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v2

    const-string v3, "Left"

    const-string v4, "MoveHL"

    invoke-static {v2, v1, v0, v3, v4}, Lcom/swype/android/widget/KeyboardBitmapManager;->getWingName(ZIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1347
    iget-object v3, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v6}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1349
    iget-object v2, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v2, v7}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v2

    const-string v3, "Right"

    const-string v4, "MoveHL"

    invoke-static {v2, v1, v0, v3, v4}, Lcom/swype/android/widget/KeyboardBitmapManager;->getWingName(ZIILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1353
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->wingDrawables:Ljava/util/List;

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v6}, Lcom/swype/android/widget/KeyboardBitmapManager;->getDrawableByName(Landroid/content/Context;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1358
    :cond_d8
    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->recalculateKeyboardOffsetX()V

    goto/16 :goto_12
.end method

.method public recalculateKeyboardOffsetX()V
    .registers 3

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getKeyboardBitmapSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/widget/ViewSize;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardCurrentWidth:I

    .line 1467
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardPosition:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/swype/android/widget/InputWindow;->getKbBoundingRect(II)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardOffsetX:I

    .line 1468
    return-void
.end method

.method public resizeCanvas()V
    .registers 1

    .prologue
    .line 1656
    invoke-super {p0}, Lcom/swype/android/widget/SwypeView;->resizeCanvas()V

    .line 1657
    invoke-direct {p0}, Lcom/swype/android/widget/InputWindow;->resetKeyboardPosition()V

    .line 1658
    return-void
.end method

.method public setDisplayWingTransparent(Z)V
    .registers 2
    .parameter "transparent"

    .prologue
    .line 1581
    iput-boolean p1, p0, Lcom/swype/android/widget/InputWindow;->displayWingTransparent:Z

    .line 1582
    return-void
.end method

.method public setToggletosmallerkeyboard(Z)V
    .registers 3
    .parameter "isSmallKeyboard"

    .prologue
    .line 1374
    sput-boolean p1, Lcom/swype/android/widget/InputWindow;->isSmallerkb:Z

    .line 1375
    const/4 v0, 0x1

    sput-boolean v0, Lcom/swype/android/widget/InputWindow;->isToggleCalled:Z

    .line 1376
    return-void
.end method

.method public startKeyboardMove(II)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1661
    iput-boolean v5, p0, Lcom/swype/android/widget/InputWindow;->keyboardIsInMoveState:Z

    .line 1662
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/swype/android/widget/InputWindow;->lastMovePress:J

    .line 1666
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, v5}, Lcom/swype/android/jni/SwypeCore;->finishPendingConversion(Z)V

    .line 1667
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1668
    if-eqz v0, :cond_1a

    .line 1669
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1671
    :cond_1a
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->cancelCurrentInputGesture()V

    .line 1672
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->ime:Lcom/swype/android/inputmethod/SwypeInputMethod;

    invoke-virtual {v0, v5}, Lcom/swype/android/inputmethod/SwypeInputMethod;->hideCandidateViewIfMoveable(Z)V

    .line 1673
    iget-object v0, p0, Lcom/swype/android/widget/InputWindow;->offScreenBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->mLastKeyboard:Landroid/graphics/Bitmap;

    .line 1674
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardPosition:I

    invoke-direct {p0, v0, v5}, Lcom/swype/android/widget/InputWindow;->getKbBoundingRect(II)Landroid/graphics/Rect;

    move-result-object v0

    .line 1675
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, p1, v1

    iput v1, p0, Lcom/swype/android/widget/InputWindow;->mPressXOffset:I

    .line 1676
    invoke-direct {p0, v0}, Lcom/swype/android/widget/InputWindow;->sanitizeRect(Landroid/graphics/Rect;)V

    .line 1677
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mLastKeyboard:Landroid/graphics/Bitmap;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v1, v2, v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/widget/InputWindow;->mLastKeyboardCropped:Landroid/graphics/Bitmap;

    .line 1679
    iget v0, p0, Lcom/swype/android/widget/InputWindow;->keyboardPosition:I

    iput v0, p0, Lcom/swype/android/widget/InputWindow;->positionToMove:I

    .line 1680
    iput p2, p0, Lcom/swype/android/widget/InputWindow;->mMovePathId:I

    .line 1682
    invoke-direct {p0, v5}, Lcom/swype/android/widget/InputWindow;->setCurCanvas(I)V

    .line 1683
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWindowSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v1

    iget v1, v1, Lcom/swype/android/widget/ViewSize;->width:I

    invoke-virtual {p0}, Lcom/swype/android/widget/InputWindow;->getWindowSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v2

    iget v2, v2, Lcom/swype/android/widget/ViewSize;->height:I

    invoke-direct {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1684
    iget-object v1, p0, Lcom/swype/android/widget/InputWindow;->mCurCanvas:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1685
    return-void
.end method
