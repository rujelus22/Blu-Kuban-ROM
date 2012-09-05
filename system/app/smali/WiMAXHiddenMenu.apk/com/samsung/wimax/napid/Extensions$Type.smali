.class public final enum Lcom/samsung/wimax/napid/Extensions$Type;
.super Ljava/lang/Enum;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wimax/napid/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/wimax/napid/Extensions$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum ENTCINR_READ:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum ENTCINR_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum ENTCINR_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum ENTDELAY_READ:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum ENTDELAY_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum ENTDELAY_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum ERX_READ:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum ERX_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum ERX_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum EXTCINR_READ:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum EXTCINR_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum EXTCINR_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum EXTDEAY_READ:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum EXTDEAY_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum EXTDEAY_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum ISLEEP_READ:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum ISLEEP_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum ISLEEP_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum READ_FINISHED:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum SATIMEOUT_READ:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum SATIMEOUT_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum SATIMEOUT_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum SRETRIES_READ:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum SRETRIES_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum SRETRIES_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

.field public static final enum UNKNOW:Lcom/samsung/wimax/napid/Extensions$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "UNKNOW"

    invoke-direct {v0, v1, v3}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->UNKNOW:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 61
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "READ_FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->READ_FINISHED:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 62
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "SATIMEOUT_READ"

    invoke-direct {v0, v1, v5}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->SATIMEOUT_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 63
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "SATIMEOUT_WRT"

    invoke-direct {v0, v1, v6}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->SATIMEOUT_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 64
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "SATIMEOUT_UPDT"

    invoke-direct {v0, v1, v7}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->SATIMEOUT_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 65
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "SRETRIES_READ"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->SRETRIES_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 66
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "SRETRIES_WRT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->SRETRIES_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 67
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "SRETRIES_UPDT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->SRETRIES_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 68
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "ISLEEP_READ"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->ISLEEP_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 69
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "ISLEEP_WRT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->ISLEEP_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 70
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "ISLEEP_UPDT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->ISLEEP_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 71
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "ERX_READ"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->ERX_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 72
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "ERX_WRT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->ERX_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 73
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "ERX_UPDT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->ERX_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 74
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "ENTCINR_READ"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->ENTCINR_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 75
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "ENTCINR_WRT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->ENTCINR_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 76
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "ENTCINR_UPDT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->ENTCINR_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 77
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "ENTDELAY_READ"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->ENTDELAY_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 78
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "ENTDELAY_WRT"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->ENTDELAY_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 79
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "ENTDELAY_UPDT"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->ENTDELAY_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 80
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "EXTCINR_READ"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->EXTCINR_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 81
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "EXTCINR_WRT"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->EXTCINR_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 82
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "EXTCINR_UPDT"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->EXTCINR_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 83
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "EXTDEAY_READ"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->EXTDEAY_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 84
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "EXTDEAY_WRT"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->EXTDEAY_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 85
    new-instance v0, Lcom/samsung/wimax/napid/Extensions$Type;

    const-string v1, "EXTDEAY_UPDT"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/samsung/wimax/napid/Extensions$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->EXTDEAY_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    .line 59
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/samsung/wimax/napid/Extensions$Type;

    sget-object v1, Lcom/samsung/wimax/napid/Extensions$Type;->UNKNOW:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/wimax/napid/Extensions$Type;->READ_FINISHED:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/wimax/napid/Extensions$Type;->SATIMEOUT_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/wimax/napid/Extensions$Type;->SATIMEOUT_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/wimax/napid/Extensions$Type;->SATIMEOUT_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->SRETRIES_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->SRETRIES_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->SRETRIES_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ISLEEP_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ISLEEP_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ISLEEP_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ERX_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ERX_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ERX_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ENTCINR_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ENTCINR_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ENTCINR_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ENTDELAY_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ENTDELAY_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->ENTDELAY_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->EXTCINR_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->EXTCINR_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->EXTCINR_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->EXTDEAY_READ:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->EXTDEAY_WRT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/samsung/wimax/napid/Extensions$Type;->EXTDEAY_UPDT:Lcom/samsung/wimax/napid/Extensions$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->$VALUES:[Lcom/samsung/wimax/napid/Extensions$Type;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/wimax/napid/Extensions$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 59
    const-class v0, Lcom/samsung/wimax/napid/Extensions$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/wimax/napid/Extensions$Type;

    return-object v0
.end method

.method public static values()[Lcom/samsung/wimax/napid/Extensions$Type;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/samsung/wimax/napid/Extensions$Type;->$VALUES:[Lcom/samsung/wimax/napid/Extensions$Type;

    invoke-virtual {v0}, [Lcom/samsung/wimax/napid/Extensions$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/wimax/napid/Extensions$Type;

    return-object v0
.end method
