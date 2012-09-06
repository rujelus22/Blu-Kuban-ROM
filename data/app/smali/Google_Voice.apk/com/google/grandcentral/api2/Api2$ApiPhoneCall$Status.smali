.class public final enum Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;
.super Ljava/lang/Enum;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status; = null

.field public static final enum READ:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status; = null

.field public static final READ_VALUE:I = 0x1

.field public static final enum UNKNOWN_STATUS:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status; = null

.field public static final UNKNOWN_STATUS_VALUE:I = 0xff

.field public static final enum UNPROCESSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status; = null

.field public static final UNPROCESSED_VALUE:I = 0x2

.field public static final enum UNREAD:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

.field public static final UNREAD_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;",
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
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17888
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    const-string v1, "UNREAD"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->UNREAD:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    .line 17889
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    const-string v1, "READ"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->READ:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    .line 17890
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    const-string v1, "UNPROCESSED"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->UNPROCESSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    .line 17891
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    const-string v1, "UNKNOWN_STATUS"

    const/16 v2, 0xff

    invoke-direct {v0, v1, v6, v6, v2}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->UNKNOWN_STATUS:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    .line 17886
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->UNREAD:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->READ:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->UNPROCESSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->UNKNOWN_STATUS:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    .line 17917
    new-instance v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 17926
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17927
    iput p4, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->value:I

    .line 17928
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17914
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;
    .registers 2
    .parameter "value"

    .prologue
    .line 17903
    sparse-switch p0, :sswitch_data_12

    .line 17908
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 17904
    :sswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->UNREAD:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    goto :goto_4

    .line 17905
    :sswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->READ:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    goto :goto_4

    .line 17906
    :sswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->UNPROCESSED:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    goto :goto_4

    .line 17907
    :sswitch_e
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->UNKNOWN_STATUS:Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    goto :goto_4

    .line 17903
    nop

    :sswitch_data_12
    .sparse-switch
        0x0 -> :sswitch_5
        0x1 -> :sswitch_8
        0x2 -> :sswitch_b
        0xff -> :sswitch_e
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;
    .registers 2
    .parameter "name"

    .prologue
    .line 17886
    const-class v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;
    .registers 1

    .prologue
    .line 17886
    sget-object v0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->$VALUES:[Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 17900
    iget v0, p0, Lcom/google/grandcentral/api2/Api2$ApiPhoneCall$Status;->value:I

    return v0
.end method
