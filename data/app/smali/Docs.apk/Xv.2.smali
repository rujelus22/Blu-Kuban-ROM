.class public LXv;
.super Ljava/lang/Object;
.source "BitmapUtilitiesImpl.java"

# interfaces
.implements LXt;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)LXu;
    .registers 5
    .parameter

    .prologue
    .line 18
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 19
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 20
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 22
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 23
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 24
    new-instance v2, LXu;

    invoke-direct {v2, v1, v0}, LXu;-><init>(II)V

    return-object v2
.end method
