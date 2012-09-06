.class public final enum Lcom/google/android/apps/plus/hangout/MeetingMember$Status;
.super Ljava/lang/Enum;
.source "MeetingMember.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/MeetingMember;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/hangout/MeetingMember$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

.field public static final enum CONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

.field public static final enum CONNECTING:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

.field public static final enum DISCONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->DISCONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    .line 17
    new-instance v0, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTING:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    .line 18
    new-instance v0, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    sget-object v1, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->DISCONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTING:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->CONNECTED:Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->$VALUES:[Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/MeetingMember$Status;
    .registers 2
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/MeetingMember$Status;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->$VALUES:[Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/MeetingMember$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/MeetingMember$Status;

    return-object v0
.end method
