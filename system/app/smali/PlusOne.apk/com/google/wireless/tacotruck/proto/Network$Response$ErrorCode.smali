.class public final enum Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

.field public static final enum AGE_RESTRICTED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

.field public static final enum APP_UPGRADE_REQUIRED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

.field public static final enum BAD_PROFILE:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

.field public static final enum BAD_REQUEST:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

.field public static final enum HAS_PLUSONE_OPT_IN_REQUIRED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

.field public static final enum INVALID_ACTION_TOKEN:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

.field public static final enum NETWORK_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

.field public static final enum NOT_AUTHENTICATED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

.field public static final enum NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

.field public static final enum OUT_OF_BOX_REQUIRED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

.field public static final enum PERMISSION_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

.field public static final enum SERVER_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;",
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

    .line 1271
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    const-string v1, "SERVER_ERROR"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->SERVER_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1272
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    const-string v1, "BAD_REQUEST"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->BAD_REQUEST:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1273
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1274
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    const-string v1, "INVALID_ACTION_TOKEN"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->INVALID_ACTION_TOKEN:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1275
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    const-string v1, "NOT_AUTHENTICATED"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->NOT_AUTHENTICATED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1276
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    const-string v1, "PERMISSION_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->PERMISSION_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1277
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->NETWORK_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1278
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    const-string v1, "OUT_OF_BOX_REQUIRED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->OUT_OF_BOX_REQUIRED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1279
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    const-string v1, "APP_UPGRADE_REQUIRED"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->APP_UPGRADE_REQUIRED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1280
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    const-string v1, "HAS_PLUSONE_OPT_IN_REQUIRED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->HAS_PLUSONE_OPT_IN_REQUIRED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1281
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    const-string v1, "BAD_PROFILE"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->BAD_PROFILE:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1282
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    const-string v1, "AGE_RESTRICTED"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->AGE_RESTRICTED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1269
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->SERVER_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->BAD_REQUEST:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->INVALID_ACTION_TOKEN:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->NOT_AUTHENTICATED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->PERMISSION_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->NETWORK_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->OUT_OF_BOX_REQUIRED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->APP_UPGRADE_REQUIRED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->HAS_PLUSONE_OPT_IN_REQUIRED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->BAD_PROFILE:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->AGE_RESTRICTED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    .line 1324
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1333
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1334
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->value:I

    .line 1335
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    .registers 2
    .parameter "value"

    .prologue
    .line 1302
    packed-switch p0, :pswitch_data_2a

    .line 1315
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1303
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->SERVER_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    goto :goto_4

    .line 1304
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->BAD_REQUEST:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    goto :goto_4

    .line 1305
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->NOT_FOUND:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    goto :goto_4

    .line 1306
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->INVALID_ACTION_TOKEN:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    goto :goto_4

    .line 1307
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->NOT_AUTHENTICATED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    goto :goto_4

    .line 1308
    :pswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->PERMISSION_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    goto :goto_4

    .line 1309
    :pswitch_17
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->NETWORK_ERROR:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    goto :goto_4

    .line 1310
    :pswitch_1a
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->OUT_OF_BOX_REQUIRED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    goto :goto_4

    .line 1311
    :pswitch_1d
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->APP_UPGRADE_REQUIRED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    goto :goto_4

    .line 1312
    :pswitch_20
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->HAS_PLUSONE_OPT_IN_REQUIRED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    goto :goto_4

    .line 1313
    :pswitch_23
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->BAD_PROFILE:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    goto :goto_4

    .line 1314
    :pswitch_26
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->AGE_RESTRICTED:Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    goto :goto_4

    .line 1302
    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    .registers 2
    .parameter

    .prologue
    .line 1269
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
    .registers 1

    .prologue
    .line 1269
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1299
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;->value:I

    return v0
.end method
