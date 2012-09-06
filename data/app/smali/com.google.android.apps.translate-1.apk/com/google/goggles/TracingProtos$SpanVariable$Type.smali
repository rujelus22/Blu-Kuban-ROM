.class public final enum Lcom/google/goggles/TracingProtos$SpanVariable$Type;
.super Ljava/lang/Enum;
.source "TracingProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/TracingProtos$SpanVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/TracingProtos$SpanVariable$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final enum ACQUIRE_TO_IMAGE:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final ACQUIRE_TO_IMAGE_VALUE:I = 0x2

.field public static final enum BARCODE_RECOGNIZER_LANDSCAPE_AND_QR:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final BARCODE_RECOGNIZER_LANDSCAPE_AND_QR_VALUE:I = 0x12

.field public static final enum BARCODE_RECOGNIZER_LOAD:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final BARCODE_RECOGNIZER_LOAD_VALUE:I = 0x11

.field public static final enum BARCODE_RECOGNIZER_PORTRAIT:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final BARCODE_RECOGNIZER_PORTRAIT_VALUE:I = 0x13

.field public static final enum BARCODE_TOTAL_LATENCY:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final BARCODE_TOTAL_LATENCY_VALUE:I = 0x14

.field public static final enum CONTINUOUS_END_TO_END:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final CONTINUOUS_END_TO_END_VALUE:I = 0xa

.field public static final enum CONTINUOUS_IMAGE_ENCODE:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final CONTINUOUS_IMAGE_ENCODE_VALUE:I = 0xb

.field public static final enum CONTINUOUS_IMAGE_TO_IMAGE:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final CONTINUOUS_IMAGE_TO_IMAGE_VALUE:I = 0x10

.field public static final enum CONTINUOUS_PUSH:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final enum CONTINUOUS_PUSH_TO_PULL:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final CONTINUOUS_PUSH_TO_PULL_VALUE:I = 0xd

.field public static final CONTINUOUS_PUSH_VALUE:I = 0xc

.field public static final enum CONTINUOUS_RENDER_RESPONSE:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final CONTINUOUS_RENDER_RESPONSE_VALUE:I = 0x15

.field public static final enum CONTINUOUS_REQUEST_TO_REQUEST:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final CONTINUOUS_REQUEST_TO_REQUEST_VALUE:I = 0xe

.field public static final enum CONTINUOUS_THUMBNAIL_FETCH:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final CONTINUOUS_THUMBNAIL_FETCH_VALUE:I = 0xf

.field public static final enum FOCUS:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final FOCUS_VALUE:I = 0x3

.field public static final enum IMAGE_REENCODE:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final IMAGE_REENCODE_VALUE:I = 0x4

.field public static final enum RENDER_RESULT:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final RENDER_RESULT_VALUE:I = 0x6

.field public static final enum REQUEST_TO_RESPONSE:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final REQUEST_TO_RESPONSE_VALUE:I = 0x5

.field public static final enum START_TO_RENDERED:Lcom/google/goggles/TracingProtos$SpanVariable$Type; = null

