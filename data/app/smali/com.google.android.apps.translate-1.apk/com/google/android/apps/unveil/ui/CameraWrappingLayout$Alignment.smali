.class public final enum Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;
.super Ljava/lang/Enum;
.source "CameraWrappingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/ui/CameraWrappingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

.field public static final enum BOTTOM:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

.field public static final enum CENTER:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

.field public static final enum TOP:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;->TOP:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    .line 48
    new-instance v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;->CENTER:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    .line 53
    new-instance v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;->BOTTOM:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    sget-object v1, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;->TOP:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;->CENTER:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;->BOTTOM:Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;->$VALUES:[Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;
    .registers 2
    .parameter "name"

    .prologue
    .line 39
    const-class v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;->$VALUES:[Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    invoke-virtual {v0}, [Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/unveil/ui/CameraWrappingLayout$Alignment;

    return-object v0
.end method
