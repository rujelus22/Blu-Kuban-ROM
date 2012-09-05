.class public final enum Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;
.super Ljava/lang/Enum;
.source "ConnectPromptInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectPromptType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public static final enum CERTIFICATE:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public static final enum CREDENTIALS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public static final enum MANUAL_IMPORT_PKCS12:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public static final enum PROXY:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

.field public static final enum STATUS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string v1, "CERTIFICATE"

    invoke-direct {v0, v1, v2}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->CERTIFICATE:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 8
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string v1, "CREDENTIALS"

    invoke-direct {v0, v1, v3}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->CREDENTIALS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 9
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string v1, "PROXY"

    invoke-direct {v0, v1, v4}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->PROXY:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 10
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string v1, "MANUAL_IMPORT_PKCS12"

    invoke-direct {v0, v1, v5}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->MANUAL_IMPORT_PKCS12:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 11
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    const-string v1, "STATUS"

    invoke-direct {v0, v1, v6}, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->STATUS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    .line 5
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->CERTIFICATE:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->CREDENTIALS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->PROXY:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->MANUAL_IMPORT_PKCS12:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->STATUS:Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;
    .registers 2
    .parameter

    .prologue
    .line 5
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    return-object v0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;
    .registers 1

    .prologue
    .line 5
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/ConnectPromptInfo$ConnectPromptType;

    return-object v0
.end method
