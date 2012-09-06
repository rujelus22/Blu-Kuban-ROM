.class public final enum Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;
.super Ljava/lang/Enum;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

.field public static final enum FROM_MY_CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

.field public static final enum FROM_MY_PHONE:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

.field public static final enum MY_ALBUMS:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

.field public static final enum PHOTOS_OF_ME:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;",
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

    .line 39877
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    const-string v1, "FROM_MY_CIRCLES"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->FROM_MY_CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    .line 39878
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    const-string v1, "PHOTOS_OF_ME"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->PHOTOS_OF_ME:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    .line 39879
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    const-string v1, "MY_ALBUMS"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->MY_ALBUMS:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    .line 39880
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    const-string v1, "FROM_MY_PHONE"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->FROM_MY_PHONE:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    .line 39875
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->FROM_MY_CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->PHOTOS_OF_ME:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->MY_ALBUMS:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->FROM_MY_PHONE:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    .line 39906
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 39915
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39916
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->value:I

    .line 39917
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 39892
    packed-switch p0, :pswitch_data_12

    .line 39897
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 39893
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->FROM_MY_CIRCLES:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    goto :goto_4

    .line 39894
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->PHOTOS_OF_ME:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    goto :goto_4

    .line 39895
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->MY_ALBUMS:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    goto :goto_4

    .line 39896
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->FROM_MY_PHONE:Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    goto :goto_4

    .line 39892
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 39875
    const-class v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;
    .registers 1

    .prologue
    .line 39875
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 39889
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Network$PhotosHomeResponse$Section$Type;->value:I

    return v0
.end method
