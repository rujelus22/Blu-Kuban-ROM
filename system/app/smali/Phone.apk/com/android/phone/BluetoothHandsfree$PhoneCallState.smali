.class final enum Lcom/android/phone/BluetoothHandsfree$PhoneCallState;
.super Ljava/lang/Enum;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PhoneCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/BluetoothHandsfree$PhoneCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

.field public static final enum CONF_CALL:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

.field public static final enum IDLE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

.field public static final enum SINGLE_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

.field public static final enum THRWAY_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

.field public static final enum WAITING_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4306
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->IDLE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    .line 4307
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    const-string v1, "SINGLE_ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    .line 4308
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    const-string v1, "WAITING_ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->WAITING_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    .line 4309
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    const-string v1, "THRWAY_ACTIVE"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    .line 4310
    new-instance v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    const-string v1, "CONF_CALL"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->CONF_CALL:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    .line 4305
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    sget-object v1, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->IDLE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->WAITING_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->CONF_CALL:Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->$VALUES:[Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

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
    .line 4305
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/BluetoothHandsfree$PhoneCallState;
    .registers 2
    .parameter

    .prologue
    .line 4305
    const-class v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/BluetoothHandsfree$PhoneCallState;
    .registers 1

    .prologue
    .line 4305
    sget-object v0, Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->$VALUES:[Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    invoke-virtual {v0}, [Lcom/android/phone/BluetoothHandsfree$PhoneCallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/BluetoothHandsfree$PhoneCallState;

    return-object v0
.end method
