.class public final enum Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GranularityEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

.field public static final enum FINEST:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

.field public static final enum LOCALITY:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;",
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

    .line 22382
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    const-string v1, "FINEST"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->FINEST:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    .line 22383
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    const-string v1, "LOCALITY"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->LOCALITY:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    .line 22380
    new-array v0, v4, [Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->FINEST:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->LOCALITY:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    .line 22405
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 22414
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22415
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->value:I

    .line 22416
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;
    .registers 2
    .parameter "value"

    .prologue
    .line 22393
    packed-switch p0, :pswitch_data_c

    .line 22396
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 22394
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->FINEST:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    goto :goto_4

    .line 22395
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->LOCALITY:Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    goto :goto_4

    .line 22393
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;
    .registers 2
    .parameter

    .prologue
    .line 22380
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;
    .registers 1

    .prologue
    .line 22380
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 22390
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode$GranularityEnum;->value:I

    return v0
.end method
