.class public Lcom/google/android/maps/driveabout/vector/bV;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/ce;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/ce;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bV;->a:Lcom/google/android/maps/driveabout/vector/ce;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    const-string v0, "NativeAllocator"

    invoke-static {v0, p1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->d()V

    invoke-static {}, Laf/l;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bV;->a:Lcom/google/android/maps/driveabout/vector/ce;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ce;->b(Z)V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method


# virtual methods
.method a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5

    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const-string v0, "OutOfMemory in createBitmap"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bV;->a(Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4
.end method

.method a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_2
    array-length v1, p1

    invoke-static {p1, v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_6} :catch_8

    move-result-object v0

    :goto_7
    return-object v0

    :catch_8
    move-exception v0

    const-string v0, "OutOfMemory in decodeByteArray"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bV;->a(Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v2, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method a(I)Ljava/nio/ByteBuffer;
    .registers 3

    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const-string v0, "OutOfMemory in allocateDirectByteBuffer"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bV;->a(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_4
.end method
