.class public final Lcom/google/common/base/Predicates;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/common/base/G;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 311
    const-string v0, ","

    invoke-static {v0}, Lcom/google/common/base/G;->a(Ljava/lang/String;)Lcom/google/common/base/G;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Predicates;->a:Lcom/google/common/base/G;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/base/Q;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/common/base/T;->d:Lcom/google/common/base/T;

    invoke-virtual {v0}, Lcom/google/common/base/T;->a()Lcom/google/common/base/Q;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/common/base/Q;Lcom/google/common/base/Q;)Lcom/google/common/base/Q;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 126
    new-instance v2, Lcom/google/common/base/S;

    invoke-static {p0}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Q;

    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Q;

    invoke-static {v0, v1}, Lcom/google/common/base/Predicates;->b(Lcom/google/common/base/Q;Lcom/google/common/base/Q;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/google/common/base/S;-><init>(Ljava/util/List;Lcom/google/common/base/R;)V

    return-object v2
.end method

.method public static alwaysTrue()Lcom/google/common/base/Q;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/google/common/base/T;->a:Lcom/google/common/base/T;

    invoke-virtual {v0}, Lcom/google/common/base/T;->a()Lcom/google/common/base/Q;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Lcom/google/common/base/G;
    .registers 1

    .prologue
    .line 43
    sget-object v0, Lcom/google/common/base/Predicates;->a:Lcom/google/common/base/G;

    return-object v0
.end method

.method private static b(Lcom/google/common/base/Q;Lcom/google/common/base/Q;)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 561
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/base/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
