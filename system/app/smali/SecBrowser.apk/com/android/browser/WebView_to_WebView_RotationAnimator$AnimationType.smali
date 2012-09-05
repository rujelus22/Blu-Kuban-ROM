.class final enum Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;
.super Ljava/lang/Enum;
.source "WebView_to_WebView_RotationAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/WebView_to_WebView_RotationAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

.field public static final enum ROTATE_ON_Y_AXIS_ANIMATION:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

.field public static final enum SLIDE_LEFT_ANIMATION_2D:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

.field public static final enum SLIDE_LEFT_ANIMATION_3D:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    const-string v1, "SLIDE_LEFT_ANIMATION_2D"

    invoke-direct {v0, v1, v2}, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;->SLIDE_LEFT_ANIMATION_2D:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    .line 59
    new-instance v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    const-string v1, "ROTATE_ON_Y_AXIS_ANIMATION"

    invoke-direct {v0, v1, v3}, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;->ROTATE_ON_Y_AXIS_ANIMATION:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    .line 60
    new-instance v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    const-string v1, "SLIDE_LEFT_ANIMATION_3D"

    invoke-direct {v0, v1, v4}, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;->SLIDE_LEFT_ANIMATION_3D:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    .line 57
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    sget-object v1, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;->SLIDE_LEFT_ANIMATION_2D:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;->ROTATE_ON_Y_AXIS_ANIMATION:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;->SLIDE_LEFT_ANIMATION_3D:Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;->$VALUES:[Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;
    .registers 2
    .parameter

    .prologue
    .line 57
    const-class v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    return-object v0
.end method

.method public static values()[Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;
    .registers 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;->$VALUES:[Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    invoke-virtual {v0}, [Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/browser/WebView_to_WebView_RotationAnimator$AnimationType;

    return-object v0
.end method
