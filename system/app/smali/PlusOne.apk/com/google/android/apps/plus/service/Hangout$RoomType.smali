.class public final enum Lcom/google/android/apps/plus/service/Hangout$RoomType;
.super Ljava/lang/Enum;
.source "Hangout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/service/Hangout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoomType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/service/Hangout$RoomType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/service/Hangout$RoomType;

.field public static final enum CONSUMER:Lcom/google/android/apps/plus/service/Hangout$RoomType;

.field public static final enum UNKNOWN:Lcom/google/android/apps/plus/service/Hangout$RoomType;

.field public static final enum WITH_EXTRAS:Lcom/google/android/apps/plus/service/Hangout$RoomType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$RoomType;

    const-string v1, "CONSUMER"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/service/Hangout$RoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$RoomType;->CONSUMER:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    .line 153
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$RoomType;

    const-string v1, "WITH_EXTRAS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/service/Hangout$RoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$RoomType;->WITH_EXTRAS:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    .line 154
    new-instance v0, Lcom/google/android/apps/plus/service/Hangout$RoomType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/service/Hangout$RoomType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$RoomType;->UNKNOWN:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    .line 151
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/plus/service/Hangout$RoomType;

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$RoomType;->CONSUMER:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$RoomType;->WITH_EXTRAS:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/service/Hangout$RoomType;->UNKNOWN:Lcom/google/android/apps/plus/service/Hangout$RoomType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/service/Hangout$RoomType;->$VALUES:[Lcom/google/android/apps/plus/service/Hangout$RoomType;

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
    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/service/Hangout$RoomType;
    .registers 2
    .parameter

    .prologue
    .line 151
    const-class v0, Lcom/google/android/apps/plus/service/Hangout$RoomType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/service/Hangout$RoomType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/service/Hangout$RoomType;
    .registers 1

    .prologue
    .line 151
    sget-object v0, Lcom/google/android/apps/plus/service/Hangout$RoomType;->$VALUES:[Lcom/google/android/apps/plus/service/Hangout$RoomType;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/service/Hangout$RoomType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/service/Hangout$RoomType;

    return-object v0
.end method
