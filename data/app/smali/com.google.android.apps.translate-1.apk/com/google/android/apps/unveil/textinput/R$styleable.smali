.class public final Lcom/google/android/apps/unveil/textinput/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/textinput/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final HandwritingOverlayView:[I = null

.field public static final HandwritingOverlayView_handwritingPenDownColor:I = 0x2

.field public static final HandwritingOverlayView_handwritingPenUpColor:I = 0x3

.field public static final HandwritingOverlayView_handwritingStrokeColor:I = 0x0

.field public static final HandwritingOverlayView_handwritingStrokeColorRecognized:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4765
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/apps/unveil/textinput/R$styleable;->HandwritingOverlayView:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x1t 0x7ft
        0x1t 0x0t 0x1t 0x7ft
        0x2t 0x0t 0x1t 0x7ft
        0x3t 0x0t 0x1t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
