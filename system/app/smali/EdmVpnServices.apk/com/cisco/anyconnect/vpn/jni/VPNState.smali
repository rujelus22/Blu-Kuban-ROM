.class public final enum Lcom/cisco/anyconnect/vpn/jni/VPNState;
.super Ljava/lang/Enum;
.source "VPNState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cisco/anyconnect/vpn/jni/VPNState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum CONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum DISCONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum OPENPAUSED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum PAUSING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

.field public static final enum RECONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 7
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 8
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v1, "RECONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->RECONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 9
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v6}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 10
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 11
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v1, "PAUSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->PAUSING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 12
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    const-string v1, "OPENPAUSED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/VPNState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->OPENPAUSED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    .line 4
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/cisco/anyconnect/vpn/jni/VPNState;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->CONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->RECONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/VPNState;->DISCONNECTED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->PAUSING:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/VPNState;->OPENPAUSED:Lcom/cisco/anyconnect/vpn/jni/VPNState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/VPNState;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/VPNState;
    .registers 2
    .parameter

    .prologue
    .line 4
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;

    return-object v0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/VPNState;
    .registers 1

    .prologue
    .line 4
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/VPNState;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/VPNState;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/VPNState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/VPNState;

    return-object v0
.end method
