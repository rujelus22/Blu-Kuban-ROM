.class public final enum Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;
.super Ljava/lang/Enum;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos$ProcessorStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/TracingProtos$ProcessorStatus$Type; = null

.field public static final enum ANNOTATION_TRACKER:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type; = null

.field public static final ANNOTATION_TRACKER_VALUE:I = 0x2

.field public static final enum BARCODE_SCANNER:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type; = null

.field public static final BARCODE_SCANNER_VALUE:I = 0x1

.field public static final enum IMAGE_BLUR_PROCESSOR:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type; = null

.field public static final IMAGE_BLUR_PROCESSOR_VALUE:I = 0x3

.field public static final enum REQUEST_PIPELINE:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type; = null

.field public static final REQUEST_PIPELINE_VALUE:I = 0x4

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;",
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

    .line 2057
    new-instance v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    const-string v1, "BARCODE_SCANNER"

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->BARCODE_SCANNER:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    .line 2058
    new-instance v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    const-string v1, "ANNOTATION_TRACKER"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->ANNOTATION_TRACKER:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    .line 2059
    new-instance v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    const-string v1, "IMAGE_BLUR_PROCESSOR"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->IMAGE_BLUR_PROCESSOR:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    .line 2060
    new-instance v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    const-string v1, "REQUEST_PIPELINE"

    invoke-direct {v0, v1, v4, v4, v6}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->REQUEST_PIPELINE:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    .line 2055
    new-array v0, v6, [Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    sget-object v1, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->BARCODE_SCANNER:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->ANNOTATION_TRACKER:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->IMAGE_BLUR_PROCESSOR:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->REQUEST_PIPELINE:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->$VALUES:[Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    .line 2086
    new-instance v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type$1;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type$1;-><init>()V

    sput-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 2095
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2096
    iput p4, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->value:I

    .line 2097
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2083
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;
    .registers 2
    .parameter

    .prologue
    .line 2072
    packed-switch p0, :pswitch_data_12

    .line 2077
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2073
    :pswitch_5
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->BARCODE_SCANNER:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    goto :goto_4

    .line 2074
    :pswitch_8
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->ANNOTATION_TRACKER:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    goto :goto_4

    .line 2075
    :pswitch_b
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->IMAGE_BLUR_PROCESSOR:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    goto :goto_4

    .line 2076
    :pswitch_e
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->REQUEST_PIPELINE:Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    goto :goto_4

    .line 2072
    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;
    .registers 2
    .parameter

    .prologue
    .line 2055
    const-class v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;
    .registers 1

    .prologue
    .line 2055
    sget-object v0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->$VALUES:[Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    invoke-virtual {v0}, [Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 2069
    iget v0, p0, Lcom/google/goggles/TracingProtos$ProcessorStatus$Type;->value:I

    return v0
.end method
