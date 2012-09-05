.class public final enum Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Media;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoDisplayFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

.field public static final enum NO_EMBEDDED_VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

.field public static final enum USE_EMBED_FLASH_TAG:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

.field public static final enum USE_HTML5_EMBEDDED_PLAYER:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;",
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

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5950
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    const-string v1, "NO_EMBEDDED_VIDEO"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->NO_EMBEDDED_VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 5951
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    const-string v1, "USE_HTML5_EMBEDDED_PLAYER"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->USE_HTML5_EMBEDDED_PLAYER:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 5952
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    const-string v1, "USE_EMBED_FLASH_TAG"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->USE_EMBED_FLASH_TAG:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 5948
    new-array v0, v5, [Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->NO_EMBEDDED_VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->USE_HTML5_EMBEDDED_PLAYER:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->USE_EMBED_FLASH_TAG:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    .line 5976
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 5985
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5986
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->value:I

    .line 5987
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;
    .registers 2
    .parameter "value"

    .prologue
    .line 5963
    packed-switch p0, :pswitch_data_e

    .line 5967
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 5964
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->NO_EMBEDDED_VIDEO:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    goto :goto_4

    .line 5965
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->USE_HTML5_EMBEDDED_PLAYER:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    goto :goto_4

    .line 5966
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->USE_EMBED_FLASH_TAG:Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    goto :goto_4

    .line 5963
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;
    .registers 2
    .parameter

    .prologue
    .line 5948
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;
    .registers 1

    .prologue
    .line 5948
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 5960
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Media$VideoDisplayFormat;->value:I

    return v0
.end method
