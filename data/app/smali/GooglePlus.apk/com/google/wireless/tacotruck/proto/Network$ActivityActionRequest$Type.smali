.class public final enum Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

.field public static final enum CLOSE_COMMENTS:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

.field public static final enum DELETE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

.field public static final enum DELETE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

.field public static final enum FOLLOW_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

.field public static final enum LIKE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

.field public static final enum MODERATE_COMMENTS:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

.field public static final enum MUTE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

.field public static final enum REMOVE_LOCATION:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

.field public static final enum REPORT_ABUSE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;",
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

    .line 10493
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    const-string v1, "DELETE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10494
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    const-string v1, "LIKE"

    invoke-direct {v0, v1, v5, v5, v6}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->LIKE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10495
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    const-string v1, "REPORT_ABUSE"

    invoke-direct {v0, v1, v6, v6, v7}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->REPORT_ABUSE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10496
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    const-string v1, "CLOSE_COMMENTS"

    invoke-direct {v0, v1, v7, v7, v8}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->CLOSE_COMMENTS:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10497
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    const-string v1, "MUTE"

    invoke-direct {v0, v1, v8, v8, v9}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->MUTE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10498
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    const-string v1, "REMOVE_LOCATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->REMOVE_LOCATION:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10499
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    const-string v1, "MODERATE_COMMENTS"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->MODERATE_COMMENTS:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10500
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    const-string v1, "DELETE_COMMENT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10501
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    const-string v1, "FOLLOW_ACTIVITY"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->FOLLOW_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10491
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->LIKE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->REPORT_ABUSE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->CLOSE_COMMENTS:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->MUTE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->REMOVE_LOCATION:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->MODERATE_COMMENTS:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->FOLLOW_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    .line 10537
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 10546
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10547
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->value:I

    .line 10548
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 10518
    packed-switch p0, :pswitch_data_20

    .line 10528
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 10519
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    goto :goto_4

    .line 10520
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->LIKE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    goto :goto_4

    .line 10521
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->REPORT_ABUSE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    goto :goto_4

    .line 10522
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->CLOSE_COMMENTS:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    goto :goto_4

    .line 10523
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->MUTE:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    goto :goto_4

    .line 10524
    :pswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->REMOVE_LOCATION:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    goto :goto_4

    .line 10525
    :pswitch_17
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->MODERATE_COMMENTS:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    goto :goto_4

    .line 10526
    :pswitch_1a
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->DELETE_COMMENT:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    goto :goto_4

    .line 10527
    :pswitch_1d
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->FOLLOW_ACTIVITY:Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    goto :goto_4

    .line 10518
    :pswitch_data_20
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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 10491
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;
    .registers 1

    .prologue
    .line 10491
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 10515
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$ActivityActionRequest$Type;->value:I

    return v0
.end method
