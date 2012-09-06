.class LQL;
.super Landroid/widget/Filter;
.source "SingleTokenContactFilterAdapter.java"


# instance fields
.field final synthetic a:LQI;


# direct methods
.method private constructor <init>(LQI;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, LQL;->a:LQI;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LQI;LQJ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, LQL;-><init>(LQI;)V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 5
    .parameter

    .prologue
    .line 127
    check-cast p1, LPb;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    invoke-virtual {p1}, LPb;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 134
    if-nez v1, :cond_32

    .line 135
    invoke-virtual {p1}, LPb;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, LPb;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :goto_2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 138
    :cond_32
    invoke-virtual {p1}, LPb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 8
    .parameter

    .prologue
    .line 58
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 60
    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_17

    .line 61
    :cond_d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 62
    const/4 v0, 0x0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 108
    :goto_16
    return-object v1

    .line 64
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 70
    new-instance v0, LQK;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, LQK;-><init>(Ljava/lang/String;LPb;)V

    .line 71
    iget-object v3, p0, LQL;->a:LQI;

    invoke-static {v3}, LQI;->a(LQI;)[LQK;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 81
    :goto_2f
    if-lez v0, :cond_46

    iget-object v3, p0, LQL;->a:LQI;

    invoke-static {v3}, LQI;->a(LQI;)[LQK;

    move-result-object v3

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    iget-object v3, v3, LQK;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 82
    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 88
    :cond_46
    if-ltz v0, :cond_89

    .line 92
    :goto_48
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 94
    :goto_4d
    iget-object v4, p0, LQL;->a:LQI;

    invoke-static {v4}, LQI;->a(LQI;)[LQK;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_7b

    iget-object v4, p0, LQL;->a:LQI;

    invoke-static {v4}, LQI;->a(LQI;)[LQK;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v4, v4, LQK;->a:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 95
    iget-object v4, p0, LQL;->a:LQI;

    invoke-static {v4}, LQI;->a(LQI;)[LQK;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v4, v4, LQK;->a:LPb;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    const/16 v5, 0x14

    if-le v4, v5, :cond_8d

    .line 101
    :cond_7b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_16

    .line 88
    :cond_89
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    goto :goto_48

    .line 94
    :cond_8d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4d
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, LQL;->a:LQI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LQI;->setNotifyOnChange(Z)V

    .line 114
    iget-object v0, p0, LQL;->a:LQI;

    invoke-virtual {v0}, LQI;->clear()V

    .line 116
    if-nez p2, :cond_27

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 119
    :goto_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LPb;

    .line 120
    iget-object v2, p0, LQL;->a:LQI;

    invoke-virtual {v2, v0}, LQI;->add(Ljava/lang/Object;)V

    goto :goto_15

    .line 116
    :cond_27
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    goto :goto_11

    .line 122
    :cond_2c
    iget-object v0, p0, LQL;->a:LQI;

    invoke-virtual {v0}, LQI;->notifyDataSetChanged()V

    .line 123
    return-void
.end method
