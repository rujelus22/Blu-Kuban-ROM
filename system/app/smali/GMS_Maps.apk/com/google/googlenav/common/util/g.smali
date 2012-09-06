.class public Lcom/google/googlenav/common/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 259
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/common/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter

    .prologue
    const/16 v8, 0x5c

    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v3, 0x2

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v2, v1

    .line 171
    :goto_f
    if-ge v2, v3, :cond_5b

    .line 172
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 173
    const-string v5, "\\\t\u0008\n\r\u000c"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 174
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2e

    .line 176
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    const-string v0, "\\tbnrf"

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    :goto_2a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_f

    .line 178
    :cond_2e
    invoke-static {v0}, Laa/b;->b(C)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 180
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 183
    :cond_38
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    const/16 v5, 0x75

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    .line 189
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v6, v0, 0x4

    move v0, v1

    .line 190
    :goto_4d
    if-ge v0, v6, :cond_57

    .line 191
    const/16 v7, 0x30

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 193
    :cond_57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2a

    .line 196
    :cond_5b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
