.class public final enum Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$VideoData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

.field public static final enum FAILED:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

.field public static final enum FINAL:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

.field public static final enum PENDING:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

.field public static final enum READY:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15208
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 15209
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->FAILED:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 15210
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    const-string v1, "READY"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->READY:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 15211
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    const-string v1, "FINAL"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->FINAL:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 15206
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->FAILED:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->READY:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->FINAL:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    .line 15237
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 15246
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15247
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->value:I

    .line 15248
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    .registers 2
    .parameter "value"

    .prologue
    .line 15223
    packed-switch p0, :pswitch_data_12

    .line 15228
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 15224
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->PENDING:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    goto :goto_4

    .line 15225
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->FAILED:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    goto :goto_4

    .line 15226
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->READY:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    goto :goto_4

    .line 15227
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->FINAL:Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    goto :goto_4

    .line 15223
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    .registers 2
    .parameter

    .prologue
    .line 15206
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;
    .registers 1

    .prologue
    .line 15206
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 15220
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$VideoData$VideoStatus;->value:I

    return v0
.end method
