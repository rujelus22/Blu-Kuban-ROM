.class public final enum Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageUrlFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

.field public static final enum FIFE_CONTENT:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

.field public static final enum FIFE_LEGACY:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

.field public static final enum IMAGE_PROXY:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

.field public static final enum UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;",
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

    .line 13
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    const-string v1, "FIFE_LEGACY"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->FIFE_LEGACY:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 14
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    const-string v1, "FIFE_CONTENT"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->FIFE_CONTENT:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 15
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    const-string v1, "IMAGE_PROXY"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->IMAGE_PROXY:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 16
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->FIFE_LEGACY:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->FIFE_CONTENT:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->IMAGE_PROXY:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    .line 42
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->value:I

    .line 53
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    .registers 2
    .parameter "value"

    .prologue
    .line 28
    packed-switch p0, :pswitch_data_12

    .line 33
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 29
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->FIFE_LEGACY:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    goto :goto_4

    .line 30
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->FIFE_CONTENT:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    goto :goto_4

    .line 31
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->IMAGE_PROXY:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    goto :goto_4

    .line 32
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->UNKNOWN:Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    goto :goto_4

    .line 28
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    .registers 2
    .parameter

    .prologue
    .line 11
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;->value:I

    return v0
.end method
