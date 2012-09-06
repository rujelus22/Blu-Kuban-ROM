.class public final enum Lcom/google/goggles/TracingProtos$TraceAction$Type;
.super Ljava/lang/Enum;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos$TraceAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/TracingProtos$TraceAction$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/TracingProtos$TraceAction$Type; = null

.field public static final enum CONTINUOUS_GOGGLES:Lcom/google/goggles/TracingProtos$TraceAction$Type; = null

.field public static final CONTINUOUS_GOGGLES_VALUE:I = 0x2

.field public static final enum GOGGLES:Lcom/google/goggles/TracingProtos$TraceAction$Type; = null

.field public static final GOGGLES_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/TracingProtos$TraceAction$Type;",
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

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1008
    new-instance v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;

    const-string v1, "GOGGLES"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/goggles/TracingProtos$TraceAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;->GOGGLES:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    .line 1009
    new-instance v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;

    const-string v1, "CONTINUOUS_GOGGLES"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/goggles/TracingProtos$TraceAction$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;->CONTINUOUS_GOGGLES:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    .line 1006
    new-array v0, v4, [Lcom/google/goggles/TracingProtos$TraceAction$Type;

    sget-object v1, Lcom/google/goggles/TracingProtos$TraceAction$Type;->GOGGLES:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/goggles/TracingProtos$TraceAction$Type;->CONTINUOUS_GOGGLES:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;->$VALUES:[Lcom/google/goggles/TracingProtos$TraceAction$Type;

    .line 1031
    new-instance v0, Lcom/google/goggles/TracingProtos$TraceAction$Type$1;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$TraceAction$Type$1;-><init>()V

    sput-object v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1040
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1041
    iput p4, p0, Lcom/google/goggles/TracingProtos$TraceAction$Type;->value:I

    .line 1042
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/TracingProtos$TraceAction$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1028
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/TracingProtos$TraceAction$Type;
    .registers 2
    .parameter

    .prologue
    .line 1019
    packed-switch p0, :pswitch_data_c

    .line 1022
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1020
    :pswitch_5
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;->GOGGLES:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    goto :goto_4

    .line 1021
    :pswitch_8
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;->CONTINUOUS_GOGGLES:Lcom/google/goggles/TracingProtos$TraceAction$Type;

    goto :goto_4

    .line 1019
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/TracingProtos$TraceAction$Type;
    .registers 2
    .parameter

    .prologue
    .line 1006
    const-class v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/TracingProtos$TraceAction$Type;
    .registers 1

    .prologue
    .line 1006
    sget-object v0, Lcom/google/goggles/TracingProtos$TraceAction$Type;->$VALUES:[Lcom/google/goggles/TracingProtos$TraceAction$Type;

    invoke-virtual {v0}, [Lcom/google/goggles/TracingProtos$TraceAction$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/TracingProtos$TraceAction$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1016
    iget v0, p0, Lcom/google/goggles/TracingProtos$TraceAction$Type;->value:I

    return v0
.end method
