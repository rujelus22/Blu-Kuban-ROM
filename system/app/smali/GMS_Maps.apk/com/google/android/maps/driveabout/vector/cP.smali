.class public Lcom/google/android/maps/driveabout/vector/cp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/vector/cy;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/vector/cy;)V
    .registers 2
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cp;->a:Lcom/google/android/maps/driveabout/vector/cy;

    .line 23
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 65
    const-string v0, "NativeAllocator"

    invoke-static {v0, p1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->d()V

    .line 67
    invoke-static {}, Lcom/google/googlenav/common/j;->b()V

    .line 68
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cp;->a:Lcom/google/android/maps/driveabout/vector/cy;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cy;->b(Z)V

    .line 69
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 74
    const-wide/16 v0, 0xc8

    :try_start_16
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 78
    :goto_19
    return-void

    .line 75
    :catch_1a
    move-exception v0

    goto :goto_19
.end method


# virtual methods
.method a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 34
    :goto_4
    return-object v0

    .line 32
    :catch_5
    move-exception v0

    .line 33
    const-string v0, "OutOfMemory in createBitmap"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cp;->a(Ljava/lang/String;)V

    .line 34
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_4
.end method

.method a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 44
    const/4 v0, 0x0

    :try_start_2
    array-length v1, p1

    invoke-static {p1, v0, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_6} :catch_8

    move-result-object v0

    .line 47
    :goto_7
    return-object v0

    .line 45
    :catch_8
    move-exception v0

    .line 46
    const-string v0, "OutOfMemory in decodeByteArray"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cp;->a(Ljava/lang/String;)V

    .line 47
    array-length v0, p1

    invoke-static {p1, v2, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_7
.end method

.method a(I)Ljava/nio/ByteBuffer;
    .registers 3
    .parameter

    .prologue
    .line 57
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 60
    :goto_4
    return-object v0

    .line 58
    :catch_5
    move-exception v0

    .line 59
    const-string v0, "OutOfMemory in allocateDirectByteBuffer"

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cp;->a(Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_4
.end method
