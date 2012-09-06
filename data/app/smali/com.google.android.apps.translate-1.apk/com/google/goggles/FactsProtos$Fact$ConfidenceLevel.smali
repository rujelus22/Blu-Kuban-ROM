.class public final enum Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;
.super Ljava/lang/Enum;
.source "FactsProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/FactsProtos$Fact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfidenceLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel; = null

.field public static final enum HIGH_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel; = null

.field public static final HIGH_CONFIDENCE_VALUE:I = 0x2

.field public static final enum LOW_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel; = null

.field public static final LOW_CONFIDENCE_VALUE:I = 0x0

.field public static final enum MEDIUM_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel; = null

.field public static final MEDIUM_CONFIDENCE_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    const-string v1, "LOW_CONFIDENCE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->LOW_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    .line 52
    new-instance v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    const-string v1, "MEDIUM_CONFIDENCE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->MEDIUM_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    .line 53
    new-instance v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    const-string v1, "HIGH_CONFIDENCE"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->HIGH_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    sget-object v1, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->LOW_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->MEDIUM_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->HIGH_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->$VALUES:[Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    .line 77
    new-instance v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel$1;

    invoke-direct {v0}, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel$1;-><init>()V

    sput-object v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 87
    iput p4, p0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->value:I

    .line 88
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    sget-object v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;
    .registers 2
    .parameter

    .prologue
    .line 64
    packed-switch p0, :pswitch_data_e

    .line 68
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 65
    :pswitch_5
    sget-object v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->LOW_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    goto :goto_4

    .line 66
    :pswitch_8
    sget-object v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->MEDIUM_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    goto :goto_4

    .line 67
    :pswitch_b
    sget-object v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->HIGH_CONFIDENCE:Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    goto :goto_4

    .line 64
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;
    .registers 2
    .parameter

    .prologue
    .line 49
    const-class v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->$VALUES:[Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    invoke-virtual {v0}, [Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/google/goggles/FactsProtos$Fact$ConfidenceLevel;->value:I

    return v0
.end method
