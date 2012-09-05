.class public final enum Lcom/cisco/anyconnect/vpn/jni/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cisco/anyconnect/vpn/jni/MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/MessageType;

.field public static final enum MsgType_Error:Lcom/cisco/anyconnect/vpn/jni/MessageType;

.field public static final enum MsgType_Info:Lcom/cisco/anyconnect/vpn/jni/MessageType;

.field public static final enum MsgType_Status:Lcom/cisco/anyconnect/vpn/jni/MessageType;

.field public static final enum MsgType_Warn:Lcom/cisco/anyconnect/vpn/jni/MessageType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;

    const-string v1, "MsgType_Error"

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Error:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    .line 6
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;

    const-string v1, "MsgType_Warn"

    invoke-direct {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/jni/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Warn:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    .line 7
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;

    const-string v1, "MsgType_Info"

    invoke-direct {v0, v1, v4}, Lcom/cisco/anyconnect/vpn/jni/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Info:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    .line 8
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;

    const-string v1, "MsgType_Status"

    invoke-direct {v0, v1, v5}, Lcom/cisco/anyconnect/vpn/jni/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Status:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/cisco/anyconnect/vpn/jni/MessageType;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Error:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Warn:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Info:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/MessageType;->MsgType_Status:Lcom/cisco/anyconnect/vpn/jni/MessageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/MessageType;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/MessageType;
    .registers 2
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;

    return-object v0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/MessageType;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/MessageType;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/MessageType;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/MessageType;

    return-object v0
.end method
