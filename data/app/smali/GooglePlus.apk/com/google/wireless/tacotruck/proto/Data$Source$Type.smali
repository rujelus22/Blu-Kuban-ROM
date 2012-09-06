.class public final enum Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
.super Ljava/lang/Enum;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data$Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/wireless/tacotruck/proto/Data$Source$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

.field public static final enum BLOGGER:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

.field public static final enum BUZZ:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

.field public static final enum FEEDS:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

.field public static final enum NEWS:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

.field public static final enum PLACE:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

.field public static final enum TWITTER:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

.field public static final enum YOUTUBE:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Source$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1703
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    const-string v1, "NEWS"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->NEWS:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    .line 1704
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    const-string v1, "YOUTUBE"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->YOUTUBE:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    .line 1705
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    const-string v1, "FEEDS"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->FEEDS:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    .line 1706
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    const-string v1, "TWITTER"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->TWITTER:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    .line 1707
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    const-string v1, "BUZZ"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->BUZZ:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    .line 1708
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    const-string v1, "BLOGGER"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->BLOGGER:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    .line 1709
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    const-string v1, "PLACE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->PLACE:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    .line 1701
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->NEWS:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->YOUTUBE:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->FEEDS:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->TWITTER:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->BUZZ:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->BLOGGER:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->PLACE:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    .line 1741
    new-instance v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type$1;

    invoke-direct {v0}, Lcom/google/wireless/tacotruck/proto/Data$Source$Type$1;-><init>()V

    sput-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1750
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1751
    iput p4, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->value:I

    .line 1752
    return-void
.end method

.method public static valueOf(I)Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 1724
    packed-switch p0, :pswitch_data_1a

    .line 1732
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 1725
    :pswitch_5
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->NEWS:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    goto :goto_4

    .line 1726
    :pswitch_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->YOUTUBE:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    goto :goto_4

    .line 1727
    :pswitch_b
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->FEEDS:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    goto :goto_4

    .line 1728
    :pswitch_e
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->TWITTER:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    goto :goto_4

    .line 1729
    :pswitch_11
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->BUZZ:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    goto :goto_4

    .line 1730
    :pswitch_14
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->BLOGGER:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    goto :goto_4

    .line 1731
    :pswitch_17
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->PLACE:Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    goto :goto_4

    .line 1724
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 1701
    const-class v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/wireless/tacotruck/proto/Data$Source$Type;
    .registers 1

    .prologue
    .line 1701
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->$VALUES:[Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    invoke-virtual {v0}, [Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/wireless/tacotruck/proto/Data$Source$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 1721
    iget v0, p0, Lcom/google/wireless/tacotruck/proto/Data$Source$Type;->value:I

    return v0
.end method
