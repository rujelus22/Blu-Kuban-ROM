.class public final enum Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;
.super Ljava/lang/Enum;
.source "smlvCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syncmldstmo/base/vitem/smlvCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmlvCardVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

.field public static final enum VCARD_V21:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

.field public static final enum VCARD_V30:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    const-string v1, "VCARD_V21"

    invoke-direct {v0, v1, v2}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;->VCARD_V21:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    .line 19
    new-instance v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    const-string v1, "VCARD_V30"

    invoke-direct {v0, v1, v3}, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;->VCARD_V30:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    sget-object v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;->VCARD_V21:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;->VCARD_V30:Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;->$VALUES:[Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;
    .registers 2
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    return-object v0
.end method

.method public static values()[Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;->$VALUES:[Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    invoke-virtual {v0}, [Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/syncmldstmo/base/vitem/smlvCard$SmlvCardVersion;

    return-object v0
.end method
