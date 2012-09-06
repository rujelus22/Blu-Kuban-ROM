.class public final enum Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;
.super Ljava/lang/Enum;
.source "Analytics.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics$LogEnvelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

.field public static final enum ANDROID:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

.field public static final enum ANDROID_OS:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

.field public static final enum IPHONE:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

.field public static final enum PICASA_CLIENT:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

.field public static final enum TIER2_3:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

.field public static final enum WEB:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;",
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
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 66
    new-instance v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    const-string v1, "WEB"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->WEB:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    .line 67
    new-instance v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    const-string v1, "IPHONE"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->IPHONE:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    .line 68
    new-instance v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->ANDROID:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    .line 69
    new-instance v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    const-string v1, "ANDROID_OS"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->ANDROID_OS:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    .line 70
    new-instance v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    const-string v1, "TIER2_3"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->TIER2_3:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    .line 71
    new-instance v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    const-string v1, "PICASA_CLIENT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->PICASA_CLIENT:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    .line 64
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    sget-object v1, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->WEB:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->IPHONE:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->ANDROID:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->ANDROID_OS:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->TIER2_3:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->PICASA_CLIENT:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->$VALUES:[Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    .line 101
    new-instance v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType$1;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput p4, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->value:I

    .line 112
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;
    .registers 2
    .parameter "value"

    .prologue
    .line 85
    packed-switch p0, :pswitch_data_18

    .line 92
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 86
    :pswitch_5
    sget-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->WEB:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    goto :goto_4

    .line 87
    :pswitch_8
    sget-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->IPHONE:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    goto :goto_4

    .line 88
    :pswitch_b
    sget-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->ANDROID:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    goto :goto_4

    .line 89
    :pswitch_e
    sget-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->ANDROID_OS:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    goto :goto_4

    .line 90
    :pswitch_11
    sget-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->TIER2_3:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    goto :goto_4

    .line 91
    :pswitch_14
    sget-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->PICASA_CLIENT:Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    goto :goto_4

    .line 85
    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;
    .registers 2
    .parameter "name"

    .prologue
    .line 64
    const-class v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->$VALUES:[Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    invoke-virtual {v0}, [Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$LogEnvelope$ClientType;->value:I

    return v0
.end method
