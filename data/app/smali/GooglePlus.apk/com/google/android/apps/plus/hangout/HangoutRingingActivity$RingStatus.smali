.class final enum Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;
.super Ljava/lang/Enum;
.source "HangoutRingingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutRingingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

.field public static final enum ACCEPTED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

.field public static final enum IGNORED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

.field public static final enum TIMED_OUT:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    const-string v1, "ACCEPTED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->ACCEPTED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    .line 72
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    const-string v1, "IGNORED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->IGNORED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    .line 73
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    const-string v1, "TIMED_OUT"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->TIMED_OUT:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->ACCEPTED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->IGNORED:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->TIMED_OUT:Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->$VALUES:[Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

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
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 70
    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;
    .registers 1

    .prologue
    .line 70
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->$VALUES:[Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/HangoutRingingActivity$RingStatus;

    return-object v0
.end method
