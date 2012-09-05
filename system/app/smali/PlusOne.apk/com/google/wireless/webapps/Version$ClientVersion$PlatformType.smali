.class public final enum Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;
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
    name = "PlatformType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

.field public static final enum ANDROID:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

.field public static final enum IOS:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

.field public static final enum WEB:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;",
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

    .line 147
    new-instance v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    const-string v1, "WEB"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->WEB:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    .line 148
    new-instance v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    const-string v1, "IOS"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->IOS:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    .line 149
    new-instance v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    const-string v1, "ANDROID"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->ANDROID:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    .line 145
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    sget-object v1, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->WEB:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->IOS:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->ANDROID:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->$VALUES:[Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    .line 173
    new-instance v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType$1;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType$1;-><init>()V

    sput-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 183
    iput p4, p0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->value:I

    .line 184
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;
    .registers 2
    .parameter "value"

    .prologue
    .line 160
    packed-switch p0, :pswitch_data_e

    .line 164
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 161
    :pswitch_5
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->WEB:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    goto :goto_4

    .line 162
    :pswitch_8
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->IOS:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    goto :goto_4

    .line 163
    :pswitch_b
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->ANDROID:Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    goto :goto_4

    .line 160
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;
    .registers 2
    .parameter

    .prologue
    .line 145
    const-class v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;
    .registers 1

    .prologue
    .line 145
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->$VALUES:[Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    invoke-virtual {v0}, [Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$PlatformType;->value:I

    return v0
.end method
