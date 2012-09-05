.class public final enum Lcom/wssnps/base/smlvCard$SmlvCardVersion;
.super Ljava/lang/Enum;
.source "smlvCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wssnps/base/smlvCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmlvCardVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/wssnps/base/smlvCard$SmlvCardVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/wssnps/base/smlvCard$SmlvCardVersion;

.field public static final enum VCARD_V21:Lcom/wssnps/base/smlvCard$SmlvCardVersion;

.field public static final enum VCARD_V30:Lcom/wssnps/base/smlvCard$SmlvCardVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    const-string v1, "VCARD_V21"

    invoke-direct {v0, v1, v2}, Lcom/wssnps/base/smlvCard$SmlvCardVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssnps/base/smlvCard$SmlvCardVersion;->VCARD_V21:Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    .line 19
    new-instance v0, Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    const-string v1, "VCARD_V30"

    invoke-direct {v0, v1, v3}, Lcom/wssnps/base/smlvCard$SmlvCardVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wssnps/base/smlvCard$SmlvCardVersion;->VCARD_V30:Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    sget-object v1, Lcom/wssnps/base/smlvCard$SmlvCardVersion;->VCARD_V21:Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wssnps/base/smlvCard$SmlvCardVersion;->VCARD_V30:Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wssnps/base/smlvCard$SmlvCardVersion;->ENUM$VALUES:[Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wssnps/base/smlvCard$SmlvCardVersion;
    .registers 2
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    return-object v0
.end method

.method public static values()[Lcom/wssnps/base/smlvCard$SmlvCardVersion;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/wssnps/base/smlvCard$SmlvCardVersion;->ENUM$VALUES:[Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    array-length v1, v0

    new-array v2, v1, [Lcom/wssnps/base/smlvCard$SmlvCardVersion;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
