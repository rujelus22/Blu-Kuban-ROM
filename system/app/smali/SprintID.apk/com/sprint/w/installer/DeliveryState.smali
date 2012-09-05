.class public final enum Lcom/sprint/w/installer/DeliveryState;
.super Ljava/lang/Enum;
.source "DeliveryState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sprint/w/installer/DeliveryState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sprint/w/installer/DeliveryState;

.field public static final enum CANCEL_DOWNLOAD:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum CANCEL_INSTALL:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum CANCEL_TC:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum ERROR_FUNCTIONALITY_NOT_COMPLETED:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum ERROR_UNKNOWN:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum FAIL_AUTH:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum FAIL_AUTH_PIN:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum FAIL_CATALOG_PARSE:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum FAIL_CATALOG_SERVER_CONN_FAILED:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum FAIL_DELIVERY_SERVER_CONN_FAILED:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum FAIL_DOWNLOAD:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum FAIL_ERROR_FROM_DELIVERY_SERVER:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum FAIL_INSTALL:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum FAIL_INSUFFICIENT_MEMORY:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum FAIL_LOSS_DATA:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum FAIL_NETWORK_UNAVAILALBLE:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum FAIL_UNAPPROVED_PACK_DOWNLOADED:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum FAIL_UNAPPROVED_PACK_RSS:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum FAIL_UNAUTHERIZED:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum NEW_RECORD:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum REACHED_CARD_VIEW:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum REACHED_CATALOG_VIEW:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum REACHED_START_INSTALL:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum SUCCESS_DOWNLOAD:Lcom/sprint/w/installer/DeliveryState;

