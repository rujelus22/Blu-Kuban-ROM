.class Lp/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp/B;Lp/B;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 301
    iget v0, p1, Lp/B;->e:I

    iget v1, p2, Lp/B;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 298
    check-cast p1, Lp/B;

    check-cast p2, Lp/B;

    invoke-virtual {p0, p1, p2}, Lp/y;->a(Lp/B;Lp/B;)I

    move-result v0

    return v0
.end method
