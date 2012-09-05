.class public final enum Lcom/swype/android/oem/OEMBuildID;
.super Ljava/lang/Enum;
.source "OEMBuildID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/swype/android/oem/OEMBuildID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/swype/android/oem/OEMBuildID;

.field public static final enum GENERIC:Lcom/swype/android/oem/OEMBuildID;

.field public static final enum HTC_NO_DOUBLETAP:Lcom/swype/android/oem/OEMBuildID;

.field public static final enum HTC_SENSE_UI:Lcom/swype/android/oem/OEMBuildID;

.field public static final enum LG:Lcom/swype/android/oem/OEMBuildID;

.field public static final enum MotorolaSolona:Lcom/swype/android/oem/OEMBuildID;

.field public static final enum SAMSUNG:Lcom/swype/android/oem/OEMBuildID;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/swype/android/oem/OEMBuildID;

    const-string v1, "GENERIC"

    const-string v2, "generic"

    invoke-direct {v0, v1, v4, v2}, Lcom/swype/android/oem/OEMBuildID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/swype/android/oem/OEMBuildID;->GENERIC:Lcom/swype/android/oem/OEMBuildID;

    .line 5
    new-instance v0, Lcom/swype/android/oem/OEMBuildID;

    const-string v1, "HTC_SENSE_UI"

    const-string v2, "HTC_SENSE_UI"

    invoke-direct {v0, v1, v5, v2}, Lcom/swype/android/oem/OEMBuildID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/swype/android/oem/OEMBuildID;->HTC_SENSE_UI:Lcom/swype/android/oem/OEMBuildID;

    .line 6
    new-instance v0, Lcom/swype/android/oem/OEMBuildID;

    const-string v1, "SAMSUNG"

    const-string v2, "SAMSUNG_TOUCHWIZ"

    invoke-direct {v0, v1, v6, v2}, Lcom/swype/android/oem/OEMBuildID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/swype/android/oem/OEMBuildID;->SAMSUNG:Lcom/swype/android/oem/OEMBuildID;

    .line 7
    new-instance v0, Lcom/swype/android/oem/OEMBuildID;

    const-string v1, "LG"

    const-string v2, "LG"

    invoke-direct {v0, v1, v7, v2}, Lcom/swype/android/oem/OEMBuildID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/swype/android/oem/OEMBuildID;->LG:Lcom/swype/android/oem/OEMBuildID;

    .line 8
    new-instance v0, Lcom/swype/android/oem/OEMBuildID;

    const-string v1, "MotorolaSolona"

    const-string v2, "MOTOROLA_SOLONA"

    invoke-direct {v0, v1, v8, v2}, Lcom/swype/android/oem/OEMBuildID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/swype/android/oem/OEMBuildID;->MotorolaSolona:Lcom/swype/android/oem/OEMBuildID;

    .line 9
    new-instance v0, Lcom/swype/android/oem/OEMBuildID;

    const-string v1, "HTC_NO_DOUBLETAP"

    const/4 v2, 0x5

    const-string v3, "HTC_NO_DOUBLETAP"

    invoke-direct {v0, v1, v2, v3}, Lcom/swype/android/oem/OEMBuildID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/swype/android/oem/OEMBuildID;->HTC_NO_DOUBLETAP:Lcom/swype/android/oem/OEMBuildID;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/swype/android/oem/OEMBuildID;

    sget-object v1, Lcom/swype/android/oem/OEMBuildID;->GENERIC:Lcom/swype/android/oem/OEMBuildID;

    aput-object v1, v0, v4

    sget-object v1, Lcom/swype/android/oem/OEMBuildID;->HTC_SENSE_UI:Lcom/swype/android/oem/OEMBuildID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/swype/android/oem/OEMBuildID;->SAMSUNG:Lcom/swype/android/oem/OEMBuildID;

    aput-object v1, v0, v6

    sget-object v1, Lcom/swype/android/oem/OEMBuildID;->LG:Lcom/swype/android/oem/OEMBuildID;

    aput-object v1, v0, v7

    sget-object v1, Lcom/swype/android/oem/OEMBuildID;->MotorolaSolona:Lcom/swype/android/oem/OEMBuildID;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/swype/android/oem/OEMBuildID;->HTC_NO_DOUBLETAP:Lcom/swype/android/oem/OEMBuildID;

    aput-object v2, v0, v1

    sput-object v0, Lcom/swype/android/oem/OEMBuildID;->$VALUES:[Lcom/swype/android/oem/OEMBuildID;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/swype/android/oem/OEMBuildID;->id:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/swype/android/oem/OEMBuildID;
    .registers 6
    .parameter "name"

    .prologue
    .line 23
    invoke-static {}, Lcom/swype/android/oem/OEMBuildID;->values()[Lcom/swype/android/oem/OEMBuildID;

    move-result-object v0

    .local v0, arr$:[Lcom/swype/android/oem/OEMBuildID;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v3, :cond_19

    aget-object v2, v0, v1

    .line 24
    .local v2, id:Lcom/swype/android/oem/OEMBuildID;
    invoke-virtual {v2}, Lcom/swype/android/oem/OEMBuildID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object v4, v2

    .line 28
    .end local v2           #id:Lcom/swype/android/oem/OEMBuildID;
    :goto_15
    return-object v4

    .line 23
    .restart local v2       #id:Lcom/swype/android/oem/OEMBuildID;
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 28
    .end local v2           #id:Lcom/swype/android/oem/OEMBuildID;
    :cond_19
    sget-object v4, Lcom/swype/android/oem/OEMBuildID;->GENERIC:Lcom/swype/android/oem/OEMBuildID;

    goto :goto_15
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/swype/android/oem/OEMBuildID;
    .registers 2
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/swype/android/oem/OEMBuildID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/swype/android/oem/OEMBuildID;

    return-object p0
.end method

.method public static values()[Lcom/swype/android/oem/OEMBuildID;
    .registers 1

    .prologue
    .line 3
    sget-object v0, Lcom/swype/android/oem/OEMBuildID;->$VALUES:[Lcom/swype/android/oem/OEMBuildID;

    invoke-virtual {v0}, [Lcom/swype/android/oem/OEMBuildID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/swype/android/oem/OEMBuildID;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/swype/android/oem/OEMBuildID;->id:Ljava/lang/String;

    return-object v0
.end method
