.class public Lcom/arcsoft/widget/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final COMMERICAL_VERSION:I = 0x0

.field public static final CopyFileNameArray:[[Ljava/lang/String; = null

.field public static final SCREEN_1280X720:I = 0x8

.field public static final SCREEN_1280X800:I = 0x4

.field public static final SCREEN_800X480:I = 0x2

.field public static final SCREEN_RESOLUTION:I = 0x2

.field public static final SINGLE_ZOOM_ENABLE:Z = false

.field public static final SPECIAL_VERSION:I = 0x1

.field public static final TILT_ZOOM_ENABLE:Z = false

.field public static final VERSION_CODE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "loading.bmp"

    aput-object v2, v1, v4

    const-string v2, "icon/loading.bmp"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "error.bmp"

    aput-object v2, v1, v4

    const-string v2, "icon/error.bmp"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "CAMERA_QUICKVIEW_PLAYBTN1.BMP"

    aput-object v2, v1, v4

    const-string v2, "icon/CAMERA_QUICKVIEW_PLAYBTN1.BMP"

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "CAMERA_QUICKVIEW_PLAYBTN1_MASK.BMP"

    aput-object v3, v2, v4

    const-string v3, "icon/CAMERA_QUICKVIEW_PLAYBTN1_MASK.BMP"

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v4

    const-string v3, ""

    aput-object v3, v2, v5

    aput-object v2, v0, v1

    sput-object v0, Lcom/arcsoft/widget/Constants;->CopyFileNameArray:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
