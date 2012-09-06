.class public Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLSNSSettingItem.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnClickListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# static fields
.field private static final CHECKBOX_POS_Y:I = 0x15

.field private static final CHECKBOX_X_OFFSET_FROM_RIGHT:I = 0x3f

.field private static final IMAGE_ICON_POS_X:I = 0x127

.field private static final IMAGE_ICON_POS_Y:I = 0xc

.field public static final LIST_INCLUDE_CHECKBOX:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final LIST_SELECTOR_HIGHLIGHT_COLOR:I = 0x0

.field private static final LIST_TYPE_BUTTON_HEIGHT:I = 0x46

.field private static final LIST_TYPE_BUTTON_WIDTH:I = 0x228

.field private static final LIST_TYPE_TEXT_HEIGHT:I = 0x40

.field private static final LIST_TYPE_TEXT_POS_X:I = 0x11

.field private static final LIST_TYPE_TEXT_POS_Y:I = 0x3

.field private static final LIST_TYPE_TEXT_WIDTH:I = 0x116

.field public static final LIST_USERPROFILE:I = 0x0

.field private static final SEPARATOR_HEIGHT:I = 0x2

.field private static final SEPARATOR_POS_X:I = 0x0

.field public static final UNKNOWN_TYPE:I = -0x1


# instance fields
.field private mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mAnchor:Lcom/sec/android/glview/TwGLImage;

.field private mButton:Lcom/sec/android/glview/TwGLButton;

.field private mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

.field private mCurrentType:I

.field private mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

.field private mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

.field private mDim:Z

.field private mLock:Z

.field private mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

.field private mText:Lcom/sec/android/glview/TwGLText;

.field private mUserIcon:Lcom/sec/android/glview/TwGLImage;

.field private mZOrder:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 60
    const/16 v0, 0xff

    const/16 v1, 0x15

    const/16 v2, 0x54

    const/16 v3, 0x96

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFLcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .registers 14
    .parameter "activityContext"
    .parameter "width"
    .parameter "height"
    .parameter "data"
    .parameter "command"
    .parameter "type"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 95
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mZOrder:I

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    .line 80
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    .line 81
    iput-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mLock:Z

    .line 96
    iput-object p4, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 97
    iput-object p5, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 98
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 100
    invoke-direct {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->initContents(I)V

    .line 101
    invoke-virtual {p0, p6}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setContentType(I)V

    .line 103
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;Lcom/sec/android/app/camera/command/MenuCommand;I)V
    .registers 8
    .parameter "activityContext"
    .parameter "data"
    .parameter "command"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mZOrder:I

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    .line 80
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    .line 81
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mLock:Z

    .line 85
    iput-object p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    .line 86
    iput-object p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    .line 87
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 89
    invoke-direct {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->initContents(I)V

    .line 90
    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setContentType(I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;)V
    .registers 10
    .parameter "glContext"

    .prologue
    const v4, 0x7f020192

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 106
    invoke-direct {p0, p1, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mZOrder:I

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    .line 80
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    .line 81
    iput-boolean v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mLock:Z

    .line 108
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    move-object v1, p1

    move v3, v2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 111
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    const-string v1, "      "

    invoke-direct {v0, p1, v2, v2, v1}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 112
    return-void
.end method

.method private clearContent()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_11

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->clear()V

    .line 171
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 173
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_21

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->clear()V

    .line 176
    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    .line 178
    :cond_21
    return-void
.end method

.method private initContents(I)V
    .registers 17
    .parameter "type"

    .prologue
    .line 200
    const/4 v14, 0x0

    .line 201
    .local v14, width:F
    const/4 v13, 0x0

    .line 203
    .local v13, height:F
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLView;->mSizeSpecified:Z

    if-eqz v0, :cond_bc

    .line 204
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->getHeight()F

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v0 .. v10}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIIIILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    .line 210
    :goto_24
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    if-nez v0, :cond_2d

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 213
    :cond_2d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_d4

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getWidth()F

    move-result v4

    .line 215
    .end local v14           #width:F
    .local v4, width:F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLButton;->getHeight()F

    move-result v5

    .line 218
    .end local v13           #height:F
    .local v5, height:F
    :goto_3d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-nez v0, :cond_64

    .line 219
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 223
    :cond_64
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-nez v0, :cond_84

    .line 224
    new-instance v6, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/high16 v0, 0x427c

    sub-float v8, v4, v0

    const/high16 v9, 0x41a8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v10

    const/4 v11, 0x1

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;FFIZ)V

    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setBypassTouch(Z)V

    .line 228
    :cond_84
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mUserIcon:Lcom/sec/android/glview/TwGLImage;

    if-nez v0, :cond_a2

    .line 229
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const v2, 0x43938000

    const/high16 v3, 0x4140

    const v6, 0x7f020027

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mUserIcon:Lcom/sec/android/glview/TwGLImage;

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mUserIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 233
    :cond_a2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-nez v0, :cond_bb

    .line 234
    new-instance v6, Lcom/sec/android/glview/TwGLNinePatchTexture;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x4000

    const v12, 0x7f02017a

    move v10, v4

    invoke-direct/range {v6 .. v12}, Lcom/sec/android/glview/TwGLNinePatchTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    .line 236
    :cond_bb
    return-void

    .line 207
    .end local v4           #width:F
    .end local v5           #height:F
    .restart local v13       #height:F
    .restart local v14       #width:F
    :cond_bc
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->LIST_SELECTOR_HIGHLIGHT_COLOR:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIIILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    goto/16 :goto_24

    :cond_d4
    move v5, v13

    .end local v13           #height:F
    .restart local v5       #height:F
    move v4, v14

    .end local v14           #width:F
    .restart local v4       #width:F
    goto/16 :goto_3d
