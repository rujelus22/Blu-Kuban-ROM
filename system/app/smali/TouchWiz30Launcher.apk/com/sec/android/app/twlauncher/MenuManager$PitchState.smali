.class final enum Lcom/sec/android/app/twlauncher/MenuManager$PitchState;
.super Ljava/lang/Enum;
.source "MenuManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/MenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PitchState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/twlauncher/MenuManager$PitchState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

.field public static final enum kIconsRaised:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

.field public static final enum kSetThreshold:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

.field public static final enum kWaitHighBound:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

.field public static final enum kWaitLowBound:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 233
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    const-string v1, "kSetThreshold"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kSetThreshold:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    const-string v1, "kWaitLowBound"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kWaitLowBound:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    const-string v1, "kIconsRaised"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kIconsRaised:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    const-string v1, "kWaitHighBound"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kWaitHighBound:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    .line 232
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    sget-object v1, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kSetThreshold:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kWaitLowBound:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kIconsRaised:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->kWaitHighBound:Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->$VALUES:[Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

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
    .line 232
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/twlauncher/MenuManager$PitchState;
    .registers 2
    .parameter

    .prologue
    .line 232
    const-class v0, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/twlauncher/MenuManager$PitchState;
    .registers 1

    .prologue
    .line 232
    sget-object v0, Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->$VALUES:[Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    invoke-virtual {v0}, [Lcom/sec/android/app/twlauncher/MenuManager$PitchState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/twlauncher/MenuManager$PitchState;

    return-object v0
.end method