.field public static final START_TO_RENDERED_VALUE:I = 0x1

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/TracingProtos$SpanVariable$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 46
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "START_TO_RENDERED"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->START_TO_RENDERED:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 47
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "ACQUIRE_TO_IMAGE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->ACQUIRE_TO_IMAGE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 48
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "FOCUS"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->FOCUS:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 49
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "IMAGE_REENCODE"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->IMAGE_REENCODE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 50
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "REQUEST_TO_RESPONSE"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->REQUEST_TO_RESPONSE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 51
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "RENDER_RESULT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->RENDER_RESULT:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 52
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "CONTINUOUS_END_TO_END"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_END_TO_END:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 53
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "CONTINUOUS_IMAGE_TO_IMAGE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_IMAGE_TO_IMAGE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 54
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "CONTINUOUS_IMAGE_ENCODE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_IMAGE_ENCODE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 55
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "CONTINUOUS_PUSH"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_PUSH:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 56
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "CONTINUOUS_PUSH_TO_PULL"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_PUSH_TO_PULL:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 57
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "CONTINUOUS_RENDER_RESPONSE"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_RENDER_RESPONSE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 58
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "CONTINUOUS_REQUEST_TO_REQUEST"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_REQUEST_TO_REQUEST:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 59
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "CONTINUOUS_THUMBNAIL_FETCH"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_THUMBNAIL_FETCH:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 60
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "BARCODE_RECOGNIZER_LOAD"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_RECOGNIZER_LOAD:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 61
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "BARCODE_RECOGNIZER_LANDSCAPE_AND_QR"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_RECOGNIZER_LANDSCAPE_AND_QR:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 62
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "BARCODE_RECOGNIZER_PORTRAIT"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_RECOGNIZER_PORTRAIT:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 63
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const-string v1, "BARCODE_TOTAL_LATENCY"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/TracingProtos$SpanVariable$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_TOTAL_LATENCY:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 44
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->START_TO_RENDERED:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->ACQUIRE_TO_IMAGE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->FOCUS:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->IMAGE_REENCODE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->REQUEST_TO_RESPONSE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->RENDER_RESULT:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_END_TO_END:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_IMAGE_TO_IMAGE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_IMAGE_ENCODE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_PUSH:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_PUSH_TO_PULL:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_RENDER_RESPONSE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_REQUEST_TO_REQUEST:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_THUMBNAIL_FETCH:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_RECOGNIZER_LOAD:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_RECOGNIZER_LANDSCAPE_AND_QR:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_RECOGNIZER_PORTRAIT:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_TOTAL_LATENCY:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->$VALUES:[Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    .line 117
    new-instance v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type$1;

    invoke-direct {v0}, Lcom/google/goggles/TracingProtos$SpanVariable$Type$1;-><init>()V

    sput-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput p4, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->value:I

    .line 128
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/TracingProtos$SpanVariable$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/TracingProtos$SpanVariable$Type;
    .registers 2
    .parameter

    .prologue
    .line 89
    packed-switch p0, :pswitch_data_3c

    .line 108
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 90
    :pswitch_5
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->START_TO_RENDERED:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 91
    :pswitch_8
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->ACQUIRE_TO_IMAGE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 92
    :pswitch_b
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->FOCUS:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 93
    :pswitch_e
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->IMAGE_REENCODE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 94
    :pswitch_11
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->REQUEST_TO_RESPONSE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 95
    :pswitch_14
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->RENDER_RESULT:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 96
    :pswitch_17
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_END_TO_END:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 97
    :pswitch_1a
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_IMAGE_TO_IMAGE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 98
    :pswitch_1d
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_IMAGE_ENCODE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 99
    :pswitch_20
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_PUSH:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 100
    :pswitch_23
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_PUSH_TO_PULL:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 101
    :pswitch_26
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_RENDER_RESPONSE:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 102
    :pswitch_29
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_REQUEST_TO_REQUEST:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 103
    :pswitch_2c
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->CONTINUOUS_THUMBNAIL_FETCH:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 104
    :pswitch_2f
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_RECOGNIZER_LOAD:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 105
    :pswitch_32
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_RECOGNIZER_LANDSCAPE_AND_QR:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 106
    :pswitch_35
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_RECOGNIZER_PORTRAIT:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 107
    :pswitch_38
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->BARCODE_TOTAL_LATENCY:Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    goto :goto_4

    .line 89
    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_17
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_29
        :pswitch_2c
        :pswitch_1a
        :pswitch_2f
        :pswitch_32
        :pswitch_35
        :pswitch_38
        :pswitch_26
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/TracingProtos$SpanVariable$Type;
    .registers 2
    .parameter

    .prologue
    .line 44
    const-class v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/TracingProtos$SpanVariable$Type;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->$VALUES:[Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    invoke-virtual {v0}, [Lcom/google/goggles/TracingProtos$SpanVariable$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/TracingProtos$SpanVariable$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/google/goggles/TracingProtos$SpanVariable$Type;->value:I

    return v0
.end method
