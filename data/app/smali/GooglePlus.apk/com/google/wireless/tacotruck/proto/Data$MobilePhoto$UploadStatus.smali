.class public final enum Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UploadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

.field public static final enum ORIGINAL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

.field public static final enum PLACEHOLDER:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

.field public static final enum THUMBNAIL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;",
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

    .line 17148
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    const-string v1, "ORIGINAL"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->ORIGINAL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 17149
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    const-string v1, "THUMBNAIL"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->THUMBNAIL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 17150
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    const-string v1, "PLACEHOLDER"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->PLACEHOLDER:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 17146
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->ORIGINAL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->THUMBNAIL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->PLACEHOLDER:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    .line 17174
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 17183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17184
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->value:I

    .line 17185
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
    .registers 2
    .parameter "value"

    .prologue
    .line 17161
    packed-switch p0, :pswitch_data_e

    .line 17165
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 17162
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->ORIGINAL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    goto :goto_4

    .line 17163
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->THUMBNAIL:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    goto :goto_4

    .line 17164
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->PLACEHOLDER:Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    goto :goto_4

    .line 17161
    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 17146
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
    .registers 1

    .prologue
    .line 17146
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 17158
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;->value:I

    return v0
.end method
