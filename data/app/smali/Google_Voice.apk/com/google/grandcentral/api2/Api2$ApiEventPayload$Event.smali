.class public final enum Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;
.super Ljava/lang/Enum;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiEventPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event; = null

.field public static final enum ALL:Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event; = null

.field public static final ALL_VALUE:I = 0x7fffffff

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;",
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
    const/4 v3, 0x0

    .line 36033
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;

    const-string v1, "ALL"

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;->ALL:Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;

    .line 36031
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;->ALL:Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;

    .line 36053
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 36062
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36063
    iput p4, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;->value:I

    .line 36064
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36050
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;
    .registers 2
    .parameter "value"

    .prologue
    .line 36042
    packed-switch p0, :pswitch_data_8

    .line 36044
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 36043
    :pswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;->ALL:Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;

    goto :goto_4

    .line 36042
    :pswitch_data_8
    .packed-switch 0x7fffffff
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;
    .registers 2
    .parameter "name"

    .prologue
    .line 36031
    const-class v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;
    .registers 1

    .prologue
    .line 36031
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 36039
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiEventPayload$Event;->value:I

    return v0
.end method
