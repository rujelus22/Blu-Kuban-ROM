.class public final enum Lcom/google/wireless/webapps/Version$ClientVersion$App;
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
    name = "App"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/webapps/Version$ClientVersion$App;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/webapps/Version$ClientVersion$App;

.field public static final enum GOOGLE_PLUS:Lcom/google/wireless/webapps/Version$ClientVersion$App;

.field public static final enum MESSAGING:Lcom/google/wireless/webapps/Version$ClientVersion$App;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/webapps/Version$ClientVersion$App;",
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

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 62
    new-instance v0, Lcom/google/wireless/webapps/Version$ClientVersion$App;

    const-string v1, "GOOGLE_PLUS"

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/wireless/webapps/Version$ClientVersion$App;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$App;->GOOGLE_PLUS:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    .line 63
    new-instance v0, Lcom/google/wireless/webapps/Version$ClientVersion$App;

    const-string v1, "MESSAGING"

    invoke-direct {v0, v1, v2, v2, v4}, Lcom/google/wireless/webapps/Version$ClientVersion$App;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$App;->MESSAGING:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    .line 60
    new-array v0, v4, [Lcom/google/wireless/webapps/Version$ClientVersion$App;

    sget-object v1, Lcom/google/wireless/webapps/Version$ClientVersion$App;->GOOGLE_PLUS:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/webapps/Version$ClientVersion$App;->MESSAGING:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$App;->$VALUES:[Lcom/google/wireless/webapps/Version$ClientVersion$App;

    .line 85
    new-instance v0, Lcom/google/wireless/webapps/Version$ClientVersion$App$1;

    invoke-direct {v0}, Lcom/google/wireless/webapps/Version$ClientVersion$App$1;-><init>()V

    sput-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$App;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput p4, p0, Lcom/google/wireless/webapps/Version$ClientVersion$App;->value:I

    .line 96
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/webapps/Version$ClientVersion$App;
    .registers 2
    .parameter "value"

    .prologue
    .line 73
    packed-switch p0, :pswitch_data_c

    .line 76
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 74
    :pswitch_5
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$App;->GOOGLE_PLUS:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    goto :goto_4

    .line 75
    :pswitch_8
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$App;->MESSAGING:Lcom/google/wireless/webapps/Version$ClientVersion$App;

    goto :goto_4

    .line 73
    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/webapps/Version$ClientVersion$App;
    .registers 2
    .parameter

    .prologue
    .line 60
    const-class v0, Lcom/google/wireless/webapps/Version$ClientVersion$App;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/webapps/Version$ClientVersion$App;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/webapps/Version$ClientVersion$App;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/google/wireless/webapps/Version$ClientVersion$App;->$VALUES:[Lcom/google/wireless/webapps/Version$ClientVersion$App;

    invoke-virtual {v0}, [Lcom/google/wireless/webapps/Version$ClientVersion$App;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/webapps/Version$ClientVersion$App;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/google/wireless/webapps/Version$ClientVersion$App;->value:I

    return v0
.end method
