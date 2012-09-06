.class final enum Lcom/google/common/base/BinaryPredicates$AlwaysFalse;
.super Ljava/lang/Enum;
.source "BinaryPredicates.java"

# interfaces
.implements Lcom/google/common/base/BinaryPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/BinaryPredicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AlwaysFalse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/BinaryPredicates$AlwaysFalse;",
        ">;",
        "Lcom/google/common/base/BinaryPredicate",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/BinaryPredicates$AlwaysFalse;

.field public static final enum AlwaysFalse:Lcom/google/common/base/BinaryPredicates$AlwaysFalse;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 230
    new-instance v0, Lcom/google/common/base/BinaryPredicates$AlwaysFalse;

    const-string v1, "AlwaysFalse"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/BinaryPredicates$AlwaysFalse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/BinaryPredicates$AlwaysFalse;->AlwaysFalse:Lcom/google/common/base/BinaryPredicates$AlwaysFalse;

    .line 229
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/base/BinaryPredicates$AlwaysFalse;

    sget-object v1, Lcom/google/common/base/BinaryPredicates$AlwaysFalse;->AlwaysFalse:Lcom/google/common/base/BinaryPredicates$AlwaysFalse;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/base/BinaryPredicates$AlwaysFalse;->$VALUES:[Lcom/google/common/base/BinaryPredicates$AlwaysFalse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/BinaryPredicates$AlwaysFalse;
    .registers 2
    .parameter "name"

    .prologue
    .line 229
    const-class v0, Lcom/google/common/base/BinaryPredicates$AlwaysFalse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/BinaryPredicates$AlwaysFalse;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/BinaryPredicates$AlwaysFalse;
    .registers 1

    .prologue
    .line 229
    sget-object v0, Lcom/google/common/base/BinaryPredicates$AlwaysFalse;->$VALUES:[Lcom/google/common/base/BinaryPredicates$AlwaysFalse;

    invoke-virtual {v0}, [Lcom/google/common/base/BinaryPredicates$AlwaysFalse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/BinaryPredicates$AlwaysFalse;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .parameter "o1"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "o2"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 233
    const/4 v0, 0x0

    return v0
.end method
