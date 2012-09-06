.class public final enum Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$VideoStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoFormatId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

.field public static final enum FLV320:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

.field public static final enum FLV_H264_AAC_HIGH:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

.field public static final enum FLV_H264_AAC_MED:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

.field public static final enum MP4_AVC720P_AAC:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

.field public static final enum MP4_AVCBASE640_AAC:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

.field public static final enum MP4_H264_AAC_1080P:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

.field public static final enum THREEGPP_MPEG4SP_AAC_HIGH:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;",
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
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 15961
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    const-string v1, "FLV320"

    invoke-direct {v0, v1, v6, v6, v5}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->FLV320:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    .line 15962
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    const-string v1, "MP4_AVCBASE640_AAC"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->MP4_AVCBASE640_AAC:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    .line 15963
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    const-string v1, "MP4_AVC720P_AAC"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->MP4_AVC720P_AAC:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    .line 15964
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    const-string v1, "FLV_H264_AAC_MED"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->FLV_H264_AAC_MED:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    .line 15965
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    const-string v1, "FLV_H264_AAC_HIGH"

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/16 v4, 0x23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->FLV_H264_AAC_HIGH:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    .line 15966
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    const-string v1, "THREEGPP_MPEG4SP_AAC_HIGH"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->THREEGPP_MPEG4SP_AAC_HIGH:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    .line 15967
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    const-string v1, "MP4_H264_AAC_1080P"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/16 v4, 0x25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->MP4_H264_AAC_1080P:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    .line 15959
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->FLV320:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->MP4_AVCBASE640_AAC:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->MP4_AVC720P_AAC:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->FLV_H264_AAC_MED:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    aput-object v1, v0, v9

    const/4 v1, 0x4

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->FLV_H264_AAC_HIGH:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->THREEGPP_MPEG4SP_AAC_HIGH:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    aput-object v1, v0, v5

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->MP4_H264_AAC_1080P:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    .line 15999
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 16008
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16009
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->value:I

    .line 16010
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;
    .registers 2
    .parameter "value"

    .prologue
    .line 15982
    sparse-switch p0, :sswitch_data_1a

    .line 15990
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 15983
    :sswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->FLV320:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    goto :goto_4

    .line 15984
    :sswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->MP4_AVCBASE640_AAC:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    goto :goto_4

    .line 15985
    :sswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->MP4_AVC720P_AAC:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    goto :goto_4

    .line 15986
    :sswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->FLV_H264_AAC_MED:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    goto :goto_4

    .line 15987
    :sswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->FLV_H264_AAC_HIGH:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    goto :goto_4

    .line 15988
    :sswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->THREEGPP_MPEG4SP_AAC_HIGH:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    goto :goto_4

    .line 15989
    :sswitch_17
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->MP4_H264_AAC_1080P:Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    goto :goto_4

    .line 15982
    :sswitch_data_1a
    .sparse-switch
        0x5 -> :sswitch_5
        0x12 -> :sswitch_8
        0x16 -> :sswitch_b
        0x22 -> :sswitch_e
        0x23 -> :sswitch_11
        0x24 -> :sswitch_14
        0x25 -> :sswitch_17
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;
    .registers 2
    .parameter "name"

    .prologue
    .line 15959
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;
    .registers 1

    .prologue
    .line 15959
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 15979
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoStream$VideoFormatId;->value:I

    return v0
.end method
