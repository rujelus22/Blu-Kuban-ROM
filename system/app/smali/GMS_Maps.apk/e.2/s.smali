.class public Le/s;
.super Ljava/lang/Object;


# instance fields
.field private final a:Le/t;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Le/t;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/s;->a:Le/t;

    iput-object p2, p0, Le/s;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Le/s;
    .registers 3

    new-instance v0, Le/s;

    sget-object v1, Le/t;->a:Le/t;

    invoke-direct {v0, v1, p0}, Le/s;-><init>(Le/t;Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Le/s;
    .registers 3

    new-instance v0, Le/s;

    sget-object v1, Le/t;->b:Le/t;

    invoke-direct {v0, v1, p0}, Le/s;-><init>(Le/t;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Le/t;
    .registers 2

    iget-object v0, p0, Le/s;->a:Le/t;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Le/s;->b:Ljava/lang/String;

    return-object v0
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
    instance-of v2, p1, Le/s;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Le/s;

    iget-object v2, p0, Le/s;->a:Le/t;

    iget-object v3, p1, Le/s;->a:Le/t;

    if-ne v2, v3, :cond_1b

    iget-object v2, p0, Le/s;->b:Ljava/lang/String;

    if-nez v2, :cond_1d

    iget-object v2, p1, Le/s;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    :cond_1b
    move v0, v1

    goto :goto_4

    :cond_1d
    iget-object v2, p0, Le/s;->b:Ljava/lang/String;

    iget-object v3, p1, Le/s;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Le/s;->a:Le/t;

    invoke-virtual {v0}, Le/t;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Le/s;->b:Ljava/lang/String;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_f
    add-int/2addr v0, v1

    return v0

    :cond_11
    iget-object v0, p0, Le/s;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/s;->a:Le/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "modelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
