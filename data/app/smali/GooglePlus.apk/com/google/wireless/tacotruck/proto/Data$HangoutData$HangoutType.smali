.class public final enum Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$HangoutData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HangoutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

.field public static final enum BUSINESS:Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

.field public static final enum CONSUMER:Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38204
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    const-string v1, "CONSUMER"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->CONSUMER:Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    .line 38205
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    const-string v1, "BUSINESS"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->BUSINESS:Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    .line 38202
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->CONSUMER:Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->BUSINESS:Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    .line 38227
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 38236
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38237
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->value:I

    .line 38238
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;
    .registers 2
    .parameter "value"

    .prologue
    .line 38215
    packed-switch p0, :pswitch_data_c

    .line 38218
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 38216
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->CONSUMER:Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    goto :goto_4

    .line 38217
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->BUSINESS:Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    goto :goto_4

    .line 38215
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;
    .registers 2
    .parameter "name"

    .prologue
    .line 38202
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;
    .registers 1

    .prologue
    .line 38202
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 38212
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$HangoutData$HangoutType;->value:I

    return v0
.end method
