.class public final enum Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;
.super Ljava/lang/Enum;
.source "Buzz.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "COMPRESSION_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

.field public static final enum NONE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

.field public static final enum ZIPPY:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;",
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

    .line 2241
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;->NONE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

    .line 2242
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

    const-string v1, "ZIPPY"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;->ZIPPY:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

    .line 2239
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;->NONE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;->ZIPPY:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

    .line 2264
    new-instance v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE$1;

    invoke-direct {v0}, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE$1;-><init>()V

    sput-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 2273
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2274
    iput p4, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;->value:I

    .line 2275
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;
    .registers 2
    .parameter "value"

    .prologue
    .line 2252
    packed-switch p0, :pswitch_data_c

    .line 2255
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2253
    :pswitch_5
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;->NONE:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

    goto :goto_4

    .line 2254
    :pswitch_8
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;->ZIPPY:Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

    goto :goto_4

    .line 2252
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;
    .registers 2
    .parameter "name"

    .prologue
    .line 2239
    const-class v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;
    .registers 1

    .prologue
    .line 2239
    sget-object v0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;->$VALUES:[Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

    invoke-virtual {v0}, [Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 2249
    iget v0, p0, Lcom/google/wireless/realtimechat/proto/Buzz$MessagingStanza$COMPRESSION_TYPE;->value:I

    return v0
.end method
