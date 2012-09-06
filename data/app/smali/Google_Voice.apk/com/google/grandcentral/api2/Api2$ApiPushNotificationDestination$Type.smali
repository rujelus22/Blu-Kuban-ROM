.class public final enum Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;
.super Ljava/lang/Enum;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type; = null

.field public static final enum ANDROID_DATA_MESSAGING:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type; = null

.field public static final ANDROID_DATA_MESSAGING_VALUE:I = 0x2

.field public static final enum ANDROID_TICKLER:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type; = null

.field public static final enum ANDROID_TICKLER_V2:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type; = null

.field public static final ANDROID_TICKLER_V2_VALUE:I = 0x4

.field public static final ANDROID_TICKLER_VALUE:I = 0x1

.field public static final enum APNS:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type; = null

.field public static final APNS_VALUE:I = 0x3

.field public static final enum UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

.field public static final UNKNOWN_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36568
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    .line 36569
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    const-string v1, "ANDROID_TICKLER"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->ANDROID_TICKLER:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    .line 36570
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    const-string v1, "ANDROID_DATA_MESSAGING"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->ANDROID_DATA_MESSAGING:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    .line 36571
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    const-string v1, "APNS"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->APNS:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    .line 36572
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    const-string v1, "ANDROID_TICKLER_V2"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->ANDROID_TICKLER_V2:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    .line 36566
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->ANDROID_TICKLER:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->ANDROID_DATA_MESSAGING:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->APNS:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->ANDROID_TICKLER_V2:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    .line 36600
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 36609
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36610
    iput p4, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->value:I

    .line 36611
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36597
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 36585
    packed-switch p0, :pswitch_data_14

    .line 36591
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 36586
    :pswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    goto :goto_4

    .line 36587
    :pswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->ANDROID_TICKLER:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    goto :goto_4

    .line 36588
    :pswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->ANDROID_DATA_MESSAGING:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    goto :goto_4

    .line 36589
    :pswitch_e
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->APNS:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    goto :goto_4

    .line 36590
    :pswitch_11
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->ANDROID_TICKLER_V2:Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    goto :goto_4

    .line 36585
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 36566
    const-class v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;
    .registers 1

    .prologue
    .line 36566
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 36582
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPushNotificationDestination$Type;->value:I

    return v0
.end method
