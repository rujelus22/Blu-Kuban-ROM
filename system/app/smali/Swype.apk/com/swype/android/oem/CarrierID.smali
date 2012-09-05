.class public final enum Lcom/swype/android/oem/CarrierID;
.super Ljava/lang/Enum;
.source "CarrierID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/swype/android/oem/CarrierID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swype/android/oem/CarrierID;

.field public static final enum GENERIC:Lcom/swype/android/oem/CarrierID;

.field public static final enum T_MOBILE_USA:Lcom/swype/android/oem/CarrierID;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/swype/android/oem/CarrierID;

    const-string v1, "GENERIC"

    const-string v2, "generic"

    invoke-direct {v0, v1, v3, v2}, Lcom/swype/android/oem/CarrierID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/swype/android/oem/CarrierID;->GENERIC:Lcom/swype/android/oem/CarrierID;

    .line 5
    new-instance v0, Lcom/swype/android/oem/CarrierID;

    const-string v1, "T_MOBILE_USA"

    const-string v2, "T_MOBILE_USA"

    invoke-direct {v0, v1, v4, v2}, Lcom/swype/android/oem/CarrierID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/swype/android/oem/CarrierID;->T_MOBILE_USA:Lcom/swype/android/oem/CarrierID;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/swype/android/oem/CarrierID;

    sget-object v1, Lcom/swype/android/oem/CarrierID;->GENERIC:Lcom/swype/android/oem/CarrierID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/swype/android/oem/CarrierID;->T_MOBILE_USA:Lcom/swype/android/oem/CarrierID;

    aput-object v1, v0, v4

    sput-object v0, Lcom/swype/android/oem/CarrierID;->$VALUES:[Lcom/swype/android/oem/CarrierID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/swype/android/oem/CarrierID;->id:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/swype/android/oem/CarrierID;
    .registers 6
    .parameter "name"

    .prologue
    .line 19
    invoke-static {}, Lcom/swype/android/oem/CarrierID;->values()[Lcom/swype/android/oem/CarrierID;

    move-result-object v0

    .local v0, arr$:[Lcom/swype/android/oem/CarrierID;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v3, :cond_19

    aget-object v2, v0, v1

    .line 20
    .local v2, id:Lcom/swype/android/oem/CarrierID;
    invoke-virtual {v2}, Lcom/swype/android/oem/CarrierID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object v4, v2

    .line 24
    .end local v2           #id:Lcom/swype/android/oem/CarrierID;
    :goto_15
    return-object v4

    .line 19
    .restart local v2       #id:Lcom/swype/android/oem/CarrierID;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 24
    .end local v2           #id:Lcom/swype/android/oem/CarrierID;
    :cond_19
    sget-object v4, Lcom/swype/android/oem/CarrierID;->GENERIC:Lcom/swype/android/oem/CarrierID;

    goto :goto_15
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swype/android/oem/CarrierID;
    .registers 2
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/swype/android/oem/CarrierID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swype/android/oem/CarrierID;

    return-object p0
.end method

.method public static values()[Lcom/swype/android/oem/CarrierID;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/swype/android/oem/CarrierID;->$VALUES:[Lcom/swype/android/oem/CarrierID;

    invoke-virtual {v0}, [Lcom/swype/android/oem/CarrierID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swype/android/oem/CarrierID;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/swype/android/oem/CarrierID;->id:Ljava/lang/String;

    return-object v0
.end method
