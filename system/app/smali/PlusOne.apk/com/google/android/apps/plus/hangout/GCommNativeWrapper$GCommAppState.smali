.class public final enum Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
.super Ljava/lang/Enum;
.source "GCommNativeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GCommAppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

.field public static final enum ENTERING_MEETING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

.field public static final enum IN_MEETING_WITHOUT_MEDIA:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

.field public static final enum IN_MEETING_WITH_MEDIA:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

.field public static final enum NONE:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

.field public static final enum SIGNED_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

.field public static final enum SIGNING_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

.field public static final enum START:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->NONE:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    .line 49
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    const-string v1, "START"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->START:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    .line 50
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    const-string v1, "SIGNING_IN"

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->SIGNING_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    .line 51
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    const-string v1, "SIGNED_IN"

    invoke-direct {v0, v1, v6}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->SIGNED_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    .line 52
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    const-string v1, "ENTERING_MEETING"

    invoke-direct {v0, v1, v7}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->ENTERING_MEETING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    .line 53
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    const-string v1, "IN_MEETING_WITHOUT_MEDIA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->IN_MEETING_WITHOUT_MEDIA:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    .line 54
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    const-string v1, "IN_MEETING_WITH_MEDIA"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->IN_MEETING_WITH_MEDIA:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->NONE:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->START:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->SIGNING_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->SIGNED_IN:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->ENTERING_MEETING:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->IN_MEETING_WITHOUT_MEDIA:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->IN_MEETING_WITH_MEDIA:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->$VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    .registers 2
    .parameter

    .prologue
    .line 47
    const-class v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->$VALUES:[Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/GCommNativeWrapper$GCommAppState;

    return-object v0
.end method
