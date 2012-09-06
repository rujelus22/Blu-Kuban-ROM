.class public final enum Lcom/google/android/apps/plus/hangout/HangoutTile$State;
.super Ljava/lang/Enum;
.source "HangoutTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/HangoutTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/hangout/HangoutTile$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/hangout/HangoutTile$State;

.field public static final enum ENTERING_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

.field public static final enum IN_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

.field public static final enum IN_MEETING_WITH_FILM_STRIP:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

.field public static final enum IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

.field public static final enum READY_TO_LAUNCH_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

.field public static final enum SIGNING_IN:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

.field public static final enum SIGNIN_ERROR:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

.field public static final enum START:Lcom/google/android/apps/plus/hangout/HangoutTile$State;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->START:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 68
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    const-string v1, "SIGNING_IN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNING_IN:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 69
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    const-string v1, "SIGNIN_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNIN_ERROR:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 70
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    const-string v1, "READY_TO_LAUNCH_MEETING"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->READY_TO_LAUNCH_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 71
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    const-string v1, "ENTERING_MEETING"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ENTERING_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 72
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    const-string v1, "IN_MEETING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 75
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    const-string v1, "IN_MEETING_WITH_SELF_VIDEO_INSET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 76
    new-instance v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    const-string v1, "IN_MEETING_WITH_FILM_STRIP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/HangoutTile$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_FILM_STRIP:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    .line 66
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->START:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNING_IN:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNIN_ERROR:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->READY_TO_LAUNCH_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->ENTERING_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_FILM_STRIP:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->$VALUES:[Lcom/google/android/apps/plus/hangout/HangoutTile$State;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    .registers 2
    .parameter "name"

    .prologue
    .line 66
    const-class v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/HangoutTile$State;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->$VALUES:[Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/HangoutTile$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    return-object v0
.end method


# virtual methods
.method isInMeeting()Z
    .registers 2

    .prologue
    .line 83
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_SELF_VIDEO_INSET:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-eq p0, v0, :cond_c

    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->IN_MEETING_WITH_FILM_STRIP:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isSigningIn()Z
    .registers 2

    .prologue
    .line 79
    sget-object v0, Lcom/google/android/apps/plus/hangout/HangoutTile$State;->SIGNING_IN:Lcom/google/android/apps/plus/hangout/HangoutTile$State;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
