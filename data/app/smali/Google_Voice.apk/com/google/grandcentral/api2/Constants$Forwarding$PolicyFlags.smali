.class public final enum Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;
.super Ljava/lang/Enum;
.source "Constants.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Constants$Forwarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PolicyFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags; = null

.field public static final enum AUTO_AUTHENTICATE:Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags; = null

.field public static final AUTO_AUTHENTICATE_VALUE:I = 0x1

.field public static final enum NONE:Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags; = null

.field public static final NONE_VALUE:I = 0x0

.field public static final enum SKIP_PIN:Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags; = null

.field public static final SKIP_PIN_VALUE:I = 0x2

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;",
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

    .line 140
    new-instance v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->NONE:Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    .line 141
    new-instance v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    const-string v1, "AUTO_AUTHENTICATE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->AUTO_AUTHENTICATE:Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    .line 142
    new-instance v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    const-string v1, "SKIP_PIN"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->SKIP_PIN:Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    .line 138
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    sget-object v1, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->NONE:Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->AUTO_AUTHENTICATE:Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->SKIP_PIN:Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->$VALUES:[Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    .line 166
    new-instance v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags$1;

    invoke-direct {v0}, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags$1;-><init>()V

    sput-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 176
    iput p4, p0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->value:I

    .line 177
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;
    .registers 2
    .parameter "value"

    .prologue
    .line 153
    packed-switch p0, :pswitch_data_e

    .line 157
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 154
    :pswitch_5
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->NONE:Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    goto :goto_4

    .line 155
    :pswitch_8
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->AUTO_AUTHENTICATE:Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    goto :goto_4

    .line 156
    :pswitch_b
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->SKIP_PIN:Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    goto :goto_4

    .line 153
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;
    .registers 2
    .parameter "name"

    .prologue
    .line 138
    const-class v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    return-object v0
.end method

.method public static values()[Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;
    .registers 1

    .prologue
    .line 138
    sget-object v0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->$VALUES:[Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    invoke-virtual {v0}, [Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 150
    iget v0, p0, Lcom/google/grandcentral/api2/Constants$Forwarding$PolicyFlags;->value:I

    return v0
.end method
