.class public final enum Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

.field public static final enum CAMERA_SYNC:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

.field public static final enum GAMES:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

.field public static final enum HANGOUT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

.field public static final enum MAIL:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

.field public static final enum MY_CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

.field public static final enum MY_COMMENT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

.field public static final enum OTHER_COMMENT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

.field public static final enum PHOTO:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

.field public static final enum POST:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

.field public static final enum SHARED_CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

.field public static final enum SYSTEM:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;",
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

    .line 23495
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    const-string v1, "POST"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 23496
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->SYSTEM:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 23497
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    const-string v1, "GAMES"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->GAMES:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 23498
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    const-string v1, "MAIL"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->MAIL:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 23499
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    const-string v1, "MY_CIRCLE"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->MY_CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 23500
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    const-string v1, "SHARED_CIRCLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->SHARED_CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 23501
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    const-string v1, "MY_COMMENT"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->MY_COMMENT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 23502
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    const-string v1, "OTHER_COMMENT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->OTHER_COMMENT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 23503
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    const-string v1, "PHOTO"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->PHOTO:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 23504
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    const-string v1, "CAMERA_SYNC"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->CAMERA_SYNC:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 23505
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    const-string v1, "HANGOUT"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->HANGOUT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 23493
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->SYSTEM:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->GAMES:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->MAIL:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->MY_CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->SHARED_CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->MY_COMMENT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->OTHER_COMMENT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->PHOTO:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->CAMERA_SYNC:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->HANGOUT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    .line 23545
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 23554
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23555
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->value:I

    .line 23556
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 23524
    packed-switch p0, :pswitch_data_26

    .line 23536
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 23525
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->POST:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    goto :goto_4

    .line 23526
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->SYSTEM:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    goto :goto_4

    .line 23527
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->GAMES:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    goto :goto_4

    .line 23528
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->MAIL:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    goto :goto_4

    .line 23529
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->MY_CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    goto :goto_4

    .line 23530
    :pswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->SHARED_CIRCLE:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    goto :goto_4

    .line 23531
    :pswitch_17
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->MY_COMMENT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    goto :goto_4

    .line 23532
    :pswitch_1a
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->OTHER_COMMENT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    goto :goto_4

    .line 23533
    :pswitch_1d
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->PHOTO:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    goto :goto_4

    .line 23534
    :pswitch_20
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->CAMERA_SYNC:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    goto :goto_4

    .line 23535
    :pswitch_23
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->HANGOUT:Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    goto :goto_4

    .line 23524
    :pswitch_data_26
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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    .registers 2
    .parameter

    .prologue
    .line 23493
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;
    .registers 1

    .prologue
    .line 23493
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 23521
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$CoalescedNotification$Type;->value:I

    return v0
.end method
