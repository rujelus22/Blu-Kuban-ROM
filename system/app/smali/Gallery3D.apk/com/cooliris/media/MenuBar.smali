.class public final Lcom/cooliris/media/MenuBar;
.super Lcom/cooliris/media/Layer;
.source "MenuBar.java"

# interfaces
.implements Lcom/cooliris/media/PopupMenu$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cooliris/media/MenuBar$1;,
        Lcom/cooliris/media/MenuBar$Menu;
    }
.end annotation


# static fields
.field private static final BACKGROUND:I

.field private static final MENU_HIGHLIGHT_LEFT:I

.field private static final MENU_HIGHLIGHT_MIDDLE:I

.field private static final MENU_HIGHLIGHT_RIGHT:I

.field private static final MENU_HIGHLIGHT_TOP_LEFT:I

.field private static final MENU_HIGHLIGHT_TOP_MIDDLE:I

.field private static final MENU_HIGHLIGHT_TOP_RIGHT:I

.field private static final MENU_TITLE_STYLE:Lcom/cooliris/media/StringTexture$Config;

.field public static final MENU_TITLE_STYLE_TEXT:Lcom/cooliris/media/StringTexture$Config;

.field private static final SEPERATOR:I


# instance fields
.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mMenus:[Lcom/cooliris/media/MenuBar$Menu;

.field private mNeedsLayout:Z

.field private mSecondTouch:Z

.field private final mSubmenu:Lcom/cooliris/media/PopupMenu;

.field private final mTextureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cooliris/media/Texture;",
            ">;"
        }
    .end annotation
.end field

.field public mTouchActive:Z

.field private mTouchMenu:I

.field private mTouchMenuItem:I

