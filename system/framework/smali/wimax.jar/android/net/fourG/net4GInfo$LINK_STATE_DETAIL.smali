.class public final enum Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;
.super Ljava/lang/Enum;
.source "net4GInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/fourG/net4GInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LINK_STATE_DETAIL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_3WAY_HANDSHAKE:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_ABORTED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_CAPABILITIES_NEGOTIATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_CONNECTION_FAILURE:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_DEREGISTRATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_DHCP:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_DL_SYNC:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_EAP_AUTHENTICATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_HANDOVER_RANGING:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_HANDOVER_SYNC:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_IDLE:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_NOT_CONNECTED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_OPERATIONAL:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_RANGING:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_REGISTRATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_SLEEP:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_UL_ACQUISITION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

.field public static final enum LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 272
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_DL_SYNC"

    invoke-direct {v0, v1, v3}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_DL_SYNC:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 273
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_HANDOVER_SYNC"

    invoke-direct {v0, v1, v4}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_HANDOVER_SYNC:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 274
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_UL_ACQUISITION"

    invoke-direct {v0, v1, v5}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UL_ACQUISITION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 275
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_RANGING"

    invoke-direct {v0, v1, v6}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_RANGING:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 276
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_HANDOVER_RANGING"

    invoke-direct {v0, v1, v7}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_HANDOVER_RANGING:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 277
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_CAPABILITIES_NEGOTIATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_CAPABILITIES_NEGOTIATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 278
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_EAP_AUTHENTICATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_EAP_AUTHENTICATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 279
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_3WAY_HANDSHAKE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_3WAY_HANDSHAKE:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 280
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_REGISTRATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_REGISTRATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 281
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_DHCP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_DHCP:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 282
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_OPERATIONAL"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_OPERATIONAL:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 283
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_SLEEP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_SLEEP:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 284
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_IDLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_IDLE:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 285
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_DEREGISTRATION"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_DEREGISTRATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 286
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_CONNECTION_FAILURE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_CONNECTION_FAILURE:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 287
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_ABORTED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_ABORTED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 288
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_NOT_CONNECTED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_NOT_CONNECTED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 289
    new-instance v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    const-string v1, "LINK_ST_DETAIL_UNDEFINED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    .line 271
    const/16 v0, 0x12

    new-array v0, v0, [Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    sget-object v1, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_DL_SYNC:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_HANDOVER_SYNC:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UL_ACQUISITION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_RANGING:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_HANDOVER_RANGING:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_CAPABILITIES_NEGOTIATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_EAP_AUTHENTICATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_3WAY_HANDSHAKE:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_REGISTRATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_DHCP:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_OPERATIONAL:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_SLEEP:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_IDLE:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_DEREGISTRATION:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_CONNECTION_FAILURE:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_ABORTED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_NOT_CONNECTED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->LINK_ST_DETAIL_UNDEFINED:Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->$VALUES:[Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

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
    .line 271
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;
    .registers 2
    .parameter "name"

    .prologue
    .line 271
    const-class v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    return-object v0
.end method

.method public static values()[Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;
    .registers 1

    .prologue
    .line 271
    sget-object v0, Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->$VALUES:[Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    invoke-virtual {v0}, [Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/fourG/net4GInfo$LINK_STATE_DETAIL;

    return-object v0
.end method
