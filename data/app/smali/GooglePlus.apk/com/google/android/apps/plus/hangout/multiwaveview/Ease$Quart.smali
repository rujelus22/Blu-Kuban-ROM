.class Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quart;
.super Ljava/lang/Object;
.source "Ease.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/multiwaveview/Ease;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Quart"
.end annotation


# static fields
.field public static final easeIn:Landroid/animation/TimeInterpolator;

.field public static final easeInOut:Landroid/animation/TimeInterpolator;

.field public static final easeOut:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    new-instance v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quart$1;

    invoke-direct {v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quart$1;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quart;->easeIn:Landroid/animation/TimeInterpolator;

    .line 76
    new-instance v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quart$2;

    invoke-direct {v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quart$2;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    .line 82
    new-instance v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quart$3;

    invoke-direct {v0}, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quart$3;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/hangout/multiwaveview/Ease$Quart;->easeInOut:Landroid/animation/TimeInterpolator;

    return-void
.end method
