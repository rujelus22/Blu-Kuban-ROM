.class public Lcom/google/googlenav/aZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput p1, p0, Lcom/google/googlenav/aZ;->a:I

    .line 110
    iput-object p2, p0, Lcom/google/googlenav/aZ;->b:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/google/googlenav/aZ;->c:Ljava/util/List;

    .line 112
    return-void
.end method

.method protected static a(Lcom/google/googlenav/aZ;Ljava/util/List;)Ljava/lang/String;
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    const/4 v0, 0x0

    move v3, v0

    move-object v2, v4

    :goto_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_89

    .line 178
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ba;

    .line 179
    if-nez v0, :cond_1e

    move-object v0, v2

    .line 177
    :cond_19
    :goto_19
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v2, v0

    goto :goto_a

    .line 184
    :cond_1e
    add-int/lit8 v1, v3, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_99

    .line 185
    add-int/lit8 v1, v3, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/googlenav/ba;

    .line 188
    :goto_2e
    if-nez v2, :cond_38

    .line 189
    invoke-virtual {v0}, Lcom/google/googlenav/ba;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 191
    :cond_38
    if-nez v1, :cond_58

    .line 192
    invoke-virtual {v0}, Lcom/google/googlenav/ba;->a()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/googlenav/ba;->a()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v1, v7, :cond_52

    .line 193
    const-string v1, "-"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :goto_4a
    invoke-virtual {v0}, Lcom/google/googlenav/ba;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 195
    :cond_52
    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 199
    :cond_58
    invoke-virtual {v0}, Lcom/google/googlenav/ba;->a()I

    move-result v6

    invoke-virtual {v2}, Lcom/google/googlenav/ba;->a()I

    move-result v2

    sub-int v2, v6, v2

    if-le v2, v7, :cond_71

    .line 200
    const-string v1, ", "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Lcom/google/googlenav/ba;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 202
    :cond_71
    invoke-virtual {v1}, Lcom/google/googlenav/ba;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/googlenav/ba;->a()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v1, v7, :cond_19

    .line 203
    const-string v1, "-"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Lcom/google/googlenav/ba;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 211
    :cond_89
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_94

    invoke-virtual {p0}, Lcom/google/googlenav/aZ;->b()Ljava/lang/String;

    move-result-object v0

    :goto_93
    return-object v0

    :cond_94
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_93

    :cond_99
    move-object v1, v4

    goto :goto_2e
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/google/googlenav/aZ;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/googlenav/aZ;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/googlenav/aZ;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/googlenav/aZ;->c:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/googlenav/aZ;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public e()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 139
    iget v0, p0, Lcom/google/googlenav/aZ;->a:I

    packed-switch v0, :pswitch_data_60

    .line 154
    :pswitch_6
    const-string v0, "SEARCH_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "label: Unknown search filter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/aZ;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v0, ""

    :goto_22
    return-object v0

    .line 144
    :pswitch_23
    invoke-virtual {p0}, Lcom/google/googlenav/aZ;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ba;

    .line 145
    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/google/googlenav/aZ;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_34
    invoke-virtual {v0}, Lcom/google/googlenav/ba;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 149
    :pswitch_39
    const/16 v0, 0x12b

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/googlenav/aZ;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ba;

    invoke-virtual {v0}, Lcom/google/googlenav/ba;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 152
    :pswitch_57
    invoke-virtual {p0}, Lcom/google/googlenav/aZ;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/googlenav/aZ;->a(Lcom/google/googlenav/aZ;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    .line 139
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_23
        :pswitch_6
        :pswitch_57
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_39
    .end packed-switch
.end method

.method public f()I
    .registers 5

    .prologue
    const/4 v0, -0x1

    .line 230
    iget v1, p0, Lcom/google/googlenav/aZ;->a:I

    packed-switch v1, :pswitch_data_30

    .line 245
    :pswitch_6
    const-string v1, "SEARCH_FILTER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: Unknown search filter of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/googlenav/aZ;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_20
    :pswitch_20
    return v0

    .line 232
    :pswitch_21
    const/16 v0, 0x2c8

    goto :goto_20

    .line 234
    :pswitch_24
    const/16 v0, 0x2ca

    goto :goto_20

    .line 236
    :pswitch_27
    const/16 v0, 0x2cd

    goto :goto_20

    .line 238
    :pswitch_2a
    const/16 v0, 0x2d1

    goto :goto_20

    .line 243
    :pswitch_2d
    const/16 v0, 0x2d3

    goto :goto_20

    .line 230
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_21
        :pswitch_6
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_20
        :pswitch_2d
    .end packed-switch
.end method

.method public g()Ljava/lang/String;
    .registers 4

    .prologue
    .line 259
    iget v0, p0, Lcom/google/googlenav/aZ;->a:I

    sparse-switch v0, :sswitch_data_38

    .line 267
    const-string v0, "SEARCH_FILTER"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title: Unknown search filter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/aZ;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v0, ""

    :goto_21
    return-object v0

    .line 261
    :sswitch_22
    const/16 v0, 0x12d

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 263
    :sswitch_29
    const/16 v0, 0x12f

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 265
    :sswitch_30
    const/16 v0, 0x12e

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 259
    nop

    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_22
        0x2 -> :sswitch_30
        0x6 -> :sswitch_29
    .end sparse-switch
.end method
