.class public Lo/n;
.super Lo/l;


# instance fields
.field private final a:[Lo/l;


# direct methods
.method public constructor <init>([Lo/l;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/l;-><init>(Lo/m;)V

    iput-object p1, p0, Lo/n;->a:[Lo/l;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 6

    const/4 v0, 0x0

    iget-object v2, p0, Lo/n;->a:[Lo/l;

    array-length v3, v2

    move v1, v0

    :goto_5
    if-ge v1, v3, :cond_13

    aget-object v4, v2, v1

    invoke-virtual {v4}, Lo/l;->a()Z

    move-result v4

    if-nez v4, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    iget-object v1, p0, Lo/n;->a:[Lo/l;

    array-length v1, v1

    if-lez v1, :cond_f

    const/4 v0, 0x1

    goto :goto_f
.end method

.method public b()[Lo/l;
    .registers 2

    iget-object v0, p0, Lo/n;->a:[Lo/l;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lo/n;

    if-eqz v0, :cond_f

    check-cast p1, Lo/n;

    iget-object v0, p1, Lo/n;->a:[Lo/l;

    iget-object v1, p0, Lo/n;->a:[Lo/l;

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lo/n;->a:[Lo/l;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_6
    iget-object v2, p0, Lo/n;->a:[Lo/l;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    iget-object v2, p0, Lo/n;->a:[Lo/l;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
