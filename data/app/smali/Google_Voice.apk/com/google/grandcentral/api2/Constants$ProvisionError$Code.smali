.class public final enum Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;
.super Ljava/lang/Enum;
.source "Constants.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Constants$ProvisionError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Constants$ProvisionError$Code; = null

.field public static final enum INVALID_REQUEST:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code; = null

.field public static final INVALID_REQUEST_VALUE:I = 0x1

.field public static final enum PERMANENT_PROVIDER_ERROR:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code; = null

.field public static final PERMANENT_PROVIDER_ERROR_VALUE:I = 0x2

.field public static final enum TRANSIENT_PROVIDER_ERROR:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code; = null

.field public static final TRANSIENT_PROVIDER_ERROR_VALUE:I = 0x3

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1319
    new-instance v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    const-string v1, "INVALID_REQUEST"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->INVALID_REQUEST:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    .line 1320
    new-instance v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    const-string v1, "PERMANENT_PROVIDER_ERROR"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->PERMANENT_PROVIDER_ERROR:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    .line 1321
    new-instance v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    const-string v1, "TRANSIENT_PROVIDER_ERROR"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->TRANSIENT_PROVIDER_ERROR:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    .line 1317
    new-array v0, v5, [Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    sget-object v1, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->INVALID_REQUEST:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->PERMANENT_PROVIDER_ERROR:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->TRANSIENT_PROVIDER_ERROR:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->$VALUES:[Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    .line 1345
    new-instance v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1354
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1355
    iput p4, p0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->value:I

    .line 1356
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1342
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;
    .registers 2
    .parameter "value"

    .prologue
    .line 1332
    packed-switch p0, :pswitch_data_e

    .line 1336
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1333
    :pswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->INVALID_REQUEST:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    goto :goto_4

    .line 1334
    :pswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->PERMANENT_PROVIDER_ERROR:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    goto :goto_4

    .line 1335
    :pswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->TRANSIENT_PROVIDER_ERROR:Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    goto :goto_4

    .line 1332
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;
    .registers 2
    .parameter "name"

    .prologue
    .line 1317
    const-class v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;
    .registers 1

    .prologue
    .line 1317
    sget-object v0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->$VALUES:[Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1329
    iget v0, p0, Lcom/google/grandcentral/api2/Constants$ProvisionError$Code;->value:I

    return v0
.end method
