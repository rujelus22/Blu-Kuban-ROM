.class public final enum Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$StreamViewType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

.field public static final enum ALL_CIRCLES:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

.field public static final enum CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

.field public static final enum INCOMING:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

.field public static final enum NEARBY:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

.field public static final enum PERSON:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

.field public static final enum WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 43378
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    const-string v1, "PERSON"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->PERSON:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    .line 43379
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    const-string v1, "CIRCLE"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    .line 43380
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    const-string v1, "NEARBY"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->NEARBY:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    .line 43381
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    const-string v1, "ALL_CIRCLES"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->ALL_CIRCLES:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    .line 43382
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->INCOMING:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    .line 43383
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    const-string v1, "WHATS_HOT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v8, v2}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    .line 43376
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->PERSON:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->NEARBY:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->ALL_CIRCLES:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->INCOMING:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    aput-object v1, v0, v8

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    .line 43413
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 43422
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43423
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->value:I

    .line 43424
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 43397
    packed-switch p0, :pswitch_data_18

    .line 43404
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 43398
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->PERSON:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    goto :goto_4

    .line 43399
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    goto :goto_4

    .line 43400
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->NEARBY:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    goto :goto_4

    .line 43401
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->ALL_CIRCLES:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    goto :goto_4

    .line 43402
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->INCOMING:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    goto :goto_4

    .line 43403
    :pswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->WHATS_HOT:Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    goto :goto_4

    .line 43397
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 43376
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;
    .registers 1

    .prologue
    .line 43376
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 43394
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$StreamViewType$Type;->value:I

    return v0
.end method
