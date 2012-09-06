.class public final enum Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhotosSortBy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

.field public static final enum TIMESTAMP:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

.field public static final enum UPLOAD_TIME:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28517
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    const-string v1, "TIMESTAMP"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->TIMESTAMP:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    .line 28518
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    const-string v1, "UPLOAD_TIME"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->UPLOAD_TIME:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    .line 28515
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->TIMESTAMP:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->UPLOAD_TIME:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    .line 28540
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 28549
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28550
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->value:I

    .line 28551
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    .registers 2
    .parameter "value"

    .prologue
    .line 28528
    packed-switch p0, :pswitch_data_c

    .line 28531
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 28529
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->TIMESTAMP:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    goto :goto_4

    .line 28530
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->UPLOAD_TIME:Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    goto :goto_4

    .line 28528
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    .registers 2
    .parameter "name"

    .prologue
    .line 28515
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;
    .registers 1

    .prologue
    .line 28515
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 28525
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$GetStreamPhotosRequest$PhotosSortBy;->value:I

    return v0
.end method
