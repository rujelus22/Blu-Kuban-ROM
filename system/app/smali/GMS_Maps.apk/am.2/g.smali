.class Lam/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lam/e;)V
    .registers 2
    .parameter

    .prologue
    .line 204
    invoke-direct {p0}, Lam/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lam/f;Lam/f;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-static {p1}, Lam/f;->a(Lam/f;)I

    move-result v0

    invoke-static {p2}, Lam/f;->a(Lam/f;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 204
    check-cast p1, Lam/f;

    check-cast p2, Lam/f;

    invoke-virtual {p0, p1, p2}, Lam/g;->a(Lam/f;Lam/f;)I

    move-result v0

    return v0
.end method
