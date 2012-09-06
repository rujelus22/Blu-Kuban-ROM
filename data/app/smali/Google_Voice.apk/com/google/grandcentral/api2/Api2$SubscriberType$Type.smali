.class public final enum Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
.super Ljava/lang/Enum;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$SubscriberType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Api2$SubscriberType$Type; = null

.field public static final enum CLIENT_ONLY:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type; = null

.field public static final CLIENT_ONLY_VALUE:I = 0x3

.field public static final enum FULL:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type; = null

.field public static final FULL_VALUE:I = 0x2

.field public static final enum LITE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type; = null

.field public static final LITE_VALUE:I = 0x1

.field public static final enum NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type; = null

.field public static final NONE_VALUE:I = 0x0

.field public static final enum UNKNOWN:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type; = null

.field public static final UNKNOWN_VALUE:I = 0xff

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1926
    new-instance v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    .line 1927
    new-instance v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    const-string v1, "LITE"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->LITE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    .line 1928
    new-instance v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->FULL:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    .line 1929
    new-instance v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    const-string v1, "CLIENT_ONLY"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->CLIENT_ONLY:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    .line 1930
    new-instance v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    const-string v1, "UNKNOWN"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v7, v7, v2}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    .line 1924
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->LITE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->FULL:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->CLIENT_ONLY:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->$VALUES:[Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    .line 1958
    new-instance v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1967
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1968
    iput p4, p0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->value:I

    .line 1969
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1955
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 1943
    sparse-switch p0, :sswitch_data_14

    .line 1949
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1944
    :sswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->NONE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    goto :goto_4

    .line 1945
    :sswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->LITE:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    goto :goto_4

    .line 1946
    :sswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->FULL:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    goto :goto_4

    .line 1947
    :sswitch_e
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->CLIENT_ONLY:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    goto :goto_4

    .line 1948
    :sswitch_11
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    goto :goto_4

    .line 1943
    :sswitch_data_14
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_8
        0x2 -> :sswitch_b
        0x3 -> :sswitch_e
        0xff -> :sswitch_11
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 1924
    const-class v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;
    .registers 1

    .prologue
    .line 1924
    sget-object v0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->$VALUES:[Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1940
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$SubscriberType$Type;->value:I

    return v0
.end method