.end method


# virtual methods
.method public clear()V
    .registers 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->clearContent()V

    .line 164
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 165
    return-void
.end method

.method public getButtonType()I
    .registers 2

    .prologue
    .line 196
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    return v0
.end method

.method public getCommand()Lcom/sec/android/app/camera/command/MenuCommand;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    return-object v0
.end method

.method public getCommandId()I
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    if-eqz v0, :cond_b

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getCommandId()I

    move-result v0

    .line 192
    :goto_a
    return v0

    :cond_b
    const/16 v0, 0x63

    goto :goto_a
.end method

.method public getContentType()I
    .registers 2

    .prologue
    .line 284
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    return v0
.end method

.method public getData()Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    return-object v0
.end method

.method public getScrollHint()Z
    .registers 2

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)V
    .registers 8
    .parameter "view"

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/high16 v4, 0x4000

    .line 332
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    if-eqz v2, :cond_20

    .line 333
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    const/16 v3, 0x39

    if-ne v2, v3, :cond_23

    .line 334
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_21

    :goto_1d
    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPreviewFileReceived(I)V

    .line 346
    :cond_20
    :goto_20
    return-void

    :cond_21
    move v0, v1

    .line 334
    goto :goto_1d

    .line 335
    :cond_23
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mData:Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/resourcedata/MenuResourceBundle;->getItem(I)I

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_3d

    .line 336
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->getChecked()Z

    move-result v3

    if-eqz v3, :cond_3b

    :goto_37
    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onRunSNSAfterConnect(I)V

    goto :goto_20

    :cond_3b
    move v0, v1

    goto :goto_37

    .line 338
    :cond_3d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mZOrder:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    .line 339
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/command/MenuCommand;->setAnchor(Lcom/sec/android/glview/TwGLImage;)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getLeft()F

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getWidth()F

    move-result v2

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTop()F

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getHeight()F

    move-result v3

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->getTranslateY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/command/MenuCommand;->setLaunchPosition(FF)V

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCommand:Lcom/sec/android/app/camera/command/MenuCommand;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/command/MenuCommand;->execute()V

    goto :goto_20
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .registers 6
    .parameter "gl"

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->getRotatable()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 290
    iget-object v2, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/glview/TwGLView;

    .line 291
    .local v1, view:Lcom/sec/android/glview/TwGLView;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->getMatrix()[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->getClipRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/glview/TwGLView;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    goto :goto_c

    .line 294
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #view:Lcom/sec/android/glview/TwGLView;
    :cond_24
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw(Ljavax/microedition/khronos/opengles/GL11;)V

    .line 296
    :cond_27
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "view"
    .parameter "event"

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mLock:Z

    if-eqz v0, :cond_f

    .line 325
    :cond_8
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 328
    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/glview/TwGLView$OnTouchListener;->onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method public setAnchor(Lcom/sec/android/glview/TwGLImage;)V
    .registers 2
    .parameter "anchor"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mAnchor:Lcom/sec/android/glview/TwGLImage;

    .line 116
    return-void
.end method

.method public setBGImageVisibility(Z)V
    .registers 2
    .parameter "visibility"

    .prologue
    .line 281
    return-void
.end method

.method public setContentType(I)V
    .registers 7
    .parameter "type"

    .prologue
    const/high16 v4, 0x440a

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 239
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    if-ne v0, p1, :cond_9

    .line 277
    :goto_8
    return-void

    .line 242
    :cond_9
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mUserIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 249
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setRotatable(Z)V

    .line 250
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setCenterPivot(Z)V

    .line 251
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setRotateAnimation(Z)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/high16 v1, 0x428c

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLButton;->setSize(FF)V

    .line 254
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->resetLayout()V

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/high16 v1, 0x4188

    const/high16 v2, 0x4040

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->moveLayout(FF)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/high16 v1, 0x438b

    const/high16 v2, 0x4280

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLText;->setSize(FF)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setFontSize(I)V

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setText(Lcom/sec/android/glview/TwGLText;)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setTextVisibility(Z)V

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/glview/TwGLButton;->setHighlightVisibility(Z)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setSize(FF)V

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    const/4 v1, 0x0

    const/high16 v2, 0x4288

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLNinePatchTexture;->moveLayout(FF)V

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 269
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mCurrentType:I

    if-ne v0, v3, :cond_90

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 275
    :goto_86
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->setDim(Z)V

    .line 276
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->resetSize()V

    goto/16 :goto_8

    .line 272
    :cond_90
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mUserIcon:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->addView(Lcom/sec/android/glview/TwGLView;)V

    goto :goto_86
.end method

.method public setDim(Z)V
    .registers 5
    .parameter "dimmed"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 124
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDim:Z

    .line 125
    if-eqz p1, :cond_1a

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_10

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setAlpha(F)V

    .line 129
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_19

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    .line 143
    :cond_19
    :goto_19
    return-void

    .line 134
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_23

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setAlpha(F)V

    .line 137
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_19

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLButton;->setDim(Z)V

    goto :goto_19
.end method

.method public setLock(Z)V
    .registers 4
    .parameter "lock"

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mLock:Z

    .line 147
    if-eqz p1, :cond_f

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_e

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 159
    :cond_e
    :goto_e
    return-void

    .line 153
    :cond_f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_e

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    goto :goto_e
.end method

.method public setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V
    .registers 4
    .parameter "l"

    .prologue
    const/4 v1, 0x0

    .line 300
    iput-object p1, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    .line 301
    iget-object v0, p0, Lcom/sec/android/glview/TwGLView;->mOnTouchListener:Lcom/sec/android/glview/TwGLView$OnTouchListener;

    if-nez v0, :cond_2f

    .line 302
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_10

    .line 303
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 304
    :cond_10
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_19

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 306
    :cond_19
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_22

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 308
    :cond_22
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2b

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 320
    :cond_2b
    :goto_2b
    invoke-super {p0, p1}, Lcom/sec/android/glview/TwGLViewGroup;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 321
    return-void

    .line 311
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_38

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 313
    :cond_38
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    if-eqz v0, :cond_41

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mDataCheckBox:Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLItemDataCheckbox;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 315
    :cond_41
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    if-eqz v0, :cond_4a

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mSeparator:Lcom/sec/android/glview/TwGLNinePatchTexture;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLNinePatchTexture;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 317
    :cond_4a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    if-eqz v0, :cond_2b

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    goto :goto_2b
.end method

.method public setZOrder(I)V
    .registers 2
    .parameter "zOrder"

    .prologue
    .line 119
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLSNSSettingItem;->mZOrder:I

    .line 120
    return-void
.end method
