.class Lcom/google/googlenav/ui/wizard/hc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/g;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/ha;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ha;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hc;->b:Lcom/google/googlenav/ui/wizard/ha;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/hc;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x7

    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hc;->b:Lcom/google/googlenav/ui/wizard/ha;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ha;->a(Lcom/google/googlenav/ui/wizard/ha;)Lcom/google/googlenav/ai;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hc;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hc;->b:Lcom/google/googlenav/ui/wizard/ha;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/ha;->a(Lcom/google/googlenav/ui/wizard/ha;)Lcom/google/googlenav/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ai;->W()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 110
    :cond_1c
    :goto_1c
    return-void

    .line 83
    :cond_1d
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hc;->b:Lcom/google/googlenav/ui/wizard/ha;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/wizard/ha;->a(Lcom/google/googlenav/ui/wizard/ha;Lcom/google/googlenav/f;)Lcom/google/googlenav/f;

    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hc;->b:Lcom/google/googlenav/ui/wizard/ha;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Lcom/google/googlenav/ui/wizard/ha;->a(Lcom/google/googlenav/ui/wizard/ha;Ljava/util/List;)Ljava/util/List;

    .line 85
    if-eqz p2, :cond_7e

    .line 86
    new-instance v0, Lcom/google/googlenav/ai;

    invoke-direct {v0, p2}, Lcom/google/googlenav/ai;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 87
    const/16 v2, 0x4b

    sget-object v3, Lbm/x;->e:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {v0, v2, v3}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 90
    invoke-virtual {v2, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move v0, v1

    .line 91
    :goto_41
    if-ge v0, v3, :cond_6f

    .line 92
    invoke-virtual {v2, v9, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 93
    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 95
    const/16 v6, 0x1e

    invoke-virtual {v4, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 97
    invoke-static {v5}, Laa/b;->c(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6c

    .line 98
    iget-object v7, p0, Lcom/google/googlenav/ui/wizard/hc;->b:Lcom/google/googlenav/ui/wizard/ha;

    invoke-static {v7}, Lcom/google/googlenav/ui/wizard/ha;->b(Lcom/google/googlenav/ui/wizard/ha;)Ljava/util/List;

    move-result-object v7

    const/16 v8, 0x12

    invoke-virtual {v4, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-static {v4, v5, v6}, Lcom/google/googlenav/cy;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/cy;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 103
    :cond_6f
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hc;->b:Lcom/google/googlenav/ui/wizard/ha;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ha;->b(Lcom/google/googlenav/ui/wizard/ha;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/hc;->b:Lcom/google/googlenav/ui/wizard/ha;

    invoke-static {v2}, Lcom/google/googlenav/ui/wizard/ha;->c(Lcom/google/googlenav/ui/wizard/ha;)Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    :cond_7e
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hc;->b:Lcom/google/googlenav/ui/wizard/ha;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ha;->d(Lcom/google/googlenav/ui/wizard/ha;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 106
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hc;->b:Lcom/google/googlenav/ui/wizard/ha;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ha;->a(Lcom/google/googlenav/ui/wizard/ha;Z)Z

    .line 107
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hc;->b:Lcom/google/googlenav/ui/wizard/ha;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ha;->e(Lcom/google/googlenav/ui/wizard/ha;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ju;->j()V

    .line 108
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hc;->b:Lcom/google/googlenav/ui/wizard/ha;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ha;->b()V

    goto :goto_1c
.end method
