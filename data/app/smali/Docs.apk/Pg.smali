.class LPg;
.super Landroid/widget/Filter;
.source "ContactFilterAdapter.java"


# instance fields
.field final synthetic a:LPe;


# direct methods
.method private constructor <init>(LPe;)V
    .registers 2
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, LPg;->a:LPe;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LPe;LPf;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, LPg;-><init>(LPe;)V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 5
    .parameter

    .prologue
    .line 126
    check-cast p1, LPb;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-virtual {p1}, LPb;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 133
    if-nez v1, :cond_32

    .line 134
    invoke-virtual {p1}, LPb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, LPb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :goto_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :cond_32
    invoke-virtual {p1}, LPb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 14
    .parameter

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v5, Landroid/widget/Filter$FilterResults;

    invoke-direct {v5}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 58
    if-nez p1, :cond_23

    const-string v0, ""

    move-object v1, v0

    .line 61
    :goto_e
    invoke-static {v1}, LPe;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 63
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_31

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    iput-object v0, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 65
    iput v3, v5, Landroid/widget/Filter$FilterResults;->count:I

    .line 106
    :goto_22
    return-object v5

    .line 58
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_e

    .line 67
    :cond_31
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v4, :cond_7f

    .line 69
    new-array v1, v10, [Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v3

    const-string v0, ""

    aput-object v0, v1, v4

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :goto_4d
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 96
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fe

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 97
    iget-object v6, p0, LPg;->a:LPe;

    invoke-static {v6}, LPe;->a(LPe;)LZX;

    move-result-object v6

    invoke-virtual {v6, v1, v0, v11}, LZX;->a(Ljava/util/Set;[Ljava/lang/String;I)V

    .line 98
    iget-object v6, p0, LPg;->a:LPe;

    invoke-static {v6}, LPe;->a(LPe;)LZX;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/String;

    aget-object v8, v0, v4

    aput-object v8, v7, v3

    aget-object v0, v0, v3

    aput-object v0, v7, v4

    invoke-virtual {v6, v1, v7, v11}, LZX;->a(Ljava/util/Set;[Ljava/lang/String;I)V

    goto :goto_56

    .line 74
    :cond_7f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v3

    .line 75
    :goto_85
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_a1

    .line 76
    if-lez v2, :cond_94

    .line 77
    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_94
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_85

    .line 81
    :cond_a1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v4

    .line 82
    :goto_a7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_c1

    .line 83
    if-le v2, v4, :cond_b4

    .line 84
    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_b4
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a7

    .line 89
    :cond_c1
    new-array v2, v10, [Ljava/lang/String;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-array v2, v10, [Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-array v0, v10, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4d

    .line 102
    :cond_fe
    iput-object v1, v5, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 103
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    iput v0, v5, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_22
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, LPg;->a:LPe;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LPe;->setNotifyOnChange(Z)V

    .line 112
    iget-object v0, p0, LPg;->a:LPe;

    invoke-virtual {v0}, LPe;->clear()V

    .line 114
    if-nez p2, :cond_26

    const/4 v0, 0x0

    .line 116
    :goto_e
    if-eqz v0, :cond_2b

    .line 118
    :goto_10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LPb;

    .line 119
    iget-object v2, p0, LPg;->a:LPe;

    invoke-virtual {v2, v0}, LPe;->add(Ljava/lang/Object;)V

    goto :goto_14

    .line 114
    :cond_26
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    goto :goto_e

    .line 116
    :cond_2b
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_10

    .line 121
    :cond_30
    iget-object v0, p0, LPg;->a:LPe;

    invoke-virtual {v0}, LPe;->notifyDataSetChanged()V

    .line 122
    return-void
.end method
