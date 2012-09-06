.class public final enum Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationChannel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

.field public static final enum ANDROID_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

.field public static final enum EMAIL:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

.field public static final enum IPHONE_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

.field public static final enum SMS:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;",
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

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    const-string v1, "IPHONE_PUSH"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->IPHONE_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 61
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    const-string v1, "ANDROID_PUSH"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->ANDROID_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 62
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    const-string v1, "SMS"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->SMS:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 63
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    const-string v1, "EMAIL"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->EMAIL:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->IPHONE_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->ANDROID_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->SMS:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->EMAIL:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    .line 89
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->value:I

    .line 100
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    .registers 2
    .parameter "value"

    .prologue
    .line 75
    packed-switch p0, :pswitch_data_12

    .line 80
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 76
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->IPHONE_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    goto :goto_4

    .line 77
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->ANDROID_PUSH:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    goto :goto_4

    .line 78
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->SMS:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    goto :goto_4

    .line 79
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->EMAIL:Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    goto :goto_4

    .line 75
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    .registers 2
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$NotificationChannel;->value:I

    return v0
.end method
