.class Lx/ae;
.super Landroid/graphics/drawable/BitmapDrawable;


# instance fields
.field final synthetic a:Lx/ad;


# direct methods
.method constructor <init>(Lx/ad;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lx/ae;->a:Lx/ad;

    invoke-direct {p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lx/ae;

    if-eqz v0, :cond_16

    check-cast p1, Lx/ae;

    invoke-virtual {p1}, Lx/ae;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lx/ae;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public hashCode()I
    .registers 2

    invoke-virtual {p0}, Lx/ae;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
