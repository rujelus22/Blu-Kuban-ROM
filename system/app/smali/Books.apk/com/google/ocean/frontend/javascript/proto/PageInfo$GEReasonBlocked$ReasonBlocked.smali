.class public final enum Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;
.super Ljava/lang/Enum;
.source "PageInfo.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReasonBlocked"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

.field public static final enum ACCOUNT_BLACKLISTED:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

.field public static final enum ACCOUNT_SHARING:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

.field public static final enum NOT_BLOCKED:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

.field public static final enum OFFLINE_LIMIT:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

.field public static final enum PAYMENT_DECLINED:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

.field public static final enum SERVER_BUG:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

.field public static final enum TEMPORARY_ERROR:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1977
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    const-string v1, "NOT_BLOCKED"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->NOT_BLOCKED:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    .line 1978
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    const-string v1, "TEMPORARY_ERROR"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->TEMPORARY_ERROR:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    .line 1979
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    const-string v1, "ACCOUNT_SHARING"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->ACCOUNT_SHARING:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    .line 1980
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    const-string v1, "OFFLINE_LIMIT"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->OFFLINE_LIMIT:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    .line 1981
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    const-string v1, "ACCOUNT_BLACKLISTED"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->ACCOUNT_BLACKLISTED:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    .line 1982
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    const-string v1, "SERVER_BUG"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->SERVER_BUG:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    .line 1983
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    const-string v1, "PAYMENT_DECLINED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->PAYMENT_DECLINED:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    .line 1975
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    sget-object v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->NOT_BLOCKED:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->TEMPORARY_ERROR:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->ACCOUNT_SHARING:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->OFFLINE_LIMIT:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->ACCOUNT_BLACKLISTED:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->SERVER_BUG:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->PAYMENT_DECLINED:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->$VALUES:[Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    .line 2007
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked$1;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked$1;-><init>()V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 2016
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2017
    iput p3, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->index:I

    .line 2018
    iput p4, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->value:I

    .line 2019
    return-void
.end method

.method public static valueOf(I)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;
    .registers 2
    .parameter "value"

    .prologue
    .line 1990
    packed-switch p0, :pswitch_data_1a

    .line 1998
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1991
    :pswitch_5
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->NOT_BLOCKED:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    goto :goto_4

    .line 1992
    :pswitch_8
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->TEMPORARY_ERROR:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    goto :goto_4

    .line 1993
    :pswitch_b
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->ACCOUNT_SHARING:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    goto :goto_4

    .line 1994
    :pswitch_e
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->OFFLINE_LIMIT:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    goto :goto_4

    .line 1995
    :pswitch_11
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->ACCOUNT_BLACKLISTED:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    goto :goto_4

    .line 1996
    :pswitch_14
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->SERVER_BUG:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    goto :goto_4

    .line 1997
    :pswitch_17
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->PAYMENT_DECLINED:Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    goto :goto_4

    .line 1990
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;
    .registers 2
    .parameter

    .prologue
    .line 1975
    const-class v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    return-object v0
.end method

.method public static values()[Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;
    .registers 1

    .prologue
    .line 1975
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->$VALUES:[Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    invoke-virtual {v0}, [Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1987
    iget v0, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$GEReasonBlocked$ReasonBlocked;->value:I

    return v0
.end method
