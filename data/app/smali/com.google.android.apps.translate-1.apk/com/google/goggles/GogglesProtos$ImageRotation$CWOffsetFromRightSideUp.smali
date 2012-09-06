.class public final enum Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;
.super Ljava/lang/Enum;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos$ImageRotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CWOffsetFromRightSideUp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp; = null

.field public static final enum NINETY_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp; = null

.field public static final NINETY_DEGREES_VALUE:I = 0x2

.field public static final enum ONE_EIGHTY_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp; = null

.field public static final ONE_EIGHTY_DEGREES_VALUE:I = 0x3

.field public static final enum TWO_SEVENTY_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp; = null

.field public static final TWO_SEVENTY_DEGREES_VALUE:I = 0x4

.field public static final enum ZERO_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp; = null

.field public static final ZERO_DEGREES_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1938
    new-instance v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    const-string v1, "ZERO_DEGREES"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->ZERO_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    .line 1939
    new-instance v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    const-string v1, "NINETY_DEGREES"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->NINETY_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    .line 1940
    new-instance v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    const-string v1, "ONE_EIGHTY_DEGREES"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->ONE_EIGHTY_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    .line 1941
    new-instance v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    const-string v1, "TWO_SEVENTY_DEGREES"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->TWO_SEVENTY_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    .line 1936
    new-array v0, v6, [Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    sget-object v1, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->ZERO_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->NINETY_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->ONE_EIGHTY_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->TWO_SEVENTY_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->$VALUES:[Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    .line 1967
    new-instance v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp$1;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp$1;-><init>()V

    sput-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1976
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1977
    iput p4, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->value:I

    .line 1978
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1964
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;
    .registers 2
    .parameter

    .prologue
    .line 1953
    packed-switch p0, :pswitch_data_12

    .line 1958
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1954
    :pswitch_5
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->ZERO_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    goto :goto_4

    .line 1955
    :pswitch_8
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->NINETY_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    goto :goto_4

    .line 1956
    :pswitch_b
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->ONE_EIGHTY_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    goto :goto_4

    .line 1957
    :pswitch_e
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->TWO_SEVENTY_DEGREES:Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    goto :goto_4

    .line 1953
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;
    .registers 2
    .parameter

    .prologue
    .line 1936
    const-class v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;
    .registers 1

    .prologue
    .line 1936
    sget-object v0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->$VALUES:[Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    invoke-virtual {v0}, [Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1950
    iget v0, p0, Lcom/google/goggles/GogglesProtos$ImageRotation$CWOffsetFromRightSideUp;->value:I

    return v0
.end method
