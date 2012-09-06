.class Lcom/google/googlenav/ui/view/dialog/cA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cz;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/cz;)V
    .registers 2
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cA;->a:Lcom/google/googlenav/ui/view/dialog/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 15
    .parameter

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 135
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cA;->a:Lcom/google/googlenav/ui/view/dialog/cz;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/cz;->a(Lcom/google/googlenav/ui/view/dialog/cz;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    .line 136
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cA;->a:Lcom/google/googlenav/ui/view/dialog/cz;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/cz;->b(Lcom/google/googlenav/ui/view/dialog/cz;)Lcom/google/googlenav/ui/view/dialog/cD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/view/dialog/cD;->getCount()I

    move-result v5

    .line 139
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    .line 141
    :goto_27
    if-ge v3, v5, :cond_6a

    .line 144
    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 141
    :cond_31
    :goto_31
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_27

    .line 147
    :cond_35
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cA;->a:Lcom/google/googlenav/ui/view/dialog/cz;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/cz;->b(Lcom/google/googlenav/ui/view/dialog/cz;)Lcom/google/googlenav/ui/view/dialog/cD;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/googlenav/ui/view/dialog/cD;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 148
    invoke-virtual {v0, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 149
    invoke-virtual {v0, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 150
    invoke-virtual {v0, v10}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 157
    :cond_55
    invoke-virtual {v0, v12}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v8

    move v1, v2

    .line 158
    :goto_5a
    if-ge v1, v8, :cond_31

    .line 159
    invoke-virtual {v0, v12, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v9

    invoke-virtual {v9, v11}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 161
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 165
    :cond_6a
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cA;->a:Lcom/google/googlenav/ui/view/dialog/cz;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/cz;->a:Lcom/google/googlenav/ui/wizard/ja;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cA;->a:Lcom/google/googlenav/ui/view/dialog/cz;

    iget v1, v1, Lcom/google/googlenav/ui/view/dialog/cz;->c:I

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/cA;->a:Lcom/google/googlenav/ui/view/dialog/cz;

    iget v2, v2, Lcom/google/googlenav/ui/view/dialog/cz;->e:I

    invoke-virtual {v0, v6, v7, v1, v2}, Lcom/google/googlenav/ui/wizard/ja;->a(Ljava/util/List;Ljava/util/List;II)V

    .line 167
    return-void
.end method
