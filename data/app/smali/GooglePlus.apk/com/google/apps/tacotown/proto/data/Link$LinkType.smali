.class public final enum Lcom/google/apps/tacotown/proto/data/Link$LinkType;
.super Ljava/lang/Enum;
.source "Link.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apps/tacotown/proto/data/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/apps/tacotown/proto/data/Link$LinkType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/apps/tacotown/proto/data/Link$LinkType;

.field public static final enum PICASA_ALBUM:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

.field public static final enum URL:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/apps/tacotown/proto/data/Link$LinkType;",
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

    .line 25
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    const-string v1, "URL"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/google/apps/tacotown/proto/data/Link$LinkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->URL:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    .line 26
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    const-string v1, "PICASA_ALBUM"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/google/apps/tacotown/proto/data/Link$LinkType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->PICASA_ALBUM:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    sget-object v1, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->URL:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->PICASA_ALBUM:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->$VALUES:[Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    .line 48
    new-instance v0, Lcom/google/apps/tacotown/proto/data/Link$LinkType$1;

    invoke-direct {v0}, Lcom/google/apps/tacotown/proto/data/Link$LinkType$1;-><init>()V

    sput-object v0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput p4, p0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->value:I

    .line 59
    return-void
.end method

.method public static valueOf(I)Lcom/google/apps/tacotown/proto/data/Link$LinkType;
    .registers 2
    .parameter "value"

    .prologue
    .line 36
    packed-switch p0, :pswitch_data_c

    .line 39
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 37
    :pswitch_5
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->URL:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    goto :goto_4

    .line 38
    :pswitch_8
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->PICASA_ALBUM:Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    goto :goto_4

    .line 36
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/apps/tacotown/proto/data/Link$LinkType;
    .registers 2
    .parameter "name"

    .prologue
    .line 23
    const-class v0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    return-object v0
.end method

.method public static values()[Lcom/google/apps/tacotown/proto/data/Link$LinkType;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->$VALUES:[Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    invoke-virtual {v0}, [Lcom/google/apps/tacotown/proto/data/Link$LinkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/apps/tacotown/proto/data/Link$LinkType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/google/apps/tacotown/proto/data/Link$LinkType;->value:I

    return v0
.end method
