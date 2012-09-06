.class public Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/sensors/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PictureQuality"
.end annotation


# static fields
.field public static final HIGH_QUALITY:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

.field public static final NORMAL_QUALITY:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

.field public static final PRIME_QUALITY:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;


# instance fields
.field public final desiredHeight:I

.field public final desiredWidth:I

.field public final jpegQuality:I

.field public final pixelCount:I

.field public final recompressJpegQuality:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x1000

    const/16 v4, 0x64

    const/16 v3, 0x5f

    .line 153
    new-instance v0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    const/16 v1, 0x200

    const/16 v2, 0x180

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;-><init>(IIII)V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->NORMAL_QUALITY:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    .line 154
    new-instance v0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    const/16 v1, 0x640

    const/16 v2, 0x4b0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;-><init>(IIII)V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->HIGH_QUALITY:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    .line 156
    new-instance v0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    invoke-direct {v0, v5, v5, v3, v4}, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;-><init>(IIII)V

    sput-object v0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->PRIME_QUALITY:Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;

    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 6
    .parameter "desiredWidth"
    .parameter "desiredHeight"
    .parameter "jpegQuality"
    .parameter "recompressJpegQuality"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput p1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->desiredWidth:I

    .line 170
    iput p2, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->desiredHeight:I

    .line 171
    mul-int v0, p1, p2

    iput v0, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->pixelCount:I

    .line 172
    iput p3, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->jpegQuality:I

    .line 173
    iput p4, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->recompressJpegQuality:I

    .line 174
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[desiredWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->desiredWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "desiredHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->desiredHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jpegQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->jpegQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recompressJpegQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/sensors/CameraManager$PictureQuality;->recompressJpegQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
