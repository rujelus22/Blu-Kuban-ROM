.class final enum Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;
.super Ljava/lang/Enum;
.source "GCommApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/GCommApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WakeLockType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

.field public static final enum CPU:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

.field public static final enum NONE:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

.field public static final enum SCREEN:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 491
    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->NONE:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    const-string v1, "CPU"

    invoke-direct {v0, v1, v3}, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->CPU:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    new-instance v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    const-string v1, "SCREEN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->SCREEN:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    .line 490
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->NONE:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->CPU:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->SCREEN:Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->$VALUES:[Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

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
    .line 490
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;
    .registers 2
    .parameter

    .prologue
    .line 490
    const-class v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;
    .registers 1

    .prologue
    .line 490
    sget-object v0, Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->$VALUES:[Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    invoke-virtual {v0}, [Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/hangout/GCommApp$WakeLockType;

    return-object v0
.end method
