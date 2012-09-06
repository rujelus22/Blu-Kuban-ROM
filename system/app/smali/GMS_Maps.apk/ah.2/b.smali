.class public LaH/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a([LaH/f;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 30
    aget-object v0, p0, p1

    .line 34
    invoke-virtual {v0}, LaH/f;->b()Lat/B;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 35
    invoke-virtual {v0}, LaH/f;->c()Lat/B;

    move-result-object v1

    if-nez v1, :cond_10

    .line 37
    const/4 v0, 0x0

    .line 53
    :goto_f
    return v0

    .line 40
    :cond_10
    invoke-virtual {v0}, LaH/f;->a()Lat/B;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, LaH/f;->c()Lat/B;

    move-result-object v0

    .line 53
    :goto_18
    invoke-static {v1, v0}, LaH/a;->a(Lat/B;Lat/B;)I

    move-result v0

    goto :goto_f

    .line 43
    :cond_1d
    invoke-virtual {v0}, LaH/f;->c()Lat/B;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 45
    invoke-virtual {v0}, LaH/f;->b()Lat/B;

    move-result-object v1

    .line 46
    invoke-virtual {v0}, LaH/f;->a()Lat/B;

    move-result-object v0

    goto :goto_18

    .line 49
    :cond_2c
    invoke-virtual {v0}, LaH/f;->b()Lat/B;

    move-result-object v1

    .line 50
    invoke-virtual {v0}, LaH/f;->a()Lat/B;

    move-result-object v0

    goto :goto_18
.end method

.method public static a(I[LaH/f;Lat/Y;)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 96
    aget-object v0, p1, p0

    invoke-virtual {v0}, LaH/f;->a()Lat/B;

    move-result-object v0

    .line 97
    invoke-static {p1, p0}, LaH/b;->a([LaH/f;I)I

    move-result v1

    .line 98
    invoke-static {v1}, LaH/a;->a(I)I

    move-result v1

    .line 99
    invoke-static {v0, v2, v1, v2, p2}, LaH/b;->a(Lat/B;Ljava/lang/String;ILat/B;Lat/Y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lat/B;Lat/Y;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 61
    const/4 v0, 0x0

    invoke-static {p0, v1, v0, v1, p1}, LaH/b;->a(Lat/B;Ljava/lang/String;ILat/B;Lat/Y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lat/B;Ljava/lang/String;ILat/B;Lat/Y;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-static {p2}, Laa/b;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 135
    const-string v0, "0"

    .line 136
    const-string v0, "5"

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    const-string v0, "google.streetview:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v0, ""

    .line 141
    if-eqz p0, :cond_3b

    .line 142
    invoke-virtual {p0}, Lat/B;->c()I

    move-result v0

    invoke-static {v0}, Laa/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lat/B;->e()I

    move-result v3

    invoke-static {v3}, Laa/b;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    const-string v4, "cbll="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v0, "&"

    .line 147
    :cond_3b
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 148
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v0, "panoid="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v0, "&"

    .line 152
    :cond_4f
    if-eqz p3, :cond_79

    .line 153
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p3}, Lat/B;->c()I

    move-result v0

    invoke-static {v0}, Laa/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p3}, Lat/B;->e()I

    move-result v3

    invoke-static {v3}, Laa/b;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 156
    const-string v4, "faceto_ll="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v0, "&"

    .line 159
    :cond_79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
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

    .line 162
    const-string v0, "&mz="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Lat/Y;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILat/Y;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-static {v0, p0, p1, v0, p2}, LaH/b;->a(Lat/B;Ljava/lang/String;ILat/B;Lat/Y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lat/B;Lat/Y;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1, p2}, LaH/b;->a(Lat/B;Ljava/lang/String;ILat/B;Lat/Y;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
