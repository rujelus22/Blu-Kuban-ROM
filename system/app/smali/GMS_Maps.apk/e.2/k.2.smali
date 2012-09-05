.class public Le/k;
.super Ljava/lang/Object;


# instance fields
.field final a:Le/E;

.field private final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Le/E;Ljava/util/Map;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/k;->b:Ljava/util/Map;

    iput-object p1, p0, Le/k;->a:Le/E;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)Le/l;
    .registers 9

    new-instance v2, Le/l;

    invoke-direct {v2}, Le/l;-><init>()V

    iget-object v0, p0, Le/k;->a:Le/E;

    invoke-virtual {v0, p1}, Le/E;->a(Ljava/util/Map;)[F

    move-result-object v3

    const/high16 v0, 0x3f80

    array-length v1, v3

    int-to-float v1, v1

    div-float v4, v0, v1

    array-length v5, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_14
    if-ge v1, v5, :cond_2e

    aget v0, v3, v1

    iget-object v6, p0, Le/k;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2a

    :goto_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_2a
    invoke-virtual {v2, v0, v4}, Le/l;->a(Ljava/lang/String;F)V

    goto :goto_26

    :cond_2e
    invoke-virtual {v2}, Le/l;->c()V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Le/k;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Le/k;

    iget-object v2, p0, Le/k;->b:Ljava/util/Map;

    iget-object v3, p1, Le/k;->b:Ljava/util/Map;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Le/k;->a:Le/E;

    iget-object v3, p1, Le/k;->a:Le/E;

    invoke-virtual {v2, v3}, Le/E;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Le/k;->b:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/k;->a:Le/E;

    invoke-virtual {v1}, Le/E;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
