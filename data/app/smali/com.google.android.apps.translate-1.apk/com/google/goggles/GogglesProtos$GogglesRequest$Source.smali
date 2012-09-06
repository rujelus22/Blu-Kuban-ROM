.class public final enum Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
.super Ljava/lang/Enum;
.source "GogglesProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/goggles/GogglesProtos$GogglesRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/goggles/GogglesProtos$GogglesRequest$Source; = null

.field public static final enum BACKGROUND:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source; = null

.field public static final BACKGROUND_VALUE:I = 0x4

.field public static final enum FELIX_SEARCH:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source; = null

.field public static final FELIX_SEARCH_VALUE:I = 0x8

.field public static final enum FELIX_TEXT:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source; = null

.field public static final FELIX_TEXT_VALUE:I = 0x9

.field public static final enum LIVE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source; = null

.field public static final LIVE_VALUE:I = 0x1

.field public static final enum PUGGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source; = null

.field public static final PUGGLE_VALUE:I = 0x5

.field public static final enum QUIMBY:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source; = null

.field public static final QUIMBY_VALUE:I = 0x6

.field public static final enum SAVED_FOR_LATER:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source; = null

.field public static final SAVED_FOR_LATER_VALUE:I = 0x3

.field public static final enum SHARED:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source; = null

.field public static final SHARED_VALUE:I = 0x2

.field public static final enum SUPERHERO:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source; = null

.field public static final SUPERHERO_VALUE:I = 0xa

.field public static final enum TRANSLATE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source; = null

.field public static final TRANSLATE_VALUE:I = 0x7

.field public static final enum UNKNOWN:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

.field public static final UNKNOWN_VALUE:I

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;",
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

    .line 2716
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->UNKNOWN:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 2717
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    const-string v1, "LIVE"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->LIVE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 2718
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    const-string v1, "SHARED"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->SHARED:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 2719
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    const-string v1, "SAVED_FOR_LATER"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->SAVED_FOR_LATER:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 2720
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->BACKGROUND:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 2721
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    const-string v1, "PUGGLE"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->PUGGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 2722
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    const-string v1, "QUIMBY"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->QUIMBY:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 2723
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    const-string v1, "TRANSLATE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->TRANSLATE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 2724
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    const-string v1, "FELIX_SEARCH"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->FELIX_SEARCH:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 2725
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    const-string v1, "FELIX_TEXT"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->FELIX_TEXT:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 2726
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    const-string v1, "SUPERHERO"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->SUPERHERO:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 2714
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    sget-object v1, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->UNKNOWN:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->LIVE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->SHARED:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->SAVED_FOR_LATER:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->BACKGROUND:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->PUGGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->QUIMBY:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->TRANSLATE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->FELIX_SEARCH:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->FELIX_TEXT:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->SUPERHERO:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->$VALUES:[Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    .line 2766
    new-instance v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source$1;

    invoke-direct {v0}, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source$1;-><init>()V

    sput-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 2775
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2776
    iput p4, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->value:I

    .line 2777
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2763
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
    .registers 2
    .parameter

    .prologue
    .line 2745
    packed-switch p0, :pswitch_data_26

    .line 2757
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2746
    :pswitch_5
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->UNKNOWN:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    goto :goto_4

    .line 2747
    :pswitch_8
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->LIVE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    goto :goto_4

    .line 2748
    :pswitch_b
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->SHARED:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    goto :goto_4

    .line 2749
    :pswitch_e
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->SAVED_FOR_LATER:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    goto :goto_4

    .line 2750
    :pswitch_11
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->BACKGROUND:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    goto :goto_4

    .line 2751
    :pswitch_14
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->PUGGLE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    goto :goto_4

    .line 2752
    :pswitch_17
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->QUIMBY:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    goto :goto_4

    .line 2753
    :pswitch_1a
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->TRANSLATE:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    goto :goto_4

    .line 2754
    :pswitch_1d
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->FELIX_SEARCH:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    goto :goto_4

    .line 2755
    :pswitch_20
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->FELIX_TEXT:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    goto :goto_4

    .line 2756
    :pswitch_23
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->SUPERHERO:Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    goto :goto_4

    .line 2745
    :pswitch_data_26
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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
    .registers 2
    .parameter

    .prologue
    .line 2714
    const-class v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    return-object v0
.end method

.method public static values()[Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;
    .registers 1

    .prologue
    .line 2714
    sget-object v0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->$VALUES:[Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    invoke-virtual {v0}, [Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 2742
    iget v0, p0, Lcom/google/goggles/GogglesProtos$GogglesRequest$Source;->value:I

    return v0
.end method
