.class public final Lcom/google/common/base/Predicates;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/common/base/x;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 326
    const-string v0, ","

    invoke-static {v0}, Lcom/google/common/base/x;->a(Ljava/lang/String;)Lcom/google/common/base/x;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Predicates;->a:Lcom/google/common/base/x;

    return-void
.end method

.method public static a()Lcom/google/common/base/ah;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/common/base/Predicates$ObjectPredicate;->ALWAYS_TRUE:Lcom/google/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lcom/google/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lcom/google/common/base/ah;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/common/base/ah;)Lcom/google/common/base/ah;
    .registers 2
    .parameter

    .prologue
    .line 89
    new-instance v0, Lcom/google/common/base/Predicates$NotPredicate;

    invoke-direct {v0, p0}, Lcom/google/common/base/Predicates$NotPredicate;-><init>(Lcom/google/common/base/ah;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/common/base/ah;
    .registers 3
    .parameter

    .prologue
    .line 227
    new-instance v0, Lcom/google/common/base/Predicates$InPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$InPredicate;-><init>(Ljava/util/Collection;Lcom/google/common/base/ai;)V

    return-object v0
.end method

.method static synthetic b()Lcom/google/common/base/x;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/common/base/Predicates;->a:Lcom/google/common/base/x;

    return-object v0
.end method
