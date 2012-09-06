.class LT/b;
.super LT/f;
.source "SourceFile"


# static fields
.field private static final b:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 47
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sput-object v0, LT/b;->b:Landroid/graphics/BitmapFactory$Options;

    .line 50
    sget-object v0, LT/b;->b:Landroid/graphics/BitmapFactory$Options;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 55
    sget-object v0, LT/b;->b:Landroid/graphics/BitmapFactory$Options;

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 56
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    sget-object v0, LT/b;->b:Landroid/graphics/BitmapFactory$Options;

    invoke-static {p1, p2, p3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, LT/f;-><init>(Landroid/graphics/Bitmap;)V

    .line 60
    return-void
.end method


# virtual methods
.method public g()I
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method
