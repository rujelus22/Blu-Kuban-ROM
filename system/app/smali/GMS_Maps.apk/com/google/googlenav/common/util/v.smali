.class public Lcom/google/googlenav/common/util/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/googlenav/common/f;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    .line 79
    :goto_7
    return-void

    .line 62
    :cond_8
    const/4 v0, 0x1

    .line 64
    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v2

    .line 65
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v4

    .line 66
    add-int/lit8 v1, v0, -0x1

    .line 67
    :goto_13
    if-ltz v1, :cond_32

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-lez v6, :cond_32

    .line 68
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v6

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/google/googlenav/common/f;->a(JI)V

    .line 69
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v6

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v6, v7, v8}, Lcom/google/googlenav/common/f;->a(JI)V

    .line 70
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 72
    :cond_32
    add-int/lit8 v1, v1, 0x1

    .line 73
    if-eq v0, v1, :cond_3c

    .line 74
    invoke-virtual {p0, v2, v3, v1}, Lcom/google/googlenav/common/f;->a(JI)V

    .line 75
    invoke-virtual {p1, v4, v5, v1}, Lcom/google/googlenav/common/f;->a(JI)V

    .line 77
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    .line 78
    invoke-virtual {p0}, Lcom/google/googlenav/common/f;->b()I

    move-result v1

    if-lt v0, v1, :cond_9

    goto :goto_7
.end method

.method public static b(Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/googlenav/common/f;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_8

    .line 139
    :goto_7
    return-void

    .line 122
    :cond_8
    const/4 v0, 0x1

    .line 124
    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v2

    .line 125
    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v4

    .line 126
    add-int/lit8 v1, v0, -0x1

    .line 127
    :goto_13
    if-ltz v1, :cond_32

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gez v6, :cond_32

    .line 128
    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v6

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p0, v6, v7, v8}, Lcom/google/googlenav/common/f;->a(JI)V

    .line 129
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v6

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1, v6, v7, v8}, Lcom/google/googlenav/common/f;->a(JI)V

    .line 130
    add-int/lit8 v1, v1, -0x1

    goto :goto_13

    .line 132
    :cond_32
    add-int/lit8 v1, v1, 0x1

    .line 133
    if-eq v0, v1, :cond_3c

    .line 134
    invoke-virtual {p0, v2, v3, v1}, Lcom/google/googlenav/common/f;->a(JI)V

    .line 135
    invoke-virtual {p1, v4, v5, v1}, Lcom/google/googlenav/common/f;->a(JI)V

    .line 137
    :cond_3c
    add-int/lit8 v0, v0, 0x1

    .line 138
    invoke-virtual {p0}, Lcom/google/googlenav/common/f;->b()I

    move-result v1

    if-lt v0, v1, :cond_9

    goto :goto_7
.end method
