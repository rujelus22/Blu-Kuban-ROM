.class public final enum Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;
.super Ljava/lang/Enum;
.source "PageInfo.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;

.field public static final enum MESSAGE_TYPE_ID:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 3034
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;

    const-string v1, "MESSAGE_TYPE_ID"

    const v2, 0x624c25

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;->MESSAGE_TYPE_ID:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;

    .line 3032
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;

    sget-object v1, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;->MESSAGE_TYPE_ID:Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;->$VALUES:[Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;

    .line 3052
    new-instance v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId$1;

    invoke-direct {v0}, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId$1;-><init>()V

    sput-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 3061
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3062
    iput p3, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;->index:I

    .line 3063
    iput p4, p0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;->value:I

    .line 3064
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;
    .registers 2
    .parameter

    .prologue
    .line 3032
    const-class v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;

    return-object v0
.end method

.method public static values()[Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;
    .registers 1

    .prologue
    .line 3032
    sget-object v0, Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;->$VALUES:[Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;

    invoke-virtual {v0}, [Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ocean/frontend/javascript/proto/PageInfo$JsonPage$TypeId;

    return-object v0
.end method
