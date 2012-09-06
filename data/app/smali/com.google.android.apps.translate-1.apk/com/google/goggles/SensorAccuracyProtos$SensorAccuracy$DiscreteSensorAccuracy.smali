.class public final enum Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;
.super Ljava/lang/Enum;
.source "SensorAccuracyProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiscreteSensorAccuracy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy; = null

.field public static final enum HIGH:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy; = null

.field public static final HIGH_VALUE:I = 0x1

.field public static final enum LOW:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy; = null

.field public static final LOW_VALUE:I = 0x3

.field public static final enum MEDIUM:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy; = null

.field public static final MEDIUM_VALUE:I = 0x2

.field public static final enum UNRELIABLE:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy; = null

.field public static final UNRELIABLE_VALUE:I = 0x4

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;",
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

    .line 38
    new-instance v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->HIGH:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    .line 39
    new-instance v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->MEDIUM:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    .line 40
    new-instance v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->LOW:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    .line 41
    new-instance v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    const-string v1, "UNRELIABLE"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->UNRELIABLE:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    .line 36
    new-array v0, v6, [Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    sget-object v1, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->HIGH:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->MEDIUM:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->LOW:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->UNRELIABLE:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->$VALUES:[Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    .line 67
    new-instance v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy$1;

    invoke-direct {v0}, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy$1;-><init>()V

    sput-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p4, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->value:I

    .line 78
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    sget-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;
    .registers 2
    .parameter

    .prologue
    .line 53
    packed-switch p0, :pswitch_data_12

    .line 58
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 54
    :pswitch_5
    sget-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->HIGH:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    goto :goto_4

    .line 55
    :pswitch_8
    sget-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->MEDIUM:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    goto :goto_4

    .line 56
    :pswitch_b
    sget-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->LOW:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    goto :goto_4

    .line 57
    :pswitch_e
    sget-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->UNRELIABLE:Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    goto :goto_4

    .line 53
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;
    .registers 2
    .parameter

    .prologue
    .line 36
    const-class v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->$VALUES:[Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    invoke-virtual {v0}, [Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/google/goggles/SensorAccuracyProtos$SensorAccuracy$DiscreteSensorAccuracy;->value:I

    return v0
.end method
