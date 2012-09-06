.class public Lcom/google/android/apps/unveil/env/PictureFactory$ImageDecodingException;
.super Ljava/lang/Exception;
.source "PictureFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/PictureFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageDecodingException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "reason"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 67
    return-void
.end method
