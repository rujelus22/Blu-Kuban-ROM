.class public final enum Lcom/google/wireless/webapps/Analytics$Event$EventType;
.super Ljava/lang/Enum;
.source "Analytics.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Analytics$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/webapps/Analytics$Event$EventType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/webapps/Analytics$Event$EventType;

.field public static final enum SYSTEM:Lcom/google/wireless/webapps/Analytics$Event$EventType;

.field public static final enum UNSPECIFIED:Lcom/google/wireless/webapps/Analytics$Event$EventType;

.field public static final enum USER:Lcom/google/wireless/webapps/Analytics$Event$EventType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/webapps/Analytics$Event$EventType;",
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

    .line 1050
    new-instance v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/webapps/Analytics$Event$EventType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->UNSPECIFIED:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    .line 1051
    new-instance v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/webapps/Analytics$Event$EventType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->SYSTEM:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    .line 1052
    new-instance v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;

    const-string v1, "USER"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/webapps/Analytics$Event$EventType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->USER:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    .line 1048
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/wireless/webapps/Analytics$Event$EventType;

    sget-object v1, Lcom/google/wireless/webapps/Analytics$Event$EventType;->UNSPECIFIED:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/webapps/Analytics$Event$EventType;->SYSTEM:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/webapps/Analytics$Event$EventType;->USER:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->$VALUES:[Lcom/google/wireless/webapps/Analytics$Event$EventType;

    .line 1076
    new-instance v0, Lcom/google/wireless/webapps/Analytics$Event$EventType$1;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Analytics$Event$EventType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1085
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1086
    iput p4, p0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->value:I

    .line 1087
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/webapps/Analytics$Event$EventType;
    .registers 2
    .parameter "value"

    .prologue
    .line 1063
    packed-switch p0, :pswitch_data_e

    .line 1067
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1064
    :pswitch_5
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->UNSPECIFIED:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    goto :goto_4

    .line 1065
    :pswitch_8
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->SYSTEM:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    goto :goto_4

    .line 1066
    :pswitch_b
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->USER:Lcom/google/wireless/webapps/Analytics$Event$EventType;

    goto :goto_4

    .line 1063
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/webapps/Analytics$Event$EventType;
    .registers 2
    .parameter "name"

    .prologue
    .line 1048
    const-class v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/webapps/Analytics$Event$EventType;
    .registers 1

    .prologue
    .line 1048
    sget-object v0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->$VALUES:[Lcom/google/wireless/webapps/Analytics$Event$EventType;

    invoke-virtual {v0}, [Lcom/google/wireless/webapps/Analytics$Event$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/webapps/Analytics$Event$EventType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1060
    iget v0, p0, Lcom/google/wireless/webapps/Analytics$Event$EventType;->value:I

    return v0
.end method