.field public static final enum SUCESS_INSTALL:Lcom/sprint/w/installer/DeliveryState;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "CANCEL_TC"

    const/16 v2, 0x322

    invoke-direct {v0, v1, v4, v2}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->CANCEL_TC:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "CANCEL_INSTALL"

    const/16 v2, 0x323

    invoke-direct {v0, v1, v5, v2}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->CANCEL_INSTALL:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "CANCEL_DOWNLOAD"

    const/16 v2, 0x25b

    invoke-direct {v0, v1, v6, v2}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->CANCEL_DOWNLOAD:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "SUCESS_INSTALL"

    const/16 v2, 0x320

    invoke-direct {v0, v1, v7, v2}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->SUCESS_INSTALL:Lcom/sprint/w/installer/DeliveryState;

    .line 10
    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "NEW_RECORD"

    invoke-direct {v0, v1, v8, v4}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->NEW_RECORD:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "SUCCESS_DOWNLOAD"

    const/4 v2, 0x5

    const/16 v3, 0x258

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->SUCCESS_DOWNLOAD:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "REACHED_CATALOG_VIEW"

    const/4 v2, 0x6

    const/16 v3, 0x3f1

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->REACHED_CATALOG_VIEW:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "REACHED_CARD_VIEW"

    const/4 v2, 0x7

    const/16 v3, 0x3f2

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->REACHED_CARD_VIEW:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "REACHED_START_INSTALL"

    const/16 v2, 0x8

    const/16 v3, 0x3f3

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->REACHED_START_INSTALL:Lcom/sprint/w/installer/DeliveryState;

    .line 13
    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "FAIL_INSUFFICIENT_MEMORY"

    const/16 v2, 0x9

    const/16 v3, 0x259

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_INSUFFICIENT_MEMORY:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "FAIL_LOSS_DATA"

    const/16 v2, 0xa

    const/16 v3, 0x25a

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_LOSS_DATA:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "FAIL_UNAUTHERIZED"

    const/16 v2, 0xb

    const/16 v3, 0x28b

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_UNAUTHERIZED:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "FAIL_DOWNLOAD"

    const/16 v2, 0xc

    const/16 v3, 0x28f

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_DOWNLOAD:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "FAIL_INSTALL"

    const/16 v2, 0xd

    const/16 v3, 0x324

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_INSTALL:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "FAIL_UNAPPROVED_PACK_RSS"

    const/16 v2, 0xe

    const/16 v3, 0x3e8

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_UNAPPROVED_PACK_RSS:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "FAIL_UNAPPROVED_PACK_DOWNLOADED"

    const/16 v2, 0xf

    const/16 v3, 0x3e9

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_UNAPPROVED_PACK_DOWNLOADED:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "FAIL_NETWORK_UNAVAILALBLE"

    const/16 v2, 0x10

    const/16 v3, 0x3eb

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_NETWORK_UNAVAILALBLE:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "FAIL_DELIVERY_SERVER_CONN_FAILED"

    const/16 v2, 0x11

    const/16 v3, 0x3ec

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_DELIVERY_SERVER_CONN_FAILED:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "FAIL_CATALOG_SERVER_CONN_FAILED"

    const/16 v2, 0x12

    const/16 v3, 0x3ed

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_SERVER_CONN_FAILED:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "FAIL_AUTH"

    const/16 v2, 0x13

    const/16 v3, 0x3ee

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "FAIL_CATALOG_PARSE"

    const/16 v2, 0x14

    const/16 v3, 0x3ef

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_PARSE:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "FAIL_ERROR_FROM_DELIVERY_SERVER"

    const/16 v2, 0x15

    const/16 v3, 0x3f0

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_ERROR_FROM_DELIVERY_SERVER:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "FAIL_AUTH_PIN"

    const/16 v2, 0x16

    const/16 v3, 0x3f4

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH_PIN:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "ERROR_FUNCTIONALITY_NOT_COMPLETED"

    const/16 v2, 0x17

    const/4 v3, -0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->ERROR_FUNCTIONALITY_NOT_COMPLETED:Lcom/sprint/w/installer/DeliveryState;

    new-instance v0, Lcom/sprint/w/installer/DeliveryState;

    const-string v1, "ERROR_UNKNOWN"

    const/16 v2, 0x18

    const/16 v3, 0x42d

    invoke-direct {v0, v1, v2, v3}, Lcom/sprint/w/installer/DeliveryState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->ERROR_UNKNOWN:Lcom/sprint/w/installer/DeliveryState;

    .line 4
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/sprint/w/installer/DeliveryState;

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->CANCEL_TC:Lcom/sprint/w/installer/DeliveryState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->CANCEL_INSTALL:Lcom/sprint/w/installer/DeliveryState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->CANCEL_DOWNLOAD:Lcom/sprint/w/installer/DeliveryState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->SUCESS_INSTALL:Lcom/sprint/w/installer/DeliveryState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sprint/w/installer/DeliveryState;->NEW_RECORD:Lcom/sprint/w/installer/DeliveryState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->SUCCESS_DOWNLOAD:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->REACHED_CATALOG_VIEW:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->REACHED_CARD_VIEW:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->REACHED_START_INSTALL:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->FAIL_INSUFFICIENT_MEMORY:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->FAIL_LOSS_DATA:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->FAIL_UNAUTHERIZED:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->FAIL_DOWNLOAD:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->FAIL_INSTALL:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->FAIL_UNAPPROVED_PACK_RSS:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->FAIL_UNAPPROVED_PACK_DOWNLOADED:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->FAIL_NETWORK_UNAVAILALBLE:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->FAIL_DELIVERY_SERVER_CONN_FAILED:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_SERVER_CONN_FAILED:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->FAIL_CATALOG_PARSE:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->FAIL_ERROR_FROM_DELIVERY_SERVER:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->FAIL_AUTH_PIN:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->ERROR_FUNCTIONALITY_NOT_COMPLETED:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/sprint/w/installer/DeliveryState;->ERROR_UNKNOWN:Lcom/sprint/w/installer/DeliveryState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sprint/w/installer/DeliveryState;->$VALUES:[Lcom/sprint/w/installer/DeliveryState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/sprint/w/installer/DeliveryState;->code:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sprint/w/installer/DeliveryState;
    .registers 2
    .parameter "name"

    .prologue
    .line 4
    const-class v0, Lcom/sprint/w/installer/DeliveryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sprint/w/installer/DeliveryState;

    return-object v0
.end method

.method public static values()[Lcom/sprint/w/installer/DeliveryState;
    .registers 1

    .prologue
    .line 4
    sget-object v0, Lcom/sprint/w/installer/DeliveryState;->$VALUES:[Lcom/sprint/w/installer/DeliveryState;

    invoke-virtual {v0}, [Lcom/sprint/w/installer/DeliveryState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sprint/w/installer/DeliveryState;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcom/sprint/w/installer/DeliveryState;->code:I

    return v0
.end method
