.class public final enum Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;
.super Ljava/lang/Enum;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason; = null

.field public static final enum MANUAL_REFRESH:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason; = null

.field public static final MANUAL_REFRESH_VALUE:I = 0x2

.field public static final enum PUSH_NOTIFICATION:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason; = null

.field public static final PUSH_NOTIFICATION_VALUE:I = 0x1

.field public static final enum UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

.field public static final UNKNOWN_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39366
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    .line 39367
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    const-string v1, "PUSH_NOTIFICATION"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->PUSH_NOTIFICATION:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    .line 39368
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    const-string v1, "MANUAL_REFRESH"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->MANUAL_REFRESH:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    .line 39364
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->PUSH_NOTIFICATION:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->MANUAL_REFRESH:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    .line 39392
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 39401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39402
    iput p4, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->value:I

    .line 39403
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39389
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;
    .registers 2
    .parameter "value"

    .prologue
    .line 39379
    packed-switch p0, :pswitch_data_e

    .line 39383
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 39380
    :pswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    goto :goto_4

    .line 39381
    :pswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->PUSH_NOTIFICATION:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    goto :goto_4

    .line 39382
    :pswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->MANUAL_REFRESH:Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    goto :goto_4

    .line 39379
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;
    .registers 2
    .parameter "name"

    .prologue
    .line 39364
    const-class v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;
    .registers 1

    .prologue
    .line 39364
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 39376
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiCheckinRequest$Reason;->value:I

    return v0
.end method
