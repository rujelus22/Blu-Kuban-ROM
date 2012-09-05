.class public final enum Lcom/cisco/anyconnect/vpn/jni/OperatingMode;
.super Ljava/lang/Enum;
.source "OperatingMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/cisco/anyconnect/vpn/jni/OperatingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum AlwaysOnVpn:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum AutomaticHeadendSelection:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum DisconnectAllowed:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum EventModel:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum FIPS:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum NetworkIssue:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum None:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum OnTrustedNetwork:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum Quarantined:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum StartBeforeLogon:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

.field public static final enum TrustedNetworkDetection:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v1, "None"

    invoke-direct {v0, v1, v4, v4}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->None:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 10
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v1, "FIPS"

    invoke-direct {v0, v1, v5, v5}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->FIPS:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 11
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v1, "StartBeforeLogon"

    invoke-direct {v0, v1, v6, v6}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->StartBeforeLogon:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 12
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v1, "EventModel"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->EventModel:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 13
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v1, "TrustedNetworkDetection"

    invoke-direct {v0, v1, v7, v8}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->TrustedNetworkDetection:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 14
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v1, "AlwaysOnVpn"

    const/4 v2, 0x5

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->AlwaysOnVpn:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 15
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v1, "NetworkIssue"

    const/4 v2, 0x6

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->NetworkIssue:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 16
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v1, "Quarantined"

    const/4 v2, 0x7

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->Quarantined:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 17
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v1, "AutomaticHeadendSelection"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v8, v2}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->AutomaticHeadendSelection:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 18
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v1, "DisconnectAllowed"

    const/16 v2, 0x9

    const/16 v3, 0x100

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->DisconnectAllowed:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 19
    new-instance v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    const-string v1, "OnTrustedNetwork"

    const/16 v2, 0xa

    const/16 v3, 0x800

    invoke-direct {v0, v1, v2, v3}, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->OnTrustedNetwork:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    .line 7
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->None:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->FIPS:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->StartBeforeLogon:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->EventModel:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->TrustedNetworkDetection:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->AlwaysOnVpn:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->NetworkIssue:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->Quarantined:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->AutomaticHeadendSelection:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    aput-object v1, v0, v8

    const/16 v1, 0x9

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->DisconnectAllowed:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->OnTrustedNetwork:Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->mValue:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cisco/anyconnect/vpn/jni/OperatingMode;
    .registers 2
    .parameter

    .prologue
    .line 7
    const-class v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    return-object v0
.end method

.method public static values()[Lcom/cisco/anyconnect/vpn/jni/OperatingMode;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->$VALUES:[Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    invoke-virtual {v0}, [Lcom/cisco/anyconnect/vpn/jni/OperatingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cisco/anyconnect/vpn/jni/OperatingMode;

    return-object v0
.end method
