.class public final enum Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;
.super Ljava/lang/Enum;
.source "MotionPhoto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/MotionPhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FLAG_MOTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BG_LINEAR_PAN:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

.field public static final enum BG_RADIAL_PAN:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

.field private static final synthetic ENUM$VALUES:[Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

.field public static final enum FG_GHOST:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

.field public static final enum FG_SPEED_LINE:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    const-string v1, "BG_LINEAR_PAN"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->BG_LINEAR_PAN:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    .line 41
    new-instance v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    const-string v1, "BG_RADIAL_PAN"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->BG_RADIAL_PAN:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    .line 42
    new-instance v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    const-string v1, "FG_GHOST"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->FG_GHOST:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    .line 43
    new-instance v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    const-string v1, "FG_SPEED_LINE"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->FG_SPEED_LINE:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    sget-object v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->BG_LINEAR_PAN:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->BG_RADIAL_PAN:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->FG_GHOST:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->FG_SPEED_LINE:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->ENUM$VALUES:[Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->ENUM$VALUES:[Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    array-length v1, v0

    new-array v2, v1, [Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
