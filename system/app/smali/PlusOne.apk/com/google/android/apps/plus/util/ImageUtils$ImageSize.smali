.class public final enum Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;
.super Ljava/lang/Enum;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/util/ImageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

.field public static final enum EXTRA_SMALL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

.field public static final enum NORMAL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

.field public static final enum SMALL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    const-string v1, "EXTRA_SMALL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->EXTRA_SMALL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    .line 98
    new-instance v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->SMALL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    .line 99
    new-instance v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->NORMAL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    sget-object v1, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->EXTRA_SMALL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->SMALL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->NORMAL:Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->$VALUES:[Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

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
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;
    .registers 2
    .parameter

    .prologue
    .line 96
    const-class v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->$VALUES:[Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/util/ImageUtils$ImageSize;

    return-object v0
.end method
