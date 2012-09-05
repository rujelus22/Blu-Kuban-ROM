.class public LaU/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([LaU/f;I)I
    .registers 4

    aget-object v0, p0, p1

    invoke-virtual {v0}, LaU/f;->b()LaJ/B;

    move-result-object v1

    if-nez v1, :cond_1d

    invoke-virtual {v0}, LaU/f;->c()LaJ/B;

    move-result-object v1

    if-nez v1, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    invoke-virtual {v0}, LaU/f;->a()LaJ/B;

    move-result-object v1

    invoke-virtual {v0}, LaU/f;->c()LaJ/B;

    move-result-object v0

    :goto_18
    invoke-static {v1, v0}, LaU/a;->a(LaJ/B;LaJ/B;)I

    move-result v0

    goto :goto_f

    :cond_1d
    invoke-virtual {v0}, LaU/f;->c()LaJ/B;

    move-result-object v1

    if-nez v1, :cond_2c

    invoke-virtual {v0}, LaU/f;->b()LaJ/B;

    move-result-object v1

    invoke-virtual {v0}, LaU/f;->a()LaJ/B;

    move-result-object v0

    goto :goto_18

    :cond_2c
    invoke-virtual {v0}, LaU/f;->b()LaJ/B;

    move-result-object v1

    invoke-virtual {v0}, LaU/f;->a()LaJ/B;

    move-result-object v0

    goto :goto_18
.end method

.method public static a(I[LaU/f;LaJ/Y;)Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    aget-object v0, p1, p0

    invoke-virtual {v0}, LaU/f;->a()LaJ/B;

    move-result-object v0

    invoke-static {p1, p0}, LaU/b;->a([LaU/f;I)I

    move-result v1

    invoke-static {v1}, LaU/a;->a(I)I

    move-result v1

    invoke-static {v0, v2, v1, v2, p2}, LaU/b;->a(LaJ/B;Ljava/lang/String;ILaJ/B;LaJ/Y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(LaJ/B;LaJ/Y;)Ljava/lang/String;
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v1, v0, v1, p1}, LaU/b;->a(LaJ/B;Ljava/lang/String;ILaJ/B;LaJ/Y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(LaJ/B;Ljava/lang/String;ILaJ/B;LaJ/Y;)Ljava/lang/String;
    .registers 10

    invoke-static {p2}, Las/b;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "0"

    const-string v0, "5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "google.streetview:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ""

    if-eqz p0, :cond_3b

    invoke-virtual {p0}, LaJ/B;->c()I

    move-result v0

    invoke-static {v0}, Las/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, LaJ/B;->e()I

    move-result v3

    invoke-static {v3}, Las/b;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "cbll="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    :cond_3b
    invoke-static {p1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "panoid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    :cond_4f
    if-eqz p3, :cond_79

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, LaJ/B;->c()I

    move-result v0

    invoke-static {v0}, Las/b;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, LaJ/B;->e()I

    move-result v3

    invoke-static {v3}, Las/b;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "faceto_ll="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&"

    :cond_79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cbp=1,"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&mz="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, LaJ/Y;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;LaJ/B;LaJ/Y;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, LaU/b;->a(LaJ/B;Ljava/lang/String;ILaJ/B;LaJ/Y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
