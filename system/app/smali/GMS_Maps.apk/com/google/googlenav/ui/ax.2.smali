.class public Lcom/google/googlenav/ui/aX;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/googlenav/ui/aW;)Ljava/util/Vector;
    .registers 3
    .parameter

    .prologue
    .line 43
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 44
    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 45
    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/aW;Lcom/google/googlenav/ui/aW;)Ljava/util/Vector;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/googlenav/ui/aX;->a(Lcom/google/googlenav/ui/aW;)Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Lcom/google/googlenav/ui/aX;->a(Lcom/google/googlenav/ui/aW;)Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/aX;->a(Lcom/google/googlenav/ui/aW;[Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method static a(Lcom/google/googlenav/ui/aW;[Ljava/util/Vector;)Ljava/util/Vector;
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v8, -0x1

    const/16 v7, 0x7b

    .line 138
    iget-object v0, p0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    const-string v1, "${I18N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 139
    invoke-static {p0}, Lcom/google/googlenav/ui/aX;->a(Lcom/google/googlenav/ui/aW;)Ljava/util/Vector;

    move-result-object v0

    .line 224
    :goto_12
    return-object v0

    .line 142
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    new-instance v1, Ljava/util/Vector;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    .line 150
    iget-object v0, p0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v2, v3

    .line 151
    :goto_29
    if-eq v0, v8, :cond_110

    iget-object v5, p0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_110

    .line 152
    iget-object v5, p0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    add-int/lit8 v0, v0, 0x1

    .line 154
    iget-object v2, p0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_57

    .line 156
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    add-int/lit8 v0, v0, 0x1

    .line 194
    :goto_4d
    iget-object v2, p0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_29

    .line 161
    :cond_57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_6d

    .line 162
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v5}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aW;)V

    .line 164
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 168
    :cond_6d
    iget-object v2, p0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    const/16 v5, 0x7d

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 171
    if-eq v2, v8, :cond_7e

    sub-int v5, v2, v0

    const/4 v6, 0x2

    if-gt v5, v6, :cond_7e

    if-nez v2, :cond_a1

    .line 172
    :cond_7e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StyledStringUtil.formatMessage \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_a1
    iget-object v5, p0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    .line 180
    :try_start_ae
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_b1} :catch_bd

    move-result v2

    .line 186
    if-ltz v2, :cond_e7

    array-length v5, p1

    if-ge v2, v5, :cond_e7

    .line 187
    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    goto :goto_4d

    .line 181
    :catch_bd
    move-exception v0

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StyledStringUtil.formatMessage \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" tag(\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_e7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StyledStringUtil.formatMessage \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" param("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_123

    .line 199
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aW;)V

    .line 203
    :cond_123
    iget-object v0, p0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_13d

    .line 206
    iget-object v2, p0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    iget-boolean v3, p0, Lcom/google/googlenav/ui/aW;->d:Z

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Z)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aW;)V

    :cond_13a
    :goto_13a
    move-object v0, v1

    .line 224
    goto/16 :goto_12

    .line 208
    :cond_13d
    iget-boolean v0, p0, Lcom/google/googlenav/ui/aW;->d:Z

    if-eqz v0, :cond_163

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_163

    .line 210
    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    .line 211
    iget-boolean v2, v0, Lcom/google/googlenav/ui/aW;->d:Z

    if-nez v2, :cond_13a

    .line 212
    iget-object v2, v0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/aW;->b(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 214
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_13a

    .line 216
    :cond_163
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 221
    invoke-virtual {v1, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_13a
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)Ljava/util/Vector;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 274
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 275
    invoke-static {v0, p0, p1, p2}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V

    .line 276
    return-object v0
.end method

.method public static a(Ljava/util/Vector;Lcom/google/googlenav/ui/aW;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 71
    invoke-virtual {p0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    .line 72
    iget-boolean v1, v0, Lcom/google/googlenav/ui/aW;->d:Z

    if-nez v1, :cond_3d

    iget-object v1, v0, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    iget-object v2, p1, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    if-ne v1, v2, :cond_3d

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/googlenav/ui/aW;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/googlenav/ui/aW;->c:Lcom/google/googlenav/ui/aV;

    iget-boolean v2, p1, Lcom/google/googlenav/ui/aW;->d:Z

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;Z)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 82
    :goto_3c
    return-void

    .line 81
    :cond_3d
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3c
.end method

.method public static a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/aV;Lcom/google/googlenav/ui/aV;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 293
    if-eqz p1, :cond_6

    if-nez p0, :cond_7

    .line 309
    :cond_6
    return-void

    .line 297
    :cond_7
    const-string v0, "<b>"

    invoke-static {p1, v0}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 298
    :goto_e
    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 299
    aget-object v3, v2, v0

    const-string v4, "</b>"

    invoke-static {v3, v4}, Laa/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 300
    array-length v4, v3

    if-ne v4, v6, :cond_28

    .line 301
    aget-object v3, v3, v1

    invoke-static {v3, p2}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 302
    :cond_28
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_25

    .line 303
    aget-object v4, v3, v1

    invoke-static {v4, p3}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 304
    aget-object v3, v3, v6

    invoke-static {v3, p2}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_25
.end method

.method public static a(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 93
    if-nez p1, :cond_3

    .line 100
    :cond_2
    return-void

    .line 97
    :cond_3
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/aW;

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/aX;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/aW;)V

    goto :goto_7
.end method
