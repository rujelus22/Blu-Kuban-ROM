.class public final enum Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;
.super Ljava/lang/Enum;
.source "Webclient.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

.field public static final enum CACHE:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

.field public static final enum DB:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

.field public static final enum NETWORK:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

.field public static final enum UNKNOWN:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;",
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

    .line 1847
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->UNKNOWN:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    .line 1848
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->NETWORK:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    .line 1849
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    const-string v1, "DB"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->DB:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    .line 1850
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    const-string v1, "CACHE"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->CACHE:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    .line 1845
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    sget-object v1, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->UNKNOWN:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->NETWORK:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->DB:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->CACHE:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->$VALUES:[Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    .line 1876
    new-instance v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource$1;

    invoke-direct {v0}, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource$1;-><init>()V

    sput-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1885
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1886
    iput p4, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->value:I

    .line 1887
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;
    .registers 2
    .parameter "value"

    .prologue
    .line 1862
    packed-switch p0, :pswitch_data_12

    .line 1867
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1863
    :pswitch_5
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->UNKNOWN:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    goto :goto_4

    .line 1864
    :pswitch_8
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->NETWORK:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    goto :goto_4

    .line 1865
    :pswitch_b
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->DB:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    goto :goto_4

    .line 1866
    :pswitch_e
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->CACHE:Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    goto :goto_4

    .line 1862
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;
    .registers 2
    .parameter "name"

    .prologue
    .line 1845
    const-class v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;
    .registers 1

    .prologue
    .line 1845
    sget-object v0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->$VALUES:[Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    invoke-virtual {v0}, [Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1859
    iget v0, p0, Lcom/google/wireless/contacts/proto/Webclient$ClientResponseParams$ResponseSource;->value:I

    return v0
.end method
