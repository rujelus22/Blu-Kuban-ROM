.class public final enum Lcom/google/goggles/UrlGroupProtos$Url$Purpose;
.super Ljava/lang/Enum;
.source "UrlGroupProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/UrlGroupProtos$Url;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Purpose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/UrlGroupProtos$Url$Purpose;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/UrlGroupProtos$Url$Purpose; = null

.field public static final enum ADD_CONTACT:Lcom/google/goggles/UrlGroupProtos$Url$Purpose; = null

.field public static final ADD_CONTACT_VALUE:I = 0x9

.field public static final enum BOOK_SEARCH:Lcom/google/goggles/UrlGroupProtos$Url$Purpose; = null

.field public static final BOOK_SEARCH_VALUE:I = 0x4

.field public static final enum COPY:Lcom/google/goggles/UrlGroupProtos$Url$Purpose; = null

.field public static final COPY_VALUE:I = 0xa

.field public static final enum DIRECT_PRODUCT_LINK:Lcom/google/goggles/UrlGroupProtos$Url$Purpose; = null

.field public static final DIRECT_PRODUCT_LINK_VALUE:I = 0x3

.field public static final enum EMAIL:Lcom/google/goggles/UrlGroupProtos$Url$Purpose; = null

.field public static final EMAIL_VALUE:I = 0x8

.field public static final enum GENERIC:Lcom/google/goggles/UrlGroupProtos$Url$Purpose; = null

.field public static final GENERIC_VALUE:I = 0x1

.field public static final enum MAP_SEARCH:Lcom/google/goggles/UrlGroupProtos$Url$Purpose; = null

.field public static final MAP_SEARCH_VALUE:I = 0x2

.field public static final enum PRODUCT_SEARCH_QUERY:Lcom/google/goggles/UrlGroupProtos$Url$Purpose; = null

.field public static final PRODUCT_SEARCH_QUERY_VALUE:I = 0xc

.field public static final enum SUDOKU:Lcom/google/goggles/UrlGroupProtos$Url$Purpose; = null

.field public static final SUDOKU_VALUE:I = 0xb

.field public static final enum TELEPHONE:Lcom/google/goggles/UrlGroupProtos$Url$Purpose; = null

.field public static final TELEPHONE_VALUE:I = 0x7

.field public static final enum TRANSLATE:Lcom/google/goggles/UrlGroupProtos$Url$Purpose; = null

.field public static final TRANSLATE_VALUE:I = 0x6

.field public static final enum UNKNOWN:Lcom/google/goggles/UrlGroupProtos$Url$Purpose; = null

.field public static final UNKNOWN_VALUE:I = 0x0

.field public static final enum WEB_SEARCH:Lcom/google/goggles/UrlGroupProtos$Url$Purpose; = null

.field public static final WEB_SEARCH_VALUE:I = 0x5

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/UrlGroupProtos$Url$Purpose;",
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

    .line 50
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->UNKNOWN:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 51
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    const-string v1, "GENERIC"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->GENERIC:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 52
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    const-string v1, "MAP_SEARCH"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->MAP_SEARCH:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 53
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    const-string v1, "DIRECT_PRODUCT_LINK"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->DIRECT_PRODUCT_LINK:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 54
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    const-string v1, "BOOK_SEARCH"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->BOOK_SEARCH:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 55
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    const-string v1, "WEB_SEARCH"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->WEB_SEARCH:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 56
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    const-string v1, "TRANSLATE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->TRANSLATE:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 57
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    const-string v1, "TELEPHONE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->TELEPHONE:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 58
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    const-string v1, "EMAIL"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->EMAIL:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 59
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    const-string v1, "ADD_CONTACT"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->ADD_CONTACT:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 60
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    const-string v1, "COPY"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->COPY:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 61
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    const-string v1, "SUDOKU"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->SUDOKU:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 62
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    const-string v1, "PRODUCT_SEARCH_QUERY"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->PRODUCT_SEARCH_QUERY:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 48
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    sget-object v1, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->UNKNOWN:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->GENERIC:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->MAP_SEARCH:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->DIRECT_PRODUCT_LINK:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->BOOK_SEARCH:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->WEB_SEARCH:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->TRANSLATE:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->TELEPHONE:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->EMAIL:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->ADD_CONTACT:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->COPY:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->SUDOKU:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->PRODUCT_SEARCH_QUERY:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->$VALUES:[Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    .line 106
    new-instance v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose$1;

    invoke-direct {v0}, Lcom/google/goggles/UrlGroupProtos$Url$Purpose$1;-><init>()V

    sput-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 116
    iput p4, p0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->value:I

    .line 117
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/UrlGroupProtos$Url$Purpose;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/UrlGroupProtos$Url$Purpose;
    .registers 2
    .parameter

    .prologue
    .line 83
    packed-switch p0, :pswitch_data_2c

    .line 97
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 84
    :pswitch_5
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->UNKNOWN:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    goto :goto_4

    .line 85
    :pswitch_8
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->GENERIC:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    goto :goto_4

    .line 86
    :pswitch_b
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->MAP_SEARCH:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    goto :goto_4

    .line 87
    :pswitch_e
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->DIRECT_PRODUCT_LINK:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    goto :goto_4

    .line 88
    :pswitch_11
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->BOOK_SEARCH:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    goto :goto_4

    .line 89
    :pswitch_14
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->WEB_SEARCH:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    goto :goto_4

    .line 90
    :pswitch_17
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->TRANSLATE:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    goto :goto_4

    .line 91
    :pswitch_1a
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->TELEPHONE:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    goto :goto_4

    .line 92
    :pswitch_1d
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->EMAIL:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    goto :goto_4

    .line 93
    :pswitch_20
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->ADD_CONTACT:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    goto :goto_4

    .line 94
    :pswitch_23
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->COPY:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    goto :goto_4

    .line 95
    :pswitch_26
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->SUDOKU:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    goto :goto_4

    .line 96
    :pswitch_29
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->PRODUCT_SEARCH_QUERY:Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    goto :goto_4

    .line 83
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/UrlGroupProtos$Url$Purpose;
    .registers 2
    .parameter

    .prologue
    .line 48
    const-class v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/UrlGroupProtos$Url$Purpose;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->$VALUES:[Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    invoke-virtual {v0}, [Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/UrlGroupProtos$Url$Purpose;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 80
    iget v0, p0, Lcom/google/goggles/UrlGroupProtos$Url$Purpose;->value:I

    return v0
.end method