.field private mTouchOverMenu:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v0}, Lcom/cooliris/media/StringTexture$Config;-><init>()V

    sput-object v0, Lcom/cooliris/media/MenuBar;->MENU_TITLE_STYLE_TEXT:Lcom/cooliris/media/StringTexture$Config;

    .line 31
    new-instance v0, Lcom/cooliris/media/StringTexture$Config;

    invoke-direct {v0}, Lcom/cooliris/media/StringTexture$Config;-><init>()V

    sput-object v0, Lcom/cooliris/media/MenuBar;->MENU_TITLE_STYLE:Lcom/cooliris/media/StringTexture$Config;

    .line 42
    sget-boolean v0, Lcom/cooliris/media/Utils;->mUse_U1_Chn_Open:Z

    if-eqz v0, :cond_78

    .line 43
    sget-object v0, Lcom/cooliris/media/MenuBar;->MENU_TITLE_STYLE:Lcom/cooliris/media/StringTexture$Config;

    const/high16 v1, 0x4150

    sget v2, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    .line 46
    :goto_1e
    sget-object v0, Lcom/cooliris/media/MenuBar;->MENU_TITLE_STYLE:Lcom/cooliris/media/StringTexture$Config;

    iput v4, v0, Lcom/cooliris/media/StringTexture$Config;->xalignment:I

    .line 47
    sget-object v0, Lcom/cooliris/media/MenuBar;->MENU_TITLE_STYLE:Lcom/cooliris/media/StringTexture$Config;

    iput v3, v0, Lcom/cooliris/media/StringTexture$Config;->sizeMode:I

    .line 48
    sget-object v0, Lcom/cooliris/media/MenuBar;->MENU_TITLE_STYLE:Lcom/cooliris/media/StringTexture$Config;

    iput v5, v0, Lcom/cooliris/media/StringTexture$Config;->overflowMode:I

    .line 50
    sget-object v0, Lcom/cooliris/media/MenuBar;->MENU_TITLE_STYLE_TEXT:Lcom/cooliris/media/StringTexture$Config;

    const/high16 v1, 0x4170

    sget v2, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    .line 51
    sget-object v0, Lcom/cooliris/media/MenuBar;->MENU_TITLE_STYLE_TEXT:Lcom/cooliris/media/StringTexture$Config;

    iput v4, v0, Lcom/cooliris/media/StringTexture$Config;->xalignment:I

    .line 52
    sget-object v0, Lcom/cooliris/media/MenuBar;->MENU_TITLE_STYLE_TEXT:Lcom/cooliris/media/StringTexture$Config;

    iput v3, v0, Lcom/cooliris/media/StringTexture$Config;->sizeMode:I

    .line 53
    sget-object v0, Lcom/cooliris/media/MenuBar;->MENU_TITLE_STYLE_TEXT:Lcom/cooliris/media/StringTexture$Config;

    iput v5, v0, Lcom/cooliris/media/StringTexture$Config;->overflowMode:I

    .line 71
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020072

    sput v0, Lcom/cooliris/media/MenuBar;->BACKGROUND:I

    .line 74
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020079

    sput v0, Lcom/cooliris/media/MenuBar;->SEPERATOR:I

    .line 77
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020074

    sput v0, Lcom/cooliris/media/MenuBar;->MENU_HIGHLIGHT_LEFT:I

    .line 80
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020073

    sput v0, Lcom/cooliris/media/MenuBar;->MENU_HIGHLIGHT_MIDDLE:I

    .line 83
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020076

    sput v0, Lcom/cooliris/media/MenuBar;->MENU_HIGHLIGHT_RIGHT:I

    .line 86
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020075

    sput v0, Lcom/cooliris/media/MenuBar;->MENU_HIGHLIGHT_TOP_LEFT:I

    .line 89
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020078

    sput v0, Lcom/cooliris/media/MenuBar;->MENU_HIGHLIGHT_TOP_MIDDLE:I

    .line 92
    sget-object v0, Lcom/cooliris/app/Res;->drawable:Lcom/cooliris/media/R$drawable;

    const v0, 0x7f020077

    sput v0, Lcom/cooliris/media/MenuBar;->MENU_HIGHLIGHT_TOP_RIGHT:I

    return-void

    .line 45
    :cond_78
    sget-object v0, Lcom/cooliris/media/MenuBar;->MENU_TITLE_STYLE:Lcom/cooliris/media/StringTexture$Config;

    const/high16 v1, 0x4188

    sget v2, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/cooliris/media/StringTexture$Config;->fontSize:F

    goto :goto_1e
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Lcom/cooliris/media/Layer;-><init>()V

    .line 56
    iput-boolean v1, p0, Lcom/cooliris/media/MenuBar;->mNeedsLayout:Z

    .line 58
    new-array v0, v1, [Lcom/cooliris/media/MenuBar$Menu;

    iput-object v0, p0, Lcom/cooliris/media/MenuBar;->mMenus:[Lcom/cooliris/media/MenuBar$Menu;

    .line 60
    iput v2, p0, Lcom/cooliris/media/MenuBar;->mTouchMenu:I

    .line 62
    iput v2, p0, Lcom/cooliris/media/MenuBar;->mTouchMenuItem:I

    .line 64
    iput-boolean v1, p0, Lcom/cooliris/media/MenuBar;->mTouchActive:Z

    .line 66
    iput-boolean v1, p0, Lcom/cooliris/media/MenuBar;->mTouchOverMenu:Z

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cooliris/media/MenuBar;->mTextureMap:Ljava/util/HashMap;

    .line 101
    new-instance v0, Lcom/cooliris/media/PopupMenu;

    invoke-direct {v0, p1}, Lcom/cooliris/media/PopupMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cooliris/media/MenuBar;->mSubmenu:Lcom/cooliris/media/PopupMenu;

    .line 102
    iget-object v0, p0, Lcom/cooliris/media/MenuBar;->mSubmenu:Lcom/cooliris/media/PopupMenu;

    invoke-virtual {v0, p0}, Lcom/cooliris/media/PopupMenu;->setListener(Lcom/cooliris/media/PopupMenu$Listener;)V

    .line 103
    return-void
.end method

.method static synthetic access$200()Lcom/cooliris/media/StringTexture$Config;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/cooliris/media/MenuBar;->MENU_TITLE_STYLE:Lcom/cooliris/media/StringTexture$Config;

    return-object v0
.end method

.method private canDrawHighlight()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 391
    iget v0, p0, Lcom/cooliris/media/MenuBar;->mTouchMenu:I

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/cooliris/media/MenuBar;->mTouchMenuItem:I

    if-ne v0, v1, :cond_13

    iget-boolean v0, p0, Lcom/cooliris/media/MenuBar;->mTouchActive:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/cooliris/media/MenuBar;->mTouchOverMenu:Z

    if-eqz v0, :cond_13

    :cond_11
    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private drawHighlight(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;I)V
    .registers 31
    .parameter "view"
    .parameter "gl"
    .parameter "touchMenu"

    .prologue
    .line 203
    sget v1, Lcom/cooliris/media/MenuBar;->MENU_HIGHLIGHT_LEFT:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v2

    .line 204
    .local v2, highlightLeft:Lcom/cooliris/media/Texture;
    sget v1, Lcom/cooliris/media/MenuBar;->MENU_HIGHLIGHT_MIDDLE:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v21

    .line 205
    .local v21, highlightMiddle:Lcom/cooliris/media/Texture;
    sget v1, Lcom/cooliris/media/MenuBar;->MENU_HIGHLIGHT_RIGHT:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v10

    .line 207
    .local v10, highlightRight:Lcom/cooliris/media/Texture;
    sget v1, Lcom/cooliris/media/MenuBar;->MENU_HIGHLIGHT_TOP_LEFT:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v12

    .line 208
    .local v12, highlightTopLeft:Lcom/cooliris/media/Texture;
    sget v1, Lcom/cooliris/media/MenuBar;->MENU_HIGHLIGHT_TOP_MIDDLE:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v22

    .line 209
    .local v22, highlightTopMiddle:Lcom/cooliris/media/Texture;
    sget v1, Lcom/cooliris/media/MenuBar;->MENU_HIGHLIGHT_TOP_RIGHT:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v23

    .line 211
    .local v23, highlightTopRight:Lcom/cooliris/media/Texture;
    invoke-virtual {v2}, Lcom/cooliris/media/ResourceTexture;->getHeight()I

    move-result v8

    .line 212
    .local v8, height:I
    const/16 v20, 0x4

    .line 213
    .local v20, height_offset:I
    const/high16 v1, 0x422c

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sub-int v19, v8, v1

    .line 214
    .local v19, extra:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/cooliris/media/MenuBar;->mMenus:[Lcom/cooliris/media/MenuBar$Menu;

    aget-object v24, v1, p3

    .line 215
    .local v24, menu:Lcom/cooliris/media/MenuBar$Menu;
    #getter for: Lcom/cooliris/media/MenuBar$Menu;->x:I
    invoke-static/range {v24 .. v24}, Lcom/cooliris/media/MenuBar$Menu;->access$000(Lcom/cooliris/media/MenuBar$Menu;)I

    move-result v1

    const/high16 v3, 0x4110

    sget v4, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    add-int v25, v1, v3

    .line 216
    .local v25, x:I
    #getter for: Lcom/cooliris/media/MenuBar$Menu;->mWidth:I
    invoke-static/range {v24 .. v24}, Lcom/cooliris/media/MenuBar$Menu;->access$100(Lcom/cooliris/media/MenuBar$Menu;)I

    move-result v1

    const/high16 v3, 0x4190

    sget v4, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v7, v1, v3

    .line 217
    .local v7, width:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/cooliris/media/Layer;->mY:F

    float-to-int v1, v1

    sub-int v1, v1, v19

    add-int v26, v1, v20

    .line 219
    .local v26, y:I
    if-lez v26, :cond_9d

    .line 221
    move/from16 v0, v25

    int-to-float v1, v0

    const/high16 v3, 0x41a8

    sget v4, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    sub-float v3, v1, v3

    move/from16 v0, v26

    int-to-float v4, v0

    const/high16 v1, 0x41a8

    sget v5, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v5, v1

    int-to-float v6, v8

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FFFF)V

    move-object/from16 v3, p1

    move-object/from16 v4, v21

    move/from16 v5, v25

    move/from16 v6, v26

    .line 225
    invoke-virtual/range {v3 .. v8}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;IIII)V

    .line 228
    add-int v1, v25, v7

    int-to-float v11, v1

    move/from16 v0, v26

    int-to-float v12, v0

    const/high16 v1, 0x41a8

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    .end local v12           #highlightTopLeft:Lcom/cooliris/media/Texture;
    mul-float v13, v1, v3

    int-to-float v14, v8

    move-object/from16 v9, p1

    invoke-virtual/range {v9 .. v14}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FFFF)V

    .line 243
    :goto_9c
    return-void

    .line 231
    .restart local v12       #highlightTopLeft:Lcom/cooliris/media/Texture;
    :cond_9d
    const/16 v26, 0x0

    .line 233
    move/from16 v0, v25

    int-to-float v1, v0

    const/high16 v3, 0x41a8

    sget v4, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v3, v4

    sub-float v13, v1, v3

    move/from16 v0, v26

    int-to-float v14, v0

    const/high16 v1, 0x41a8

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v15, v1, v3

    sub-int v1, v8, v20

    int-to-float v0, v1

    move/from16 v16, v0

    move-object/from16 v11, p1

    invoke-virtual/range {v11 .. v16}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FFFF)V

    .line 237
    sub-int v18, v8, v20

    move-object/from16 v13, p1

    move-object/from16 v14, v22

    move/from16 v15, v25

    move/from16 v16, v26

    move/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;IIII)V

    .line 240
    add-int v1, v25, v7

    int-to-float v15, v1

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v1, 0x41a8

    sget v3, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v17, v1, v3

    sub-int v1, v8, v20

    int-to-float v0, v1

    move/from16 v18, v0

    move-object/from16 v13, p1

    move-object/from16 v14, v23

    invoke-virtual/range {v13 .. v18}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FFFF)V

    goto :goto_9c
