.class public final enum Lcom/google/apps/tacotown/proto/data/Segment$Type;
.super Ljava/lang/Enum;
.source "Segment.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/data/Segment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/tacotown/proto/data/Segment$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/tacotown/proto/data/Segment$Type;

.field public static final enum HASHTAG:Lcom/google/apps/tacotown/proto/data/Segment$Type;

.field public static final enum LINE_BREAK:Lcom/google/apps/tacotown/proto/data/Segment$Type;

.field public static final enum LINK:Lcom/google/apps/tacotown/proto/data/Segment$Type;

.field public static final enum TEXT:Lcom/google/apps/tacotown/proto/data/Segment$Type;

.field public static final enum USER_MENTION:Lcom/google/apps/tacotown/proto/data/Segment$Type;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/tacotown/proto/data/Segment$Type;",
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

    .line 25
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/apps/tacotown/proto/data/Segment$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->TEXT:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    .line 26
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;

    const-string v1, "LINE_BREAK"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/apps/tacotown/proto/data/Segment$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->LINE_BREAK:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    .line 27
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;

    const-string v1, "LINK"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/google/apps/tacotown/proto/data/Segment$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->LINK:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    .line 28
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;

    const-string v1, "USER_MENTION"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/google/apps/tacotown/proto/data/Segment$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->USER_MENTION:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    .line 29
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;

    const-string v1, "HASHTAG"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/google/apps/tacotown/proto/data/Segment$Type;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->HASHTAG:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/apps/tacotown/proto/data/Segment$Type;

    sget-object v1, Lcom/google/apps/tacotown/proto/data/Segment$Type;->TEXT:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/tacotown/proto/data/Segment$Type;->LINE_BREAK:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/apps/tacotown/proto/data/Segment$Type;->LINK:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/apps/tacotown/proto/data/Segment$Type;->USER_MENTION:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/apps/tacotown/proto/data/Segment$Type;->HASHTAG:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->$VALUES:[Lcom/google/apps/tacotown/proto/data/Segment$Type;

    .line 57
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Segment$Type$1;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/data/Segment$Type$1;-><init>()V

    sput-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p4, p0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->value:I

    .line 68
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/tacotown/proto/data/Segment$Type;
    .registers 2
    .parameter "value"

    .prologue
    .line 42
    packed-switch p0, :pswitch_data_14

    .line 48
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 43
    :pswitch_5
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->TEXT:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    goto :goto_4

    .line 44
    :pswitch_8
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->LINE_BREAK:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    goto :goto_4

    .line 45
    :pswitch_b
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->LINK:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    goto :goto_4

    .line 46
    :pswitch_e
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->USER_MENTION:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    goto :goto_4

    .line 47
    :pswitch_11
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->HASHTAG:Lcom/google/apps/tacotown/proto/data/Segment$Type;

    goto :goto_4

    .line 42
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/Segment$Type;
    .registers 2
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/tacotown/proto/data/Segment$Type;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->$VALUES:[Lcom/google/apps/tacotown/proto/data/Segment$Type;

    invoke-virtual {v0}, [Lcom/google/apps/tacotown/proto/data/Segment$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/tacotown/proto/data/Segment$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Segment$Type;->value:I

    return v0
.end method
