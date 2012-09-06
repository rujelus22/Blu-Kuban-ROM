.class LzY;
.super Ljava/lang/Object;
.source "ImageCache.java"


# instance fields
.field private a:I

.field private final a:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic a:LzW;

.field private final a:Z

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(LzW;Landroid/graphics/drawable/BitmapDrawable;IIZ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, LzY;->a:LzW;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p2}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput-object p2, p0, LzY;->a:Landroid/graphics/drawable/BitmapDrawable;

    .line 57
    invoke-static {p1}, LzW;->a(LzW;)I

    move-result v0

    iput v0, p0, LzY;->a:I

    .line 58
    iput p3, p0, LzY;->b:I

    .line 59
    iput p4, p0, LzY;->c:I

    .line 60
    iput-boolean p5, p0, LzY;->a:Z

    .line 61
    return-void
.end method

.method static synthetic a(LzY;)I
    .registers 2
    .parameter

    .prologue
    .line 52
    iget v0, p0, LzY;->b:I

    return v0
.end method

.method static synthetic a(LzY;)Landroid/graphics/drawable/BitmapDrawable;
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, LzY;->a:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic a(LzY;)Z
    .registers 2
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, LzY;->a:Z

    return v0
.end method

.method static synthetic b(LzY;)I
    .registers 2
    .parameter

    .prologue
    .line 52
    iget v0, p0, LzY;->c:I

    return v0
.end method

.method static synthetic c(LzY;)I
    .registers 2
    .parameter

    .prologue
    .line 52
    iget v0, p0, LzY;->a:I

    return v0
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, LzY;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 65
    if-nez v0, :cond_11

    .line 66
    const-string v0, "ImageCache"

    const-string v1, "Null bitmap"

    invoke-static {v0, v1}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    .line 69
    :goto_10
    return v0

    :cond_11
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    mul-int/2addr v0, v1

    goto :goto_10
.end method

.method public a()Landroid/graphics/drawable/BitmapDrawable;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, LzY;->a:LzW;

    invoke-static {v0}, LzW;->a(LzW;)I

    move-result v0

    iput v0, p0, LzY;->a:I

    .line 74
    iget-object v0, p0, LzY;->a:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method
