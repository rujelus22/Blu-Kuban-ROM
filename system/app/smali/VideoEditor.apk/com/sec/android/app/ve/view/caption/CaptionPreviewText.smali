.class public Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;
.super Landroid/widget/TextView;
.source "CaptionPreviewText.java"


# static fields
.field private static _instance:Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;


# instance fields
.field public BITMAP_HEIGHT:I

.field public BITMAP_PADDING:I

.field public BITMAP_WIDTH:I

.field private mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 15
    const/16 v0, 0x500

    iput v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->BITMAP_WIDTH:I

    const/16 v0, 0xfc

    iput v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->BITMAP_HEIGHT:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->BITMAP_PADDING:I

    .line 16
    iput-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->mContext:Landroid/content/Context;

    .line 19
    iput-object p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->mContext:Landroid/content/Context;

    .line 20
    sput-object p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->_instance:Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 15
    const/16 v0, 0x500

    iput v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->BITMAP_WIDTH:I

    const/16 v0, 0xfc

    iput v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->BITMAP_HEIGHT:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->BITMAP_PADDING:I

    .line 16
    iput-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->mContext:Landroid/content/Context;

    .line 25
    iput-object p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->mContext:Landroid/content/Context;

    .line 26
    sput-object p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->_instance:Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;

    .line 27
    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;
    .registers 1

    .prologue
    .line 29
    sget-object v0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->_instance:Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;

    return-object v0
.end method


# virtual methods
.method public setClipartparam(Lcom/samsung/app/video/editor/external/ClipartParams;)V
    .registers 5
    .parameter "mParams"

    .prologue
    .line 34
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iput-object p1, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    .line 36
    iget-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    if-eqz v1, :cond_43

    .line 37
    iget-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v1, v1, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 38
    iget-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v1, v1, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/android/app/ve/view/caption/CaptionText;->isTextBigger(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 39
    const/high16 v1, 0x4188

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->setTextSize(F)V

    .line 42
    :goto_20
    iget-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget v1, v1, Lcom/samsung/app/video/editor/external/ClipartParams;->tf:I

    invoke-static {v1}, Lcom/sec/android/app/ve/view/caption/CaptionStyleView;->getTypeFace(I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 43
    .local v0, type:Landroid/graphics/Typeface;
    iget-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget v1, v1, Lcom/samsung/app/video/editor/external/ClipartParams;->Style:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 44
    iget-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget-object v1, v1, Lcom/samsung/app/video/editor/external/ClipartParams;->data:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v1, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->mClipartParams:Lcom/samsung/app/video/editor/external/ClipartParams;

    iget v1, v1, Lcom/samsung/app/video/editor/external/ClipartParams;->themeId:I

    iget-object v2, p0, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/view/caption/CaptionText;->getCaptionThemeTextColor(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->setTextColor(I)V

    .line 51
    .end local v0           #type:Landroid/graphics/Typeface;
    :cond_43
    return-void

    .line 41
    :cond_44
    const/high16 v1, 0x420c

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/caption/CaptionPreviewText;->setTextSize(F)V

    goto :goto_20
.end method
