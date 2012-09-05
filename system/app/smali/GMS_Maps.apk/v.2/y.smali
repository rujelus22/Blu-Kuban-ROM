.class Lv/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lv/B;Lv/B;)I
    .registers 5

    iget v0, p1, Lv/B;->e:I

    iget v1, p2, Lv/B;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lv/B;

    check-cast p2, Lv/B;

    invoke-virtual {p0, p1, p2}, Lv/y;->a(Lv/B;Lv/B;)I

    move-result v0

    return v0
.end method
