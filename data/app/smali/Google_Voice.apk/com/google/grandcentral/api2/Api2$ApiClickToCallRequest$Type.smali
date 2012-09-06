.class public final enum Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;
.super Ljava/lang/Enum;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type; = null

.field public static final enum C2C:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type; = null

.field public static final C2C_VALUE:I = 0x1

.field public static final enum UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type; = null

.field public static final UNKNOWN_VALUE:I = 0x0

.field public static final enum WEB_BUTTON:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type; = null

.field public static final WEB_BUTTON_VALUE:I = 0x2

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;",
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

    .line 6080
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    .line 6081
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    const-string v1, "C2C"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->C2C:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    .line 6082
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    const-string v1, "WEB_BUTTON"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->WEB_BUTTON:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    .line 6078
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->C2C:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->WEB_BUTTON:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    .line 6106
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 6115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6116
    iput p4, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->value:I

    .line 6117
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6103
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 6093
    packed-switch p0, :pswitch_data_e

    .line 6097
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 6094
    :pswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->UNKNOWN:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    goto :goto_4

    .line 6095
    :pswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->C2C:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    goto :goto_4

    .line 6096
    :pswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->WEB_BUTTON:Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    goto :goto_4

    .line 6093
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 6078
    const-class v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;
    .registers 1

    .prologue
    .line 6078
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 6090
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiClickToCallRequest$Type;->value:I

    return v0
.end method
