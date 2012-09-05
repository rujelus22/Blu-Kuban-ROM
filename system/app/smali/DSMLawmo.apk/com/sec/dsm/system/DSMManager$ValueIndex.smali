.class final enum Lcom/sec/dsm/system/DSMManager$ValueIndex;
.super Ljava/lang/Enum;
.source "DSMManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dsm/system/DSMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ValueIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/dsm/system/DSMManager$ValueIndex;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/dsm/system/DSMManager$ValueIndex;

.field public static final enum DSMForwardingResult:Lcom/sec/dsm/system/DSMManager$ValueIndex;

.field public static final enum DSMIMSI:Lcom/sec/dsm/system/DSMManager$ValueIndex;

.field public static final enum DSMInterval:Lcom/sec/dsm/system/DSMManager$ValueIndex;

.field public static final enum DSMRing:Lcom/sec/dsm/system/DSMManager$ValueIndex;

.field public static final enum DSMStartTime:Lcom/sec/dsm/system/DSMManager$ValueIndex;

.field public static final enum DSMStopTime:Lcom/sec/dsm/system/DSMManager$ValueIndex;

.field public static final enum DSMTracking:Lcom/sec/dsm/system/DSMManager$ValueIndex;

.field public static final enum DSMWipeOut:Lcom/sec/dsm/system/DSMManager$ValueIndex;

.field public static final enum DSMWipeOutResult:Lcom/sec/dsm/system/DSMManager$ValueIndex;

.field public static final enum SMSForwarding:Lcom/sec/dsm/system/DSMManager$ValueIndex;

.field public static final enum SMSRecipient:Lcom/sec/dsm/system/DSMManager$ValueIndex;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;

    const-string v1, "DSMTracking"

    invoke-direct {v0, v1, v3}, Lcom/sec/dsm/system/DSMManager$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMTracking:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    .line 25
    new-instance v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;

    const-string v1, "DSMStartTime"

    invoke-direct {v0, v1, v4}, Lcom/sec/dsm/system/DSMManager$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMStartTime:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    .line 26
    new-instance v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;

    const-string v1, "DSMStopTime"

    invoke-direct {v0, v1, v5}, Lcom/sec/dsm/system/DSMManager$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMStopTime:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    .line 27
    new-instance v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;

    const-string v1, "DSMInterval"

    invoke-direct {v0, v1, v6}, Lcom/sec/dsm/system/DSMManager$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMInterval:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    .line 28
    new-instance v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;

    const-string v1, "DSMRing"

    invoke-direct {v0, v1, v7}, Lcom/sec/dsm/system/DSMManager$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMRing:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    .line 29
    new-instance v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;

    const-string v1, "DSMWipeOut"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/dsm/system/DSMManager$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMWipeOut:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    .line 30
    new-instance v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;

    const-string v1, "DSMWipeOutResult"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/dsm/system/DSMManager$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMWipeOutResult:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    .line 31
    new-instance v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;

    const-string v1, "DSMForwardingResult"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/dsm/system/DSMManager$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMForwardingResult:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    .line 32
    new-instance v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;

    const-string v1, "DSMIMSI"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/dsm/system/DSMManager$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMIMSI:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    .line 33
    new-instance v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;

    const-string v1, "SMSForwarding"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/dsm/system/DSMManager$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->SMSForwarding:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    .line 34
    new-instance v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;

    const-string v1, "SMSRecipient"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/dsm/system/DSMManager$ValueIndex;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->SMSRecipient:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    .line 23
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/sec/dsm/system/DSMManager$ValueIndex;

    sget-object v1, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMTracking:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMStartTime:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMStopTime:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMInterval:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMRing:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMWipeOut:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMWipeOutResult:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMForwardingResult:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/dsm/system/DSMManager$ValueIndex;->DSMIMSI:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/dsm/system/DSMManager$ValueIndex;->SMSForwarding:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/dsm/system/DSMManager$ValueIndex;->SMSRecipient:Lcom/sec/dsm/system/DSMManager$ValueIndex;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->$VALUES:[Lcom/sec/dsm/system/DSMManager$ValueIndex;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/dsm/system/DSMManager$ValueIndex;
    .registers 2
    .parameter

    .prologue
    .line 23
    const-class v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;

    return-object v0
.end method

.method public static values()[Lcom/sec/dsm/system/DSMManager$ValueIndex;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/sec/dsm/system/DSMManager$ValueIndex;->$VALUES:[Lcom/sec/dsm/system/DSMManager$ValueIndex;

    invoke-virtual {v0}, [Lcom/sec/dsm/system/DSMManager$ValueIndex;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/dsm/system/DSMManager$ValueIndex;

    return-object v0
.end method
