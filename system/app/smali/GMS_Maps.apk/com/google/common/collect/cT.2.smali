.class final Lcom/google/common/collect/cT;
.super Lcom/google/common/collect/cV;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final a:Lcom/google/common/collect/cT;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lcom/google/common/collect/cT;

    invoke-direct {v0}, Lcom/google/common/collect/cT;-><init>()V

    sput-object v0, Lcom/google/common/collect/cT;->a:Lcom/google/common/collect/cT;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/common/collect/cV;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-static {p2}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    if-ne p1, p2, :cond_7

    .line 37
    const/4 v0, 0x0

    .line 42
    :goto_6
    return v0

    .line 41
    :cond_7
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_6
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/cT;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string v0, "Ordering.natural()"

    return-object v0
.end method
