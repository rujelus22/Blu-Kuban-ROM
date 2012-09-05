.class public final enum Lcom/cooliris/media/GridInputProcessor$GestureType;
.super Ljava/lang/Enum;
.source "GridInputProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/GridInputProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cooliris/media/GridInputProcessor$GestureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cooliris/media/GridInputProcessor$GestureType;

.field public static final enum FINGER_ZOOM:Lcom/cooliris/media/GridInputProcessor$GestureType;

.field public static final enum GESTURE_NONE:Lcom/cooliris/media/GridInputProcessor$GestureType;

.field public static final enum MOTION_TILT:Lcom/cooliris/media/GridInputProcessor$GestureType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    new-instance v0, Lcom/cooliris/media/GridInputProcessor$GestureType;

    const-string v1, "GESTURE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/cooliris/media/GridInputProcessor$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/GridInputProcessor$GestureType;->GESTURE_NONE:Lcom/cooliris/media/GridInputProcessor$GestureType;

    new-instance v0, Lcom/cooliris/media/GridInputProcessor$GestureType;

    const-string v1, "FINGER_ZOOM"

    invoke-direct {v0, v1, v3}, Lcom/cooliris/media/GridInputProcessor$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/GridInputProcessor$GestureType;->FINGER_ZOOM:Lcom/cooliris/media/GridInputProcessor$GestureType;

    new-instance v0, Lcom/cooliris/media/GridInputProcessor$GestureType;

    const-string v1, "MOTION_TILT"

    invoke-direct {v0, v1, v4}, Lcom/cooliris/media/GridInputProcessor$GestureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cooliris/media/GridInputProcessor$GestureType;->MOTION_TILT:Lcom/cooliris/media/GridInputProcessor$GestureType;

    .line 132
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/cooliris/media/GridInputProcessor$GestureType;

    sget-object v1, Lcom/cooliris/media/GridInputProcessor$GestureType;->GESTURE_NONE:Lcom/cooliris/media/GridInputProcessor$GestureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cooliris/media/GridInputProcessor$GestureType;->FINGER_ZOOM:Lcom/cooliris/media/GridInputProcessor$GestureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cooliris/media/GridInputProcessor$GestureType;->MOTION_TILT:Lcom/cooliris/media/GridInputProcessor$GestureType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/cooliris/media/GridInputProcessor$GestureType;->$VALUES:[Lcom/cooliris/media/GridInputProcessor$GestureType;

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
    .line 132
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cooliris/media/GridInputProcessor$GestureType;
    .registers 2
    .parameter

    .prologue
    .line 132
    const-class v0, Lcom/cooliris/media/GridInputProcessor$GestureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/GridInputProcessor$GestureType;

    return-object v0
.end method

.method public static values()[Lcom/cooliris/media/GridInputProcessor$GestureType;
    .registers 1

    .prologue
    .line 132
    sget-object v0, Lcom/cooliris/media/GridInputProcessor$GestureType;->$VALUES:[Lcom/cooliris/media/GridInputProcessor$GestureType;

    invoke-virtual {v0}, [Lcom/cooliris/media/GridInputProcessor$GestureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cooliris/media/GridInputProcessor$GestureType;

    return-object v0
.end method
