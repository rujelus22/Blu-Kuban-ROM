.class public final enum Lcom/google/feedreader/extrpc/Client$Link$Relation;
.super Ljava/lang/Enum;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Relation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/feedreader/extrpc/Client$Link$Relation;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/feedreader/extrpc/Client$Link$Relation; = null

.field public static final enum ALTERNATE:Lcom/google/feedreader/extrpc/Client$Link$Relation; = null

.field public static final ALTERNATE_VALUE:I = 0x0

.field public static final enum ENCLOSURE:Lcom/google/feedreader/extrpc/Client$Link$Relation; = null

.field public static final ENCLOSURE_VALUE:I = 0x3

.field public static final enum RELATED:Lcom/google/feedreader/extrpc/Client$Link$Relation; = null

.field public static final RELATED_VALUE:I = 0x1

.field public static final enum SELF:Lcom/google/feedreader/extrpc/Client$Link$Relation; = null

.field public static final SELF_VALUE:I = 0x2

.field public static final enum VIA:Lcom/google/feedreader/extrpc/Client$Link$Relation; = null

.field public static final VIA_VALUE:I = 0x4

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Link$Relation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2224
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;

    const-string v1, "ALTERNATE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/feedreader/extrpc/Client$Link$Relation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->ALTERNATE:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    .line 2225
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;

    const-string v1, "RELATED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/feedreader/extrpc/Client$Link$Relation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->RELATED:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    .line 2226
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;

    const-string v1, "SELF"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/feedreader/extrpc/Client$Link$Relation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->SELF:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    .line 2227
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;

    const-string v1, "ENCLOSURE"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/feedreader/extrpc/Client$Link$Relation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->ENCLOSURE:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    .line 2228
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;

    const-string v1, "VIA"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/feedreader/extrpc/Client$Link$Relation;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->VIA:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    .line 2222
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/feedreader/extrpc/Client$Link$Relation;

    sget-object v1, Lcom/google/feedreader/extrpc/Client$Link$Relation;->ALTERNATE:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/feedreader/extrpc/Client$Link$Relation;->RELATED:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/feedreader/extrpc/Client$Link$Relation;->SELF:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/feedreader/extrpc/Client$Link$Relation;->ENCLOSURE:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/feedreader/extrpc/Client$Link$Relation;->VIA:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->$VALUES:[Lcom/google/feedreader/extrpc/Client$Link$Relation;

    .line 2256
    new-instance v0, Lcom/google/feedreader/extrpc/Client$Link$Relation$1;

    invoke-direct {v0}, Lcom/google/feedreader/extrpc/Client$Link$Relation$1;-><init>()V

    sput-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 2265
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2266
    iput p4, p0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->value:I

    .line 2267
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Link$Relation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2253
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/feedreader/extrpc/Client$Link$Relation;
    .registers 2
    .parameter "value"

    .prologue
    .line 2241
    packed-switch p0, :pswitch_data_14

    .line 2247
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 2242
    :pswitch_5
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->ALTERNATE:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    goto :goto_4

    .line 2243
    :pswitch_8
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->RELATED:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    goto :goto_4

    .line 2244
    :pswitch_b
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->SELF:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    goto :goto_4

    .line 2245
    :pswitch_e
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->ENCLOSURE:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    goto :goto_4

    .line 2246
    :pswitch_11
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->VIA:Lcom/google/feedreader/extrpc/Client$Link$Relation;

    goto :goto_4

    .line 2241
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/feedreader/extrpc/Client$Link$Relation;
    .registers 2
    .parameter

    .prologue
    .line 2222
    const-class v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/feedreader/extrpc/Client$Link$Relation;

    return-object p0
.end method

.method public static values()[Lcom/google/feedreader/extrpc/Client$Link$Relation;
    .registers 1

    .prologue
    .line 2222
    sget-object v0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->$VALUES:[Lcom/google/feedreader/extrpc/Client$Link$Relation;

    invoke-virtual {v0}, [Lcom/google/feedreader/extrpc/Client$Link$Relation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/feedreader/extrpc/Client$Link$Relation;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 2238
    iget v0, p0, Lcom/google/feedreader/extrpc/Client$Link$Relation;->value:I

    return v0
.end method