.end method

.method private hitTestMenu(II)I
    .registers 10
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 246
    int-to-float v3, p2

    iget v4, p0, Lcom/cooliris/media/Layer;->mY:F

    const/high16 v5, 0x4170

    sget v6, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_35

    .line 247
    iget-object v1, p0, Lcom/cooliris/media/MenuBar;->mMenus:[Lcom/cooliris/media/MenuBar$Menu;

    .line 248
    .local v1, menus:[Lcom/cooliris/media/MenuBar$Menu;
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_13
    if-ltz v0, :cond_35

    .line 249
    aget-object v3, v1, v0

    #getter for: Lcom/cooliris/media/MenuBar$Menu;->x:I
    invoke-static {v3}, Lcom/cooliris/media/MenuBar$Menu;->access$000(Lcom/cooliris/media/MenuBar$Menu;)I

    move-result v3

    if-le p1, v3, :cond_32

    .line 250
    aget-object v3, v1, v0

    iget-object v3, v3, Lcom/cooliris/media/MenuBar$Menu;->onSelect:Ljava/lang/Runnable;

    if-nez v3, :cond_2f

    aget-object v3, v1, v0

    iget-object v3, v3, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    if-nez v3, :cond_2f

    aget-object v3, v1, v0

    iget-object v3, v3, Lcom/cooliris/media/MenuBar$Menu;->onSingleTapUp:Ljava/lang/Runnable;

    if-eqz v3, :cond_30

    .line 259
    .end local v0           #i:I
    .end local v1           #menus:[Lcom/cooliris/media/MenuBar$Menu;
    :cond_2f
    :goto_2f
    return v0

    .restart local v0       #i:I
    .restart local v1       #menus:[Lcom/cooliris/media/MenuBar$Menu;
    :cond_30
    move v0, v2

    .line 254
    goto :goto_2f

    .line 248
    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .end local v0           #i:I
    .end local v1           #menus:[Lcom/cooliris/media/MenuBar$Menu;
    :cond_35
    move v0, v2

    .line 259
    goto :goto_2f
.end method

.method private layoutMenus()V
    .registers 22

    .prologue
    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MenuBar;->mTextureMap:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    .line 397
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/cooliris/media/MenuBar;->mMenus:[Lcom/cooliris/media/MenuBar$Menu;

    .line 398
    .local v8, menus:[Lcom/cooliris/media/MenuBar$Menu;
    array-length v10, v8

    .line 406
    .local v10, numMenus:I
    if-eqz v10, :cond_143

    .line 407
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/Layer;->mWidth:F

    .line 408
    .local v14, viewWidth:F
    const/4 v11, 0x0

    .line 409
    .local v11, occupiedWidth:I
    const v12, 0x7fffffff

    .line 410
    .local v12, previousMaxWidth:I
    const/4 v13, 0x0

    .line 412
    .local v13, totalDesiredWidth:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1a
    if-ge v5, v10, :cond_27

    .line 413
    aget-object v18, v8, v5

    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/MenuBar$Menu;->computeRequiredWidth()I

    move-result v18

    add-int v13, v13, v18

    .line 412
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 416
    :cond_27
    int-to-float v0, v13

    move/from16 v18, v0

    cmpl-float v18, v18, v14

    if-lez v18, :cond_b3

    .line 418
    int-to-float v0, v10

    move/from16 v18, v0

    div-float v18, v14, v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v16, v0

    .line 419
    .local v16, widthPerMenu:I
    const/16 v17, 0x0

    .line 421
    .local v17, x:I
    const/4 v5, 0x0

    :goto_44
    if-ge v5, v10, :cond_143

    .line 422
    aget-object v7, v8, v5

    .line 423
    .local v7, menu:Lcom/cooliris/media/MenuBar$Menu;
    move/from16 v0, v17

    #setter for: Lcom/cooliris/media/MenuBar$Menu;->x:I
    invoke-static {v7, v0}, Lcom/cooliris/media/MenuBar$Menu;->access$002(Lcom/cooliris/media/MenuBar$Menu;I)I

    .line 424
    move/from16 v0, v16

    #setter for: Lcom/cooliris/media/MenuBar$Menu;->mWidth:I
    invoke-static {v7, v0}, Lcom/cooliris/media/MenuBar$Menu;->access$102(Lcom/cooliris/media/MenuBar$Menu;I)I

    .line 425
    aget-object v18, v8, v5

    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/MenuBar$Menu;->computeRequiredWidth()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, v16

    if-le v0, v1, :cond_a2

    .line 426
    const/high16 v18, 0x40a0

    sget v19, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v18, v18, v19

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v19, v0

    iget v0, v7, Lcom/cooliris/media/MenuBar$Menu;->icon:I

    move/from16 v18, v0

    if-eqz v18, :cond_9f

    const/high16 v18, 0x4204

    sget v20, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float v18, v18, v20

    const/high16 v20, 0x3f00

    add-float v18, v18, v20

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    :goto_82
    add-int v18, v18, v19

    sub-int v18, v16, v18

    move/from16 v0, v18

    iput v0, v7, Lcom/cooliris/media/MenuBar$Menu;->titleWidth:I

    .line 440
    :goto_8a
    add-int/lit8 v18, v10, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_9a

    .line 441
    float-to-int v0, v14

    move/from16 v18, v0

    sub-int v18, v18, v17

    move/from16 v0, v18

    #setter for: Lcom/cooliris/media/MenuBar$Menu;->mWidth:I
    invoke-static {v7, v0}, Lcom/cooliris/media/MenuBar$Menu;->access$102(Lcom/cooliris/media/MenuBar$Menu;I)I

    .line 443
    :cond_9a
    add-int v17, v17, v16

    .line 421
    add-int/lit8 v5, v5, 0x1

    goto :goto_44

    .line 426
    :cond_9f
    const/16 v18, 0x0

    goto :goto_82

    .line 435
    :cond_a2
    iget-object v0, v7, Lcom/cooliris/media/MenuBar$Menu;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/cooliris/media/MenuBar$Menu;->config:Lcom/cooliris/media/StringTexture$Config;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/cooliris/media/StringTexture;->computeTextWidthForConfig(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v7, Lcom/cooliris/media/MenuBar$Menu;->titleWidth:I

    goto :goto_8a

    .line 447
    .end local v7           #menu:Lcom/cooliris/media/MenuBar$Menu;
    .end local v16           #widthPerMenu:I
    .end local v17           #x:I
    :cond_b3
    const/4 v4, 0x1

    .line 448
    .local v4, foundANewMaxWidth:Z
    const/4 v9, 0x0

    .line 450
    .local v9, menusProcessed:I
    :goto_b5
    if-eqz v4, :cond_143

    if-ge v9, v10, :cond_143

    .line 451
    const/4 v4, 0x0

    .line 452
    const/4 v6, 0x0

    .line 453
    .local v6, maxWidth:I
    const/4 v5, 0x0

    :goto_bc
    if-ge v5, v10, :cond_cd

    .line 454
    aget-object v18, v8, v5

    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/MenuBar$Menu;->computeRequiredWidth()I

    move-result v15

    .line 455
    .local v15, width:I
    if-le v15, v6, :cond_ca

    if-ge v15, v12, :cond_ca

    .line 456
    const/4 v4, 0x1

    .line 457
    move v6, v15

    .line 453
    :cond_ca
    add-int/lit8 v5, v5, 0x1

    goto :goto_bc

    .line 461
    .end local v15           #width:I
    :cond_cd
    sub-int v18, v10, v9

    mul-int v18, v18, v6

    add-int v2, v18, v11

    .line 462
    .local v2, cumulativeWidth:I
    int-to-float v0, v2

    move/from16 v18, v0

    cmpg-float v18, v18, v14

    if-ltz v18, :cond_e2

    if-eqz v4, :cond_e2

    add-int/lit8 v18, v10, -0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_13d

    .line 464
    :cond_e2
    int-to-float v0, v2

    move/from16 v18, v0

    sub-float v18, v14, v18

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v3, v18, v19

    .line 465
    .local v3, delta:F
    const/16 v18, 0x0

    cmpg-float v18, v3, v18

    if-gez v18, :cond_f3

    .line 466
    const/4 v3, 0x0

    .line 468
    :cond_f3
    const/16 v17, 0x0

    .line 469
    .restart local v17       #x:I
    const/4 v5, 0x0

    :goto_f6
    if-ge v5, v10, :cond_143

    .line 470
    aget-object v7, v8, v5

    .line 471
    .restart local v7       #menu:Lcom/cooliris/media/MenuBar$Menu;
    move/from16 v0, v17

    #setter for: Lcom/cooliris/media/MenuBar$Menu;->x:I
    invoke-static {v7, v0}, Lcom/cooliris/media/MenuBar$Menu;->access$002(Lcom/cooliris/media/MenuBar$Menu;I)I

    .line 472
    aget-object v18, v8, v5

    invoke-virtual/range {v18 .. v18}, Lcom/cooliris/media/MenuBar$Menu;->computeRequiredWidth()I

    move-result v18

    move/from16 v0, v18

    int-to-float v15, v0

    .line 473
    .local v15, width:F
    int-to-float v0, v6

    move/from16 v18, v0

    cmpg-float v18, v15, v18

    if-gez v18, :cond_13b

    .line 474
    int-to-float v0, v6

    move/from16 v18, v0

    add-float v15, v18, v3

    .line 478
    :goto_114
    float-to-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    #setter for: Lcom/cooliris/media/MenuBar$Menu;->mWidth:I
    invoke-static {v7, v0}, Lcom/cooliris/media/MenuBar$Menu;->access$102(Lcom/cooliris/media/MenuBar$Menu;I)I

    .line 479
    iget-object v0, v7, Lcom/cooliris/media/MenuBar$Menu;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/cooliris/media/MenuBar$Menu;->config:Lcom/cooliris/media/StringTexture$Config;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/cooliris/media/StringTexture;->computeTextWidthForConfig(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;)I

    move-result v18

    move/from16 v0, v18

    iput v0, v7, Lcom/cooliris/media/MenuBar$Menu;->titleWidth:I

    .line 481
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, v15

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 469
    add-int/lit8 v5, v5, 0x1

    goto :goto_f6

    .line 476
    :cond_13b
    add-float/2addr v15, v3

    goto :goto_114

    .line 485
    .end local v3           #delta:F
    .end local v7           #menu:Lcom/cooliris/media/MenuBar$Menu;
    .end local v15           #width:F
    .end local v17           #x:I
    :cond_13d
    add-int/lit8 v9, v9, 0x1

    .line 486
    move v12, v6

    .line 487
    add-int/2addr v11, v6

    .line 489
    goto/16 :goto_b5

    .line 492
    .end local v2           #cumulativeWidth:I
    .end local v4           #foundANewMaxWidth:Z
    .end local v5           #i:I
    .end local v6           #maxWidth:I
    .end local v9           #menusProcessed:I
    .end local v11           #occupiedWidth:I
    .end local v12           #previousMaxWidth:I
    .end local v13           #totalDesiredWidth:I
    .end local v14           #viewWidth:F
    :cond_143
    return-void
.end method

.method private selectMenu(I)V
    .registers 13
    .parameter "index"

    .prologue
    const/4 v10, -0x1

    .line 263
    iget v3, p0, Lcom/cooliris/media/MenuBar;->mTouchMenu:I

    .line 264
    .local v3, oldIndex:I
    if-eq v3, p1, :cond_54

    .line 266
    iget-object v2, p0, Lcom/cooliris/media/MenuBar;->mMenus:[Lcom/cooliris/media/MenuBar$Menu;

    .line 267
    .local v2, menus:[Lcom/cooliris/media/MenuBar$Menu;
    if-eq v3, v10, :cond_14

    .line 268
    aget-object v4, v2, v3

    .line 269
    .local v4, oldMenu:Lcom/cooliris/media/MenuBar$Menu;
    iget-object v9, v4, Lcom/cooliris/media/MenuBar$Menu;->onDeselect:Ljava/lang/Runnable;

    if-eqz v9, :cond_14

    .line 270
    iget-object v9, v4, Lcom/cooliris/media/MenuBar$Menu;->onDeselect:Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 275
    .end local v4           #oldMenu:Lcom/cooliris/media/MenuBar$Menu;
    :cond_14
    iput p1, p0, Lcom/cooliris/media/MenuBar;->mTouchMenu:I

    .line 276
    iput v10, p0, Lcom/cooliris/media/MenuBar;->mTouchMenuItem:I

    .line 279
    iget-object v6, p0, Lcom/cooliris/media/MenuBar;->mSubmenu:Lcom/cooliris/media/PopupMenu;

    .line 280
    .local v6, submenu:Lcom/cooliris/media/PopupMenu;
    const/4 v0, 0x0

    .line 281
    .local v0, didShow:Z
    if-eq p1, v10, :cond_4e

    .line 283
    iget-object v9, p0, Lcom/cooliris/media/MenuBar;->mMenus:[Lcom/cooliris/media/MenuBar$Menu;

    aget-object v1, v9, p1

    .line 284
    .local v1, menu:Lcom/cooliris/media/MenuBar$Menu;
    iget-object v9, v1, Lcom/cooliris/media/MenuBar$Menu;->onSelect:Ljava/lang/Runnable;

    if-eqz v9, :cond_2a

    .line 285
    iget-object v9, v1, Lcom/cooliris/media/MenuBar$Menu;->onSelect:Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 289
    :cond_2a
    iget-object v5, v1, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    .line 290
    .local v5, options:[Lcom/cooliris/media/PopupMenu$Option;
    if-eqz v5, :cond_4e

    .line 291
    iget v9, p0, Lcom/cooliris/media/Layer;->mX:F

    float-to-int v9, v9

    #getter for: Lcom/cooliris/media/MenuBar$Menu;->x:I
    invoke-static {v1}, Lcom/cooliris/media/MenuBar$Menu;->access$000(Lcom/cooliris/media/MenuBar$Menu;)I

    move-result v10

    add-int/2addr v9, v10

    #getter for: Lcom/cooliris/media/MenuBar$Menu;->mWidth:I
    invoke-static {v1}, Lcom/cooliris/media/MenuBar$Menu;->access$100(Lcom/cooliris/media/MenuBar$Menu;)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int v7, v9, v10

    .line 292
    .local v7, x:I
    iget v9, p0, Lcom/cooliris/media/Layer;->mY:F

    float-to-int v8, v9

    .line 293
    .local v8, y:I
    const/4 v0, 0x1

    .line 294
    invoke-virtual {v6, v5}, Lcom/cooliris/media/PopupMenu;->setOptions([Lcom/cooliris/media/PopupMenu$Option;)V

    .line 295
    iget v9, p0, Lcom/cooliris/media/Layer;->mWidth:F

    float-to-int v9, v9

    iget v10, p0, Lcom/cooliris/media/Layer;->mHeight:F

    float-to-int v10, v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/cooliris/media/PopupMenu;->showAtPoint(IIII)V

    .line 298
    .end local v1           #menu:Lcom/cooliris/media/MenuBar$Menu;
    .end local v5           #options:[Lcom/cooliris/media/PopupMenu$Option;
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_4e
    if-nez v0, :cond_54

    .line 299
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/cooliris/media/PopupMenu;->close(Z)V

    .line 302
    .end local v0           #didShow:Z
    .end local v2           #menus:[Lcom/cooliris/media/MenuBar$Menu;
    .end local v6           #submenu:Lcom/cooliris/media/PopupMenu;
    :cond_54
    return-void
.end method


# virtual methods
.method public close()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 305
    iget v1, p0, Lcom/cooliris/media/MenuBar;->mTouchMenu:I

    .line 306
    .local v1, oldIndex:I
    if-eq v1, v4, :cond_16

    .line 308
    iget-object v0, p0, Lcom/cooliris/media/MenuBar;->mMenus:[Lcom/cooliris/media/MenuBar$Menu;

    .line 309
    .local v0, menus:[Lcom/cooliris/media/MenuBar$Menu;
    if-eq v1, v4, :cond_15

    .line 310
    aget-object v2, v0, v1

    .line 311
    .local v2, oldMenu:Lcom/cooliris/media/MenuBar$Menu;
    iget-object v3, v2, Lcom/cooliris/media/MenuBar$Menu;->onDeselect:Ljava/lang/Runnable;

    if-eqz v3, :cond_15

    .line 312
    iget-object v3, v2, Lcom/cooliris/media/MenuBar$Menu;->onDeselect:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 315
    .end local v2           #oldMenu:Lcom/cooliris/media/MenuBar$Menu;
    :cond_15
    const/4 v1, -0x1

    .line 317
    .end local v0           #menus:[Lcom/cooliris/media/MenuBar$Menu;
    :cond_16
    invoke-direct {p0, v4}, Lcom/cooliris/media/MenuBar;->selectMenu(I)V

    .line 318
    iget-object v3, p0, Lcom/cooliris/media/MenuBar;->mSubmenu:Lcom/cooliris/media/PopupMenu;

    if-eqz v3, :cond_22

    .line 319
    iget-object v3, p0, Lcom/cooliris/media/MenuBar;->mSubmenu:Lcom/cooliris/media/PopupMenu;

    invoke-virtual {v3, v5}, Lcom/cooliris/media/PopupMenu;->close(Z)V

    .line 321
    :cond_22
    iput-boolean v5, p0, Lcom/cooliris/media/MenuBar;->mTouchActive:Z

    .line 322
    iput-boolean v5, p0, Lcom/cooliris/media/MenuBar;->mSecondTouch:Z

    .line 323
    return-void
.end method

.method public generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V
    .registers 4
    .parameter "view"
    .parameter "lists"

    .prologue
    .line 133
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->systemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p2, Lcom/cooliris/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lcom/cooliris/media/MenuBar;->mSubmenu:Lcom/cooliris/media/PopupMenu;

    invoke-virtual {v0, p1, p2}, Lcom/cooliris/media/PopupMenu;->generate(Lcom/cooliris/media/RenderView;Lcom/cooliris/media/RenderView$Lists;)V

    .line 138
    return-void
.end method

.method public getMenus()[Lcom/cooliris/media/MenuBar$Menu;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cooliris/media/MenuBar;->mMenus:[Lcom/cooliris/media/MenuBar$Menu;

    return-object v0
.end method

.method public noFadeoutClose()V
    .registers 3

    .prologue
    .line 620
    iget-object v0, p0, Lcom/cooliris/media/MenuBar;->mSubmenu:Lcom/cooliris/media/PopupMenu;

    if-eqz v0, :cond_a

    .line 621
    iget-object v0, p0, Lcom/cooliris/media/MenuBar;->mSubmenu:Lcom/cooliris/media/PopupMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/PopupMenu;->close(Z)V

    .line 622
    :cond_a
    return-void
.end method

.method protected onHiddenChanged()V
    .registers 3

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/cooliris/media/Layer;->mHidden:Z

    if-eqz v0, :cond_a

    .line 122
    iget-object v0, p0, Lcom/cooliris/media/MenuBar;->mSubmenu:Lcom/cooliris/media/PopupMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cooliris/media/PopupMenu;->close(Z)V

    .line 124
    :cond_a
    return-void
.end method

.method public onSelectionChanged(Lcom/cooliris/media/PopupMenu;I)V
    .registers 3
    .parameter "menu"
    .parameter "selectedIndex"

    .prologue
    .line 612
    iput p2, p0, Lcom/cooliris/media/MenuBar;->mTouchMenuItem:I

    .line 613
    return-void
.end method

.method public onSelectionClicked(Lcom/cooliris/media/PopupMenu;I)V
    .registers 4
    .parameter "menu"
    .parameter "selectedIndex"

    .prologue
    .line 616
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/cooliris/media/MenuBar;->selectMenu(I)V

    .line 617
    return-void
.end method

.method protected onSizeChanged()V
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MenuBar;->mNeedsLayout:Z

    .line 129
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x1

    const/4 v11, -0x1

    .line 327
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 328
    .local v5, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 329
    .local v6, y:I
    invoke-direct {p0, v5, v6}, Lcom/cooliris/media/MenuBar;->hitTestMenu(II)I

    move-result v3

    .line 330
    .local v3, hit:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 331
    .local v0, action:I
    packed-switch v0, :pswitch_data_7a

    .line 387
    :cond_18
    :goto_18
    return v12

    .line 333
    :pswitch_19
    iput-boolean v12, p0, Lcom/cooliris/media/MenuBar;->mTouchActive:Z

    .line 334
    iget v7, p0, Lcom/cooliris/media/MenuBar;->mTouchMenu:I

    if-ne v7, v3, :cond_2e

    .line 335
    iput-boolean v12, p0, Lcom/cooliris/media/MenuBar;->mSecondTouch:Z

    .line 341
    :goto_21
    :pswitch_21
    if-eq v3, v11, :cond_31

    .line 343
    invoke-direct {p0, v3}, Lcom/cooliris/media/MenuBar;->selectMenu(I)V

    .line 344
    iput-boolean v12, p0, Lcom/cooliris/media/MenuBar;->mTouchOverMenu:Z

    .line 350
    :goto_28
    iget-object v7, p0, Lcom/cooliris/media/MenuBar;->mSubmenu:Lcom/cooliris/media/PopupMenu;

    invoke-virtual {v7, p1}, Lcom/cooliris/media/PopupMenu;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_18

    .line 337
    :cond_2e
    iput-boolean v8, p0, Lcom/cooliris/media/MenuBar;->mSecondTouch:Z

    goto :goto_21

    .line 348
    :cond_31
    iput-boolean v8, p0, Lcom/cooliris/media/MenuBar;->mTouchOverMenu:Z

    goto :goto_28

    .line 353
    :pswitch_34
    iget v7, p0, Lcom/cooliris/media/MenuBar;->mTouchMenu:I

    if-ne v7, v3, :cond_46

    iget-boolean v7, p0, Lcom/cooliris/media/MenuBar;->mSecondTouch:Z

    if-eqz v7, :cond_46

    .line 354
    iget-object v7, p0, Lcom/cooliris/media/MenuBar;->mSubmenu:Lcom/cooliris/media/PopupMenu;

    invoke-virtual {v7, v12}, Lcom/cooliris/media/PopupMenu;->close(Z)V

    .line 355
    iput v11, p0, Lcom/cooliris/media/MenuBar;->mTouchMenu:I

    .line 356
    iput-boolean v8, p0, Lcom/cooliris/media/MenuBar;->mTouchActive:Z

    goto :goto_18

    .line 360
    :cond_46
    iget-object v7, p0, Lcom/cooliris/media/MenuBar;->mSubmenu:Lcom/cooliris/media/PopupMenu;

    invoke-virtual {v7, p1}, Lcom/cooliris/media/PopupMenu;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 366
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    sub-long v1, v7, v9

    .line 367
    .local v1, elapsed:J
    if-eq v3, v11, :cond_6c

    .line 369
    iget-object v7, p0, Lcom/cooliris/media/MenuBar;->mMenus:[Lcom/cooliris/media/MenuBar$Menu;

    aget-object v4, v7, v3

    .line 370
    .local v4, menu:Lcom/cooliris/media/MenuBar$Menu;
    iget-object v7, v4, Lcom/cooliris/media/MenuBar$Menu;->onSingleTapUp:Ljava/lang/Runnable;

    if-eqz v7, :cond_64

    .line 371
    iget-object v7, v4, Lcom/cooliris/media/MenuBar$Menu;->onSingleTapUp:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 373
    :cond_64
    iget-object v7, v4, Lcom/cooliris/media/MenuBar$Menu;->options:[Lcom/cooliris/media/PopupMenu$Option;

    if-nez v7, :cond_18

    .line 374
    invoke-direct {p0, v11}, Lcom/cooliris/media/MenuBar;->selectMenu(I)V

    goto :goto_18

    .line 375
    .end local v4           #menu:Lcom/cooliris/media/MenuBar$Menu;
    :cond_6c
    const-wide/16 v7, 0x15e

    cmp-long v7, v1, v7

    if-lez v7, :cond_18

    .line 376
    invoke-direct {p0, v11}, Lcom/cooliris/media/MenuBar;->selectMenu(I)V

    goto :goto_18

    .line 382
    .end local v1           #elapsed:J
    :pswitch_76
    invoke-direct {p0, v11}, Lcom/cooliris/media/MenuBar;->selectMenu(I)V

    goto :goto_18

    .line 331
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_19
        :pswitch_34
        :pswitch_21
        :pswitch_76
    .end packed-switch
.end method

.method public renderBlended(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 32
    .parameter "view"
    .parameter "gl"

    .prologue
    .line 143
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/cooliris/media/MenuBar;->mNeedsLayout:Z

    if-eqz v4, :cond_e

    .line 144
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/MenuBar;->layoutMenus()V

    .line 145
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/cooliris/media/MenuBar;->mNeedsLayout:Z

    .line 147
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/MenuBar;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/MenuBar;->mTextureMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 149
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/cooliris/media/MenuBar;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 153
    :cond_27
    sget v4, Lcom/cooliris/media/MenuBar;->BACKGROUND:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v5

    .line 154
    .local v5, background:Lcom/cooliris/media/Texture;
    invoke-virtual {v5}, Lcom/cooliris/media/ResourceTexture;->getHeight()I

    move-result v12

    .line 155
    .local v12, backgroundHeight:I
    const/high16 v4, 0x422c

    sget v6, Lcom/cooliris/app/App;->PIXEL_DENSITY:F

    mul-float/2addr v4, v6

    const/high16 v6, 0x3f00

    add-float/2addr v4, v6

    float-to-int v0, v4

    move/from16 v20, v0

    .line 156
    .local v20, menuHeight:I
    invoke-virtual {v5}, Lcom/cooliris/media/ResourceTexture;->getHeight()I

    move-result v4

    sub-int v13, v4, v20

    .line 157
    .local v13, extra:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/cooliris/media/Layer;->mX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/Layer;->mY:F

    int-to-float v7, v13

    sub-float v7, v4, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/cooliris/media/Layer;->mWidth:F

    int-to-float v9, v12

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FFFF)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/cooliris/media/MenuBar;->mMenus:[Lcom/cooliris/media/MenuBar$Menu;

    move-object/from16 v21, v0

    .line 161
    .local v21, menus:[Lcom/cooliris/media/MenuBar$Menu;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v22, v0

    .line 162
    .local v22, numMenus:I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/cooliris/media/Layer;->mY:F

    float-to-int v0, v4

    move/from16 v28, v0

    .line 163
    .local v28, y:I
    sget v4, Lcom/cooliris/media/MenuBar;->SEPERATOR:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/cooliris/media/RenderView;->bind(Lcom/cooliris/media/Texture;)Z

    move-result v4

    if-eqz v4, :cond_98

    .line 164
    const/4 v15, 0x1

    .local v15, i:I
    :goto_7c
    move/from16 v0, v22

    if-ge v15, v0, :cond_98

    .line 165
    aget-object v4, v21, v15

    #getter for: Lcom/cooliris/media/MenuBar$Menu;->x:I
    invoke-static {v4}, Lcom/cooliris/media/MenuBar$Menu;->access$000(Lcom/cooliris/media/MenuBar$Menu;)I

    move-result v4

    int-to-float v7, v4

    move/from16 v0, v28

    int-to-float v8, v0

    const/4 v9, 0x0

    const/high16 v10, 0x3f80

    move/from16 v0, v20

    int-to-float v11, v0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/cooliris/media/RenderView;->draw2D(FFFFF)V

    .line 164
    add-int/lit8 v15, v15, 0x1

    goto :goto_7c

    .line 170
    .end local v15           #i:I
    :cond_98
    move-object/from16 v0, p0

    iget v0, v0, Lcom/cooliris/media/MenuBar;->mTouchMenu:I

    move/from16 v26, v0

    .line 171
    .local v26, touchMenu:I
    invoke-direct/range {p0 .. p0}, Lcom/cooliris/media/MenuBar;->canDrawHighlight()Z

    move-result v4

    if-eqz v4, :cond_af

    .line 172
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/cooliris/media/MenuBar;->drawHighlight(Lcom/cooliris/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;I)V

    .line 176
    :cond_af
    move-object/from16 v0, p0

    iget v14, v0, Lcom/cooliris/media/Layer;->mHeight:F

    .line 177
    .local v14, height:F
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_b4
    move/from16 v0, v22

    if-eq v15, v0, :cond_165

    .line 179
    aget-object v19, v21, v15

    .line 180
    .local v19, menu:Lcom/cooliris/media/MenuBar$Menu;
    move-object/from16 v0, v19

    iget v4, v0, Lcom/cooliris/media/MenuBar$Menu;->icon:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/cooliris/media/RenderView;->getResource(I)Lcom/cooliris/media/ResourceTexture;

    move-result-object v16

    .line 182
    .local v16, icon:Lcom/cooliris/media/ResourceTexture;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/MenuBar;->mTextureMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/cooliris/media/MenuBar$Menu;->title:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/cooliris/media/StringTexture;

    .line 183
    .local v24, titleTexture:Lcom/cooliris/media/StringTexture;
    if-nez v24, :cond_105

    .line 184
    new-instance v24, Lcom/cooliris/media/StringTexture;

    .end local v24           #titleTexture:Lcom/cooliris/media/StringTexture;
    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/cooliris/media/MenuBar$Menu;->title:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/cooliris/media/MenuBar$Menu;->config:Lcom/cooliris/media/StringTexture$Config;

    move-object/from16 v0, v19

    iget v7, v0, Lcom/cooliris/media/MenuBar$Menu;->titleWidth:I

    sget-object v8, Lcom/cooliris/media/MenuBar;->MENU_TITLE_STYLE:Lcom/cooliris/media/StringTexture$Config;

    iget v8, v8, Lcom/cooliris/media/StringTexture$Config;->height:I

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v6, v7, v8}, Lcom/cooliris/media/StringTexture;-><init>(Ljava/lang/String;Lcom/cooliris/media/StringTexture$Config;II)V

    .line 186
    .restart local v24       #titleTexture:Lcom/cooliris/media/StringTexture;
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/cooliris/media/RenderView;->loadTexture(Lcom/cooliris/media/Texture;)V

    .line 187
    move-object/from16 v0, v24

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/cooliris/media/MenuBar$Menu;->titleTexture:Lcom/cooliris/media/StringTexture;

    .line 188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/cooliris/media/MenuBar;->mTextureMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/cooliris/media/MenuBar$Menu;->title:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_105
    if-eqz v16, :cond_162

    invoke-virtual/range {v16 .. v16}, Lcom/cooliris/media/ResourceTexture;->getWidth()I

    move-result v17

    .line 191
    .local v17, iconWidth:I
    :goto_10b
    move-object/from16 v0, v19

    iget v4, v0, Lcom/cooliris/media/MenuBar$Menu;->titleWidth:I

    add-int v27, v17, v4

    .line 192
    .local v27, width:I
    #getter for: Lcom/cooliris/media/MenuBar$Menu;->mWidth:I
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/MenuBar$Menu;->access$100(Lcom/cooliris/media/MenuBar$Menu;)I

    move-result v4

    sub-int v4, v4, v27

    div-int/lit8 v23, v4, 0x2

    .line 193
    .local v23, offset:I
    if-eqz v16, :cond_13a

    .line 194
    move/from16 v0, v28

    int-to-float v4, v0

    invoke-virtual/range {v16 .. v16}, Lcom/cooliris/media/ResourceTexture;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float v6, v14, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v18, v4, v6

    .line 195
    .local v18, iconY:F
    #getter for: Lcom/cooliris/media/MenuBar$Menu;->x:I
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/MenuBar$Menu;->access$000(Lcom/cooliris/media/MenuBar$Menu;)I

    move-result v4

    add-int v4, v4, v23

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-virtual {v0, v1, v4, v2}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 197
    .end local v18           #iconY:F
    :cond_13a
    move/from16 v0, v28

    int-to-float v4, v0

    sget-object v6, Lcom/cooliris/media/MenuBar;->MENU_TITLE_STYLE:Lcom/cooliris/media/StringTexture$Config;

    iget v6, v6, Lcom/cooliris/media/StringTexture$Config;->height:I

    int-to-float v6, v6

    sub-float v6, v14, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float/2addr v4, v6

    const/high16 v6, 0x3f80

    add-float v25, v4, v6

    .line 198
    .local v25, titleY:F
    #getter for: Lcom/cooliris/media/MenuBar$Menu;->x:I
    invoke-static/range {v19 .. v19}, Lcom/cooliris/media/MenuBar$Menu;->access$000(Lcom/cooliris/media/MenuBar$Menu;)I

    move-result v4

    add-int v4, v4, v23

    add-int v4, v4, v17

    int-to-float v4, v4

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v4, v2}, Lcom/cooliris/media/RenderView;->draw2D(Lcom/cooliris/media/Texture;FF)V

    .line 177
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_b4

    .line 190
    .end local v17           #iconWidth:I
    .end local v23           #offset:I
    .end local v25           #titleY:F
    .end local v27           #width:I
    :cond_162
    const/16 v17, 0x0

    goto :goto_10b

    .line 200
    .end local v16           #icon:Lcom/cooliris/media/ResourceTexture;
    .end local v19           #menu:Lcom/cooliris/media/MenuBar$Menu;
    .end local v24           #titleTexture:Lcom/cooliris/media/StringTexture;
    :cond_165
    return-void
.end method

.method public setMenus([Lcom/cooliris/media/MenuBar$Menu;)V
    .registers 3
    .parameter "menus"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/cooliris/media/MenuBar;->mMenus:[Lcom/cooliris/media/MenuBar$Menu;

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MenuBar;->mNeedsLayout:Z

    .line 112
    return-void
.end method

.method public updateMenu(Lcom/cooliris/media/MenuBar$Menu;I)V
    .registers 4
    .parameter "menu"
    .parameter "index"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/cooliris/media/MenuBar;->mMenus:[Lcom/cooliris/media/MenuBar$Menu;

    aput-object p1, v0, p2

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cooliris/media/MenuBar;->mNeedsLayout:Z

    .line 117
    return-void
.end method
