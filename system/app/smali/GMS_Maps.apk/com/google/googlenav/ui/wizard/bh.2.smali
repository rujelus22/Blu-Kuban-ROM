.class public Lcom/google/googlenav/ui/wizard/bH;
.super Lcom/google/googlenav/ui/wizard/C;
.source "SourceFile"


# instance fields
.field private a:Lad/b;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ui/wizard/ju;)V
    .registers 2
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/C;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 48
    return-void
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 51
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 52
    const/4 v0, 0x0

    .line 59
    :goto_7
    return-object v0

    .line 55
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 59
    :cond_27
    invoke-static {p0}, Laa/b;->h(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/googlenav/ui/wizard/bH;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_a

    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_b
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 70
    invoke-static {p0}, Lcom/google/googlenav/ui/wizard/bH;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_a

    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_c

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_b
.end method


# virtual methods
.method public T_()V
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bH;->a:Lad/b;

    .line 190
    invoke-virtual {p0}, Lcom/google/googlenav/ui/wizard/bH;->a()V

    .line 191
    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/wizard/bH;->a(Lad/b;)V

    .line 192
    return-void
.end method

.method public a(Lad/b;)V
    .registers 2
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bH;->a:Lad/b;

    .line 200
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->j()V

    .line 201
    return-void
.end method

.method public a(IILjava/lang/Object;)Z
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    packed-switch p1, :pswitch_data_26

    .line 161
    :cond_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 153
    :pswitch_5
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bH;->a:Lad/b;

    invoke-virtual {v0, p2}, Lad/b;->k(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 154
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/bH;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 156
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bH;->d:Lcom/google/googlenav/ui/wizard/ju;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/ju;->F()Lcom/google/googlenav/aA;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/googlenav/aA;->a(Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    goto :goto_4

    .line 151
    nop

    :pswitch_data_26
    .packed-switch 0x5
        :pswitch_5
    .end packed-switch
.end method

.method protected b()V
    .registers 2

    .prologue
    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bH;->b:Z

    .line 168
    new-instance v0, Lcom/google/googlenav/ui/wizard/bJ;

    invoke-direct {v0, p0, p0}, Lcom/google/googlenav/ui/wizard/bJ;-><init>(Lcom/google/googlenav/ui/wizard/bH;Lcom/google/googlenav/ui/g;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bH;->h:Lcom/google/googlenav/ui/view/android/bb;

    .line 178
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bH;->h:Lcom/google/googlenav/ui/view/android/bb;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/bb;->show()V

    .line 179
    return-void
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlenav/ui/wizard/bH;->a:Lad/b;

    .line 184
    invoke-super {p0}, Lcom/google/googlenav/ui/wizard/C;->c()V

    .line 185
    return-void
.end method

.method protected e()Ljava/util/Vector;
    .registers 13

    .prologue
    .line 79
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 81
    const/4 v2, 0x0

    .line 82
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bH;->a:Lad/b;

    invoke-virtual {v0}, Lad/b;->ab()Lad/h;

    move-result-object v5

    .line 84
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v5}, Lad/h;->d()I

    move-result v3

    if-ge v0, v3, :cond_12f

    .line 85
    invoke-virtual {v5, v0}, Lad/h;->a(I)Lad/m;

    move-result-object v3

    .line 86
    invoke-virtual {v3}, Lad/m;->q()Z

    move-result v6

    if-nez v6, :cond_27

    invoke-virtual {v3}, Lad/m;->o()Z

    move-result v6

    if-nez v6, :cond_27

    .line 84
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 90
    :cond_27
    invoke-virtual {v3}, Lad/m;->m()Lad/t;

    move-result-object v6

    invoke-virtual {v6}, Lad/t;->f()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 91
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 95
    if-eqz v1, :cond_12c

    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 101
    :goto_3b
    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/bH;->e:Lcom/google/googlenav/ui/bn;

    invoke-virtual {v7}, Lcom/google/googlenav/ui/bn;->S()Lcom/google/googlenav/ui/p;

    move-result-object v7

    invoke-virtual {v3}, Lad/m;->m()Lad/t;

    move-result-object v8

    invoke-virtual {v8}, Lad/t;->w()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/google/googlenav/ui/p;->a(J)C

    move-result v7

    invoke-static {v7}, Lcom/google/googlenav/ui/bn;->a(C)Ljava/lang/String;

    move-result-object v7

    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lad/m;->m()Lad/t;

    move-result-object v3

    invoke-virtual {v3}, Lad/t;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    new-instance v7, LaQ/m;

    sget-object v8, Lcom/google/googlenav/ui/aV;->P:Lcom/google/googlenav/ui/aV;

    invoke-static {v3, v8}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v8, 0x0

    invoke-direct {v7, v3, v8}, LaQ/m;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v4, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 108
    const/4 v3, 0x0

    :goto_84
    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v7

    if-ge v3, v7, :cond_24

    .line 109
    const/16 v7, 0x11

    invoke-virtual {v6, v7, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(II)I

    move-result v7

    .line 110
    iget-object v8, p0, Lcom/google/googlenav/ui/wizard/bH;->a:Lad/b;

    invoke-virtual {v8, v7}, Lad/b;->k(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v8

    .line 112
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-nez v9, :cond_a6

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_e0

    .line 114
    :cond_a6
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v9

    .line 115
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v10

    if-eqz v10, :cond_bf

    .line 116
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/googlenav/ui/aV;->C:Lcom/google/googlenav/ui/aV;

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_bf
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v10

    if-eqz v10, :cond_d4

    .line 120
    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/google/googlenav/ui/aV;->J:Lcom/google/googlenav/ui/aV;

    invoke-static {v10, v11}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_d4
    new-instance v10, Lcom/google/googlenav/ui/wizard/bK;

    invoke-static {v9}, Lcom/google/googlenav/ui/bn;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {v10, v9}, Lcom/google/googlenav/ui/wizard/bK;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_e0
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v9

    if-eqz v9, :cond_128

    .line 128
    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/googlenav/ui/wizard/bH;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 130
    invoke-static {v8}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_128

    .line 131
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v10, Lcom/google/googlenav/ui/bn;->R:C

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/googlenav/ui/aV;->t:Lcom/google/googlenav/ui/aV;

    invoke-static {v8, v9}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v8

    .line 135
    new-instance v9, Lcom/google/googlenav/ui/wizard/bK;

    invoke-static {v8}, Lcom/google/googlenav/ui/bn;->a(Lcom/google/googlenav/ui/aW;)Ljava/lang/CharSequence;

    move-result-object v8

    new-instance v10, Lcom/google/googlenav/ui/wizard/bI;

    invoke-direct {v10, p0, v7}, Lcom/google/googlenav/ui/wizard/bI;-><init>(Lcom/google/googlenav/ui/wizard/bH;I)V

    invoke-direct {v9, v8, v10}, Lcom/google/googlenav/ui/wizard/bK;-><init>(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v9}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_128
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_84

    .line 98
    :cond_12c
    const/4 v1, 0x1

    goto/16 :goto_3b

    .line 146
    :cond_12f
    return-object v4
.end method

.method public p()Z
    .registers 2

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/google/googlenav/ui/wizard/bH;->b:Z

    return v0
.end method
