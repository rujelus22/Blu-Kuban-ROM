.class public Lcom/google/googlenav/ui/bi;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlenav/ui/bh;)Ljava/util/Vector;
    .registers 3

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/bh;Lcom/google/googlenav/ui/bh;)Ljava/util/Vector;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/bh;)Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/bh;)Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/bh;[Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/ui/bh;[Ljava/util/Vector;)Ljava/util/Vector;
    .registers 12

    const/4 v3, 0x0

    const/4 v8, -0x1

    const/16 v7, 0x7b

    iget-object v0, p0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    const-string v1, "${I18N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p0}, Lcom/google/googlenav/ui/bi;->a(Lcom/google/googlenav/ui/bh;)Ljava/util/Vector;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Vector;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v2, v3

    :goto_29
    if-eq v0, v8, :cond_110

    iget-object v5, p0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_110

    iget-object v5, p0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v5, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_57

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    :goto_4d
    iget-object v2, p0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    move v9, v2

    move v2, v0

    move v0, v9

    goto :goto_29

    :cond_57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_6d

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v5}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/bh;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_6d
    iget-object v2, p0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    const/16 v5, 0x7d

    invoke-virtual {v2, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-eq v2, v8, :cond_7e

    sub-int v5, v2, v0

    const/4 v6, 0x2

    if-gt v5, v6, :cond_7e

    if-nez v2, :cond_a1

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

    :cond_a1
    iget-object v5, p0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v0, v5

    :try_start_ae
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_ae .. :try_end_b1} :catch_bd

    move-result v2

    if-ltz v2, :cond_e7

    array-length v5, p1

    if-ge v2, v5, :cond_e7

    aget-object v2, p1, v2

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Ljava/util/Vector;)V

    goto :goto_4d

    :catch_bd
    move-exception v0

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

    :cond_110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_123

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/bh;)V

    :cond_123
    iget-object v0, p0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_13d

    iget-object v2, p0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    iget-boolean v3, p0, Lcom/google/googlenav/ui/bh;->c:Z

    invoke-static {v0, v2, v3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;Z)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/bh;)V

    :cond_13a
    :goto_13a
    move-object v0, v1

    goto/16 :goto_12

    :cond_13d
    iget-boolean v0, p0, Lcom/google/googlenav/ui/bh;->c:Z

    if-eqz v0, :cond_163

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_163

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    iget-boolean v2, v0, Lcom/google/googlenav/ui/bh;->c:Z

    if-nez v2, :cond_13a

    iget-object v2, v0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    invoke-static {v2, v0}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_13a

    :cond_163
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13a

    invoke-virtual {v1, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_13a
.end method

.method public static a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)Ljava/util/Vector;
    .registers 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {v0, p0, p1, p2}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V

    return-object v0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/google/googlenav/ui/bg;)V
    .registers 11

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_9

    :goto_8
    return-void

    :cond_9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eq v4, v0, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Strings list and styles list should be same size."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    move v2, v3

    :goto_18
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_3a

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1, v3, v3, v5}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/a;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p3, p4, v3, v3, v5}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;ZZLbb/a;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_18

    :cond_3a
    add-int/lit8 v0, v4, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v1, v4, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ui/bg;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/bh;->b(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public static a(Ljava/util/Vector;Lcom/google/googlenav/ui/bh;)V
    .registers 5

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-virtual {p0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    iget-boolean v1, v0, Lcom/google/googlenav/ui/bh;->c:Z

    if-nez v1, :cond_3d

    iget-object v1, v0, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    iget-object v2, p1, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    if-ne v1, v2, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/googlenav/ui/bh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/googlenav/ui/bh;->b:Lcom/google/googlenav/ui/bg;

    iget-boolean v2, p1, Lcom/google/googlenav/ui/bh;->c:Z

    invoke-static {v0, v1, v2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;Z)Lcom/google/googlenav/ui/bh;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :goto_3c
    return-void

    :cond_3d
    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_3c
.end method

.method public static a(Ljava/util/Vector;Ljava/lang/String;Lcom/google/googlenav/ui/bg;Lcom/google/googlenav/ui/bg;)V
    .registers 11

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    if-nez p0, :cond_7

    :cond_6
    return-void

    :cond_7
    const-string v0, "<b>"

    invoke-static {p1, v0}, Las/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    :goto_e
    array-length v3, v2

    if-ge v0, v3, :cond_6

    aget-object v3, v2, v0

    const-string v4, "</b>"

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-ne v4, v6, :cond_28

    aget-object v3, v3, v1

    invoke-static {v3, p2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_28
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_25

    aget-object v4, v3, v1

    invoke-static {v4, p3}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    aget-object v3, v3, v6

    invoke-static {v3, p2}, Lcom/google/googlenav/ui/bh;->a(Ljava/lang/String;Lcom/google/googlenav/ui/bg;)Lcom/google/googlenav/ui/bh;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_25
.end method

.method public static a(Ljava/util/Vector;Ljava/util/Vector;)V
    .registers 4

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/bh;

    invoke-static {p0, v0}, Lcom/google/googlenav/ui/bi;->a(Ljava/util/Vector;Lcom/google/googlenav/ui/bh;)V

    goto :goto_7
.end method
