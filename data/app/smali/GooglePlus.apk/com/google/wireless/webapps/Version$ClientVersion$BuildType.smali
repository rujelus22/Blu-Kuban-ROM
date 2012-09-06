.class public final enum Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;
.super Ljava/lang/Enum;
.source "Version.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/webapps/Version$ClientVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BuildType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

.field public static final enum DEVELOPER:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

.field public static final enum DOGFOOD:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

.field public static final enum PUBLIC:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;",
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

    .line 103
    new-instance v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    const-string v1, "DEVELOPER"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->DEVELOPER:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    .line 104
    new-instance v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    const-string v1, "DOGFOOD"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->DOGFOOD:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    .line 105
    new-instance v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->PUBLIC:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    .line 101
    new-array v0, v5, [Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    sget-object v1, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->DEVELOPER:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->DOGFOOD:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->PUBLIC:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->$VALUES:[Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    .line 129
    new-instance v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType$1;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput p4, p0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->value:I

    .line 140
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;
    .registers 2
    .parameter "value"

    .prologue
    .line 116
    packed-switch p0, :pswitch_data_e

    .line 120
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 117
    :pswitch_5
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->DEVELOPER:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    goto :goto_4

    .line 118
    :pswitch_8
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->DOGFOOD:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    goto :goto_4

    .line 119
    :pswitch_b
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->PUBLIC:Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    goto :goto_4

    .line 116
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;
    .registers 2
    .parameter "name"

    .prologue
    .line 101
    const-class v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;
    .registers 1

    .prologue
    .line 101
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->$VALUES:[Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    invoke-virtual {v0}, [Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$BuildType;->value:I

    return v0
.end method
