.class final enum Lcom/android/musicfx/ControlPanelEffect$ControlMode;
.super Ljava/lang/Enum;
.source "ControlPanelEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicfx/ControlPanelEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ControlMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/musicfx/ControlPanelEffect$ControlMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/musicfx/ControlPanelEffect$ControlMode;

.field public static final enum CONTROL_EFFECTS:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

.field public static final enum CONTROL_PREFERENCES:Lcom/android/musicfx/ControlPanelEffect$ControlMode;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    const-string v1, "CONTROL_EFFECTS"

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ControlPanelEffect$ControlMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_EFFECTS:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    .line 58
    new-instance v0, Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    const-string v1, "CONTROL_PREFERENCES"

    invoke-direct {v0, v1, v3}, Lcom/android/musicfx/ControlPanelEffect$ControlMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_PREFERENCES:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    sget-object v1, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_EFFECTS:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->CONTROL_PREFERENCES:Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->$VALUES:[Lcom/android/musicfx/ControlPanelEffect$ControlMode;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .registers 2
    .parameter

    .prologue
    .line 48
    const-class v0, Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    return-object v0
.end method

.method public static values()[Lcom/android/musicfx/ControlPanelEffect$ControlMode;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/musicfx/ControlPanelEffect$ControlMode;->$VALUES:[Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    invoke-virtual {v0}, [Lcom/android/musicfx/ControlPanelEffect$ControlMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/musicfx/ControlPanelEffect$ControlMode;

    return-object v0
.end method
