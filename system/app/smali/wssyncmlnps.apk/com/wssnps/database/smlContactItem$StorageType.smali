.class public final enum Lcom/wssnps/database/smlContactItem$StorageType;
.super Ljava/lang/Enum;
.source "smlContactItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/database/smlContactItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wssnps/database/smlContactItem$StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wssnps/database/smlContactItem$StorageType;

.field public static final enum SMLDS_PIM_ADAPTER_CONTACT_BR:Lcom/wssnps/database/smlContactItem$StorageType;

.field public static final enum SMLDS_PIM_ADAPTER_CONTACT_EXTERNAL:Lcom/wssnps/database/smlContactItem$StorageType;

.field public static final enum SMLDS_PIM_ADAPTER_CONTACT_NONE:Lcom/wssnps/database/smlContactItem$StorageType;

.field public static final enum SMLDS_PIM_ADAPTER_CONTACT_PHONE:Lcom/wssnps/database/smlContactItem$StorageType;

.field public static final enum SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

.field public static final enum SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

.field public static final enum SMLDS_PIM_ADAPTER_CONTACT_SIM_FDN:Lcom/wssnps/database/smlContactItem$StorageType;

.field public static final enum SMLDS_PIM_ADAPTER_CONTACT_SIM_MSISDN:Lcom/wssnps/database/smlContactItem$StorageType;

.field public static final enum SMLDS_PIM_ADAPTER_CONTACT_SIM_SDN:Lcom/wssnps/database/smlContactItem$StorageType;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 136
    new-instance v0, Lcom/wssnps/database/smlContactItem$StorageType;

    const-string v1, "SMLDS_PIM_ADAPTER_CONTACT_NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/wssnps/database/smlContactItem$StorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_NONE:Lcom/wssnps/database/smlContactItem$StorageType;

    .line 137
    new-instance v0, Lcom/wssnps/database/smlContactItem$StorageType;

    const-string v1, "SMLDS_PIM_ADAPTER_CONTACT_PHONE"

    invoke-direct {v0, v1, v5, v5}, Lcom/wssnps/database/smlContactItem$StorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_PHONE:Lcom/wssnps/database/smlContactItem$StorageType;

    .line 138
    new-instance v0, Lcom/wssnps/database/smlContactItem$StorageType;

    const-string v1, "SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN"

    invoke-direct {v0, v1, v6, v6}, Lcom/wssnps/database/smlContactItem$StorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    .line 139
    new-instance v0, Lcom/wssnps/database/smlContactItem$StorageType;

    const-string v1, "SMLDS_PIM_ADAPTER_CONTACT_SIM_FDN"

    invoke-direct {v0, v1, v7, v7}, Lcom/wssnps/database/smlContactItem$StorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_FDN:Lcom/wssnps/database/smlContactItem$StorageType;

    .line 140
    new-instance v0, Lcom/wssnps/database/smlContactItem$StorageType;

    const-string v1, "SMLDS_PIM_ADAPTER_CONTACT_SIM_SDN"

    invoke-direct {v0, v1, v8, v8}, Lcom/wssnps/database/smlContactItem$StorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_SDN:Lcom/wssnps/database/smlContactItem$StorageType;

    .line 141
    new-instance v0, Lcom/wssnps/database/smlContactItem$StorageType;

    const-string v1, "SMLDS_PIM_ADAPTER_CONTACT_SIM_MSISDN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/wssnps/database/smlContactItem$StorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_MSISDN:Lcom/wssnps/database/smlContactItem$StorageType;

    .line 142
    new-instance v0, Lcom/wssnps/database/smlContactItem$StorageType;

    const-string v1, "SMLDS_PIM_ADAPTER_CONTACT_EXTERNAL"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/wssnps/database/smlContactItem$StorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_EXTERNAL:Lcom/wssnps/database/smlContactItem$StorageType;

    .line 143
    new-instance v0, Lcom/wssnps/database/smlContactItem$StorageType;

    const-string v1, "SMLDS_PIM_ADAPTER_CONTACT_BR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/wssnps/database/smlContactItem$StorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_BR:Lcom/wssnps/database/smlContactItem$StorageType;

    .line 144
    new-instance v0, Lcom/wssnps/database/smlContactItem$StorageType;

    const-string v1, "SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/wssnps/database/smlContactItem$StorageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    .line 134
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/wssnps/database/smlContactItem$StorageType;

    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_NONE:Lcom/wssnps/database/smlContactItem$StorageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_PHONE:Lcom/wssnps/database/smlContactItem$StorageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN:Lcom/wssnps/database/smlContactItem$StorageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_FDN:Lcom/wssnps/database/smlContactItem$StorageType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_SDN:Lcom/wssnps/database/smlContactItem$StorageType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_MSISDN:Lcom/wssnps/database/smlContactItem$StorageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_EXTERNAL:Lcom/wssnps/database/smlContactItem$StorageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_BR:Lcom/wssnps/database/smlContactItem$StorageType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/wssnps/database/smlContactItem$StorageType;->SMLDS_PIM_ADAPTER_CONTACT_SIM_ADN2:Lcom/wssnps/database/smlContactItem$StorageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/wssnps/database/smlContactItem$StorageType;->$VALUES:[Lcom/wssnps/database/smlContactItem$StorageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    iput p3, p0, Lcom/wssnps/database/smlContactItem$StorageType;->id:I

    .line 150
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wssnps/database/smlContactItem$StorageType;
    .registers 2
    .parameter

    .prologue
    .line 134
    const-class v0, Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wssnps/database/smlContactItem$StorageType;

    return-object v0
.end method

.method public static values()[Lcom/wssnps/database/smlContactItem$StorageType;
    .registers 1

    .prologue
    .line 134
    sget-object v0, Lcom/wssnps/database/smlContactItem$StorageType;->$VALUES:[Lcom/wssnps/database/smlContactItem$StorageType;

    invoke-virtual {v0}, [Lcom/wssnps/database/smlContactItem$StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wssnps/database/smlContactItem$StorageType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, Lcom/wssnps/database/smlContactItem$StorageType;->id:I

    return v0
.end method
