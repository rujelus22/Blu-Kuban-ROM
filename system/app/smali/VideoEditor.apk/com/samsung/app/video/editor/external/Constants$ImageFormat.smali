.class public Lcom/samsung/app/video/editor/external/Constants$ImageFormat;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageFormat"
.end annotation


# static fields
.field public static final IC_FORMAT_MAX:I = 0x6

.field public static final IC_FORMAT_NONE:I = 0x0

.field public static final IC_FORMAT_RGB565:I = 0x1

.field public static final IC_FORMAT_RGB888:I = 0x2

.field public static final IC_FORMAT_YCbCr:I = 0x4

.field public static final IC_FORMAT_YCbCr420_FRAME_PK:I = 0x5

.field public static final IC_FORMAT_YCbCr420_lp:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
