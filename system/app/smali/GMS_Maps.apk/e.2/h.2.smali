.class public Le/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Le/E;

.field private final b:Le/E;

.field private final c:I


# direct methods
.method public constructor <init>(Le/E;Le/E;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/h;->a:Le/E;

    iput-object p2, p0, Le/h;->b:Le/E;

    iput p3, p0, Le/h;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Le/h;->c:I

    return v0
.end method

.method public a(Ljava/util/Map;)Le/i;
    .registers 13

    const/4 v10, 0x1

    iget-object v0, p0, Le/h;->a:Le/E;

    invoke-virtual {v0, p1}, Le/E;->a(Ljava/util/Map;)[F

    move-result-object v0

    iget-object v1, p0, Le/h;->b:Le/E;

    invoke-virtual {v1, p1}, Le/E;->a(Ljava/util/Map;)[F

    move-result-object v1

    invoke-static {v0}, Lg/g;->a([F)Lg/h;

    move-result-object v8

    invoke-static {v1}, Lg/g;->a([F)Lg/h;

    move-result-object v9

    iget v0, v8, Lg/h;->a:F

    float-to-double v0, v0

    iget v2, v9, Lg/h;->a:F

    float-to-double v2, v2

    iget v4, v8, Lg/h;->a:F

    iget v5, v8, Lg/h;->b:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    iget v6, v9, Lg/h;->a:F

    iget v7, v9, Lg/h;->b:F

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static/range {v0 .. v7}, Le/g;->a(DDDD)D

    move-result-wide v0

    iget-object v2, p0, Le/h;->a:Le/E;

    invoke-virtual {v2}, Le/E;->a()I

    move-result v2

    if-eq v2, v10, :cond_3b

    iget-object v2, p0, Le/h;->b:Le/E;

    invoke-virtual {v2}, Le/E;->a()I

    move-result v2

    if-ne v2, v10, :cond_4b

    :cond_3b
    const v0, 0x469c4000

    :goto_3e
    new-instance v1, Le/i;

    iget v2, v8, Lg/h;->a:F

    float-to-int v2, v2

    iget v3, v9, Lg/h;->a:F

    float-to-int v3, v3

    float-to-int v0, v0

    invoke-direct {v1, v2, v3, v0}, Le/i;-><init>(III)V

    return-object v1

    :cond_4b
    const/high16 v2, 0x4000

    double-to-float v0, v0

    mul-float/2addr v0, v2

    const/high16 v1, 0x447a

    mul-float/2addr v0, v1

    goto :goto_3e
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
    instance-of v2, p1, Le/h;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Le/h;

    iget v2, p0, Le/h;->c:I

    iget v3, p1, Le/h;->c:I

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Le/h;->a:Le/E;

    iget-object v3, p1, Le/h;->a:Le/E;

    invoke-virtual {v2, v3}, Le/E;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Le/h;->b:Le/E;

    iget-object v3, p1, Le/h;->b:Le/E;

    invoke-virtual {v2, v3}, Le/E;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_27
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Le/h;->c:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/h;->a:Le/E;

    invoke-virtual {v1}, Le/E;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/h;->b:Le/E;

    invoke-virtual {v1}, Le/E;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
