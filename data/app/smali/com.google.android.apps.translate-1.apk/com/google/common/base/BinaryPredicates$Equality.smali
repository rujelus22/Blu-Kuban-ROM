.class final enum Lcom/google/common/base/BinaryPredicates$Equality;
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
    name = "Equality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/base/BinaryPredicates$Equality;",
        ">;",
        "Lcom/google/common/base/BinaryPredicate",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/base/BinaryPredicates$Equality;

.field public static final enum Equality:Lcom/google/common/base/BinaryPredicates$Equality;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 240
    new-instance v0, Lcom/google/common/base/BinaryPredicates$Equality;

    const-string v1, "Equality"

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/BinaryPredicates$Equality;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/BinaryPredicates$Equality;->Equality:Lcom/google/common/base/BinaryPredicates$Equality;

    .line 239
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/common/base/BinaryPredicates$Equality;

    sget-object v1, Lcom/google/common/base/BinaryPredicates$Equality;->Equality:Lcom/google/common/base/BinaryPredicates$Equality;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/base/BinaryPredicates$Equality;->$VALUES:[Lcom/google/common/base/BinaryPredicates$Equality;

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
    .line 239
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/BinaryPredicates$Equality;
    .registers 2
    .parameter "name"

    .prologue
    .line 239
    const-class v0, Lcom/google/common/base/BinaryPredicates$Equality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/BinaryPredicates$Equality;

    return-object v0
.end method

.method public static values()[Lcom/google/common/base/BinaryPredicates$Equality;
    .registers 1

    .prologue
    .line 239
    sget-object v0, Lcom/google/common/base/BinaryPredicates$Equality;->$VALUES:[Lcom/google/common/base/BinaryPredicates$Equality;

    invoke-virtual {v0}, [Lcom/google/common/base/BinaryPredicates$Equality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/BinaryPredicates$Equality;

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
    .line 243
    invoke-static {p1, p2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
