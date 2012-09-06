.class public Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageStatistics"
.end annotation


# instance fields
.field public final averageContrast:F

.field public final averageintensity:F

.field public final contrastStdDev:F

.field public final intensityStdDev:F

.field public final maxContrast:F

.field public final maxintensity:F

.field public final minContrast:F

.field public final minIntensity:F

.field final synthetic this$0:Lcom/google/android/apps/unveil/env/ImageUtils;


# direct methods
.method protected constructor <init>(Lcom/google/android/apps/unveil/env/ImageUtils;[F)V
    .registers 6
    .parameter
    .parameter "rawStatistics"

    .prologue
    .line 572
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->this$0:Lcom/google/android/apps/unveil/env/ImageUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    aget v2, p2, v0

    iput v2, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->minIntensity:F

    .line 575
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget v2, p2, v1

    iput v2, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->averageintensity:F

    .line 576
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget v2, p2, v0

    iput v2, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->maxintensity:F

    .line 577
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget v2, p2, v1

    iput v2, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->intensityStdDev:F

    .line 579
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget v2, p2, v0

    iput v2, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->minContrast:F

    .line 580
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget v2, p2, v1

    iput v2, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->averageContrast:F

    .line 581
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    aget v2, p2, v0

    iput v2, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->maxContrast:F

    .line 582
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    aget v2, p2, v1

    iput v2, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->contrastStdDev:F

    .line 583
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->minIntensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->averageintensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->maxintensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->intensityStdDev:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Grad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->minContrast:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->averageContrast:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->maxContrast:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/unveil/env/ImageUtils$ImageStatistics;->contrastStdDev:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
