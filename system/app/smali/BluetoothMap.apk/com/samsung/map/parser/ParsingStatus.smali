.class public final enum Lcom/samsung/map/parser/ParsingStatus;
.super Ljava/lang/Enum;
.source "ParsingStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/map/parser/ParsingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/map/parser/ParsingStatus;

.field public static final enum GENERAL_ERROR:Lcom/samsung/map/parser/ParsingStatus;

.field public static final enum INVALID_PROPERTY_FORMATTING:Lcom/samsung/map/parser/ParsingStatus;

.field public static final enum INVALID_PROPERTY_VALUE:Lcom/samsung/map/parser/ParsingStatus;

.field public static final enum INVALID_TAG:Lcom/samsung/map/parser/ParsingStatus;

.field public static final enum INVALID_VCARD:Lcom/samsung/map/parser/ParsingStatus;

.field public static final enum OK:Lcom/samsung/map/parser/ParsingStatus;

.field public static final enum UNEXPECTED_PROPERTY:Lcom/samsung/map/parser/ParsingStatus;

.field public static final enum UNEXPECTED_VALUE:Lcom/samsung/map/parser/ParsingStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    new-instance v0, Lcom/samsung/map/parser/ParsingStatus;

    const-string v1, "OK"

    invoke-direct {v0, v1, v3}, Lcom/samsung/map/parser/ParsingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/map/parser/ParsingStatus;->OK:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v0, Lcom/samsung/map/parser/ParsingStatus;

    const-string v1, "INVALID_PROPERTY_FORMATTING"

    invoke-direct {v0, v1, v4}, Lcom/samsung/map/parser/ParsingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/map/parser/ParsingStatus;->INVALID_PROPERTY_FORMATTING:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v0, Lcom/samsung/map/parser/ParsingStatus;

    const-string v1, "INVALID_TAG"

    invoke-direct {v0, v1, v5}, Lcom/samsung/map/parser/ParsingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/map/parser/ParsingStatus;->INVALID_TAG:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v0, Lcom/samsung/map/parser/ParsingStatus;

    const-string v1, "INVALID_VCARD"

    invoke-direct {v0, v1, v6}, Lcom/samsung/map/parser/ParsingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/map/parser/ParsingStatus;->INVALID_VCARD:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v0, Lcom/samsung/map/parser/ParsingStatus;

    const-string v1, "INVALID_PROPERTY_VALUE"

    invoke-direct {v0, v1, v7}, Lcom/samsung/map/parser/ParsingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/map/parser/ParsingStatus;->INVALID_PROPERTY_VALUE:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v0, Lcom/samsung/map/parser/ParsingStatus;

    const-string v1, "UNEXPECTED_PROPERTY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/samsung/map/parser/ParsingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/map/parser/ParsingStatus;->UNEXPECTED_PROPERTY:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v0, Lcom/samsung/map/parser/ParsingStatus;

    const-string v1, "UNEXPECTED_VALUE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/samsung/map/parser/ParsingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/map/parser/ParsingStatus;->UNEXPECTED_VALUE:Lcom/samsung/map/parser/ParsingStatus;

    new-instance v0, Lcom/samsung/map/parser/ParsingStatus;

    const-string v1, "GENERAL_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/samsung/map/parser/ParsingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/map/parser/ParsingStatus;->GENERAL_ERROR:Lcom/samsung/map/parser/ParsingStatus;

    .line 35
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/samsung/map/parser/ParsingStatus;

    sget-object v1, Lcom/samsung/map/parser/ParsingStatus;->OK:Lcom/samsung/map/parser/ParsingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/map/parser/ParsingStatus;->INVALID_PROPERTY_FORMATTING:Lcom/samsung/map/parser/ParsingStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/map/parser/ParsingStatus;->INVALID_TAG:Lcom/samsung/map/parser/ParsingStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/map/parser/ParsingStatus;->INVALID_VCARD:Lcom/samsung/map/parser/ParsingStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/map/parser/ParsingStatus;->INVALID_PROPERTY_VALUE:Lcom/samsung/map/parser/ParsingStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/map/parser/ParsingStatus;->UNEXPECTED_PROPERTY:Lcom/samsung/map/parser/ParsingStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/map/parser/ParsingStatus;->UNEXPECTED_VALUE:Lcom/samsung/map/parser/ParsingStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/map/parser/ParsingStatus;->GENERAL_ERROR:Lcom/samsung/map/parser/ParsingStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/map/parser/ParsingStatus;->$VALUES:[Lcom/samsung/map/parser/ParsingStatus;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/map/parser/ParsingStatus;
    .registers 2
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/samsung/map/parser/ParsingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/map/parser/ParsingStatus;

    return-object v0
.end method

.method public static values()[Lcom/samsung/map/parser/ParsingStatus;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/map/parser/ParsingStatus;->$VALUES:[Lcom/samsung/map/parser/ParsingStatus;

    invoke-virtual {v0}, [Lcom/samsung/map/parser/ParsingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/map/parser/ParsingStatus;

    return-object v0
.end method
