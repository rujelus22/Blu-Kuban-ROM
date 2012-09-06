.class Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quad;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/multiwaveview/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Quad"
.end annotation


# static fields
.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quad$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quad$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quad;->easeIn:Landroid/animation/TimeInterpolator;

    .line 53
    new-instance v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quad$2;

    invoke-direct {v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quad$2;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    .line 59
    new-instance v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quad$3;

    invoke-direct {v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quad$3;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quad;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method
