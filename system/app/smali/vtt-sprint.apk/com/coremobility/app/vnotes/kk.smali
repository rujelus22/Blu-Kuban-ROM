.class final Lcom/coremobility/app/vnotes/kk;
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
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    const/4 v1, 0x1

    const/4 v0, -0x1

    check-cast p1, Lcom/coremobility/app/vnotes/km;

    check-cast p2, Lcom/coremobility/app/vnotes/km;

    iget v2, p1, Lcom/coremobility/app/vnotes/km;->c:I

    iget v3, p2, Lcom/coremobility/app/vnotes/km;->c:I

    if-ge v2, v3, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget v2, p1, Lcom/coremobility/app/vnotes/km;->c:I

    iget v3, p2, Lcom/coremobility/app/vnotes/km;->c:I

    if-le v2, v3, :cond_15

    move v0, v1

    goto :goto_c

    :cond_15
    iget v2, p1, Lcom/coremobility/app/vnotes/km;->d:I

    iget v3, p2, Lcom/coremobility/app/vnotes/km;->d:I

    if-ge v2, v3, :cond_1d

    move v0, v1

    goto :goto_c

    :cond_1d
    iget v1, p1, Lcom/coremobility/app/vnotes/km;->d:I

    iget v2, p2, Lcom/coremobility/app/vnotes/km;->d:I

    if-gt v1, v2, :cond_c

    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
