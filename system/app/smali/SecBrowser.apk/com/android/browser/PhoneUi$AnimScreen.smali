.class Lcom/android/browser/PhoneUi$AnimScreen;
.super Ljava/lang/Object;
.source "PhoneUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/PhoneUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimScreen"
.end annotation


# instance fields
.field private mContent:Landroid/widget/ImageView;

.field private mMain:Landroid/view/View;

.field private mScale:F

.field private mTitle:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter "ctx"
    .parameter "image"

    .prologue
    .line 540
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 541
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;

    .line 543
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;

    const v1, 0x7f0d0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;

    .line 544
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    .line 546
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 547
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 548
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 549
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mScale:F

    .line 550
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi$AnimScreen;->getScaleFactor()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/browser/PhoneUi$AnimScreen;->setScaleFactor(F)V

    .line 551
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/TitleBar;Landroid/webkit/WebView;)V
    .registers 14
    .parameter "ctx"
    .parameter "tbar"
    .parameter "web"

    .prologue
    .line 513
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 514
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040002

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;

    .line 516
    iget-object v7, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;

    const v8, 0x7f0d0008

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    .line 517
    iget-object v7, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTop(I)V

    .line 519
    iget-object v7, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;

    const v8, 0x7f0d0005

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;

    .line 520
    invoke-virtual {p2}, Lcom/android/browser/TitleBar;->getWidth()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 522
    .local v0, bm1:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 523
    .local v2, c1:Landroid/graphics/Canvas;
    invoke-virtual {p2, v2}, Lcom/android/browser/TitleBar;->draw(Landroid/graphics/Canvas;)V

    .line 524
    iget-object v7, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 525
    invoke-virtual {p3}, Landroid/webkit/WebView;->getHeight()I

    move-result v7

    invoke-virtual {p2}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v8

    sub-int v4, v7, v8

    .line 526
    .local v4, h:I
    invoke-virtual {p3}, Landroid/webkit/WebView;->getWidth()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 528
    .local v1, bm2:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 529
    .local v3, c2:Landroid/graphics/Canvas;
    invoke-virtual {p3}, Landroid/webkit/WebView;->getScrollX()I

    move-result v5

    .line 530
    .local v5, tx:I
    invoke-virtual {p3}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    .line 531
    .local v6, ty:I
    neg-int v7, v5

    int-to-float v7, v7

    neg-int v8, v6

    invoke-virtual {p2}, Lcom/android/browser/TitleBar;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v3, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 532
    invoke-virtual {p3, v3}, Landroid/webkit/WebView;->draw(Landroid/graphics/Canvas;)V

    .line 533
    iget-object v7, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 534
    iget-object v7, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 535
    iget-object v7, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 536
    const/high16 v7, 0x3f80

    iput v7, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mScale:F

    .line 537
    invoke-virtual {p0}, Lcom/android/browser/PhoneUi$AnimScreen;->getScaleFactor()F

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/browser/PhoneUi$AnimScreen;->setScaleFactor(F)V

    .line 538
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mMain:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/PhoneUi$AnimScreen;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mTitle:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public getScaleFactor()F
    .registers 2

    .prologue
    .line 561
    iget v0, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mScale:F

    return v0
.end method

.method public setScaleFactor(F)V
    .registers 4
    .parameter "sf"

    .prologue
    .line 554
    iput p1, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mScale:F

    .line 555
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 556
    .local v0, m:Landroid/graphics/Matrix;
    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 557
    iget-object v1, p0, Lcom/android/browser/PhoneUi$AnimScreen;->mContent:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 558
    return-void
.end method
