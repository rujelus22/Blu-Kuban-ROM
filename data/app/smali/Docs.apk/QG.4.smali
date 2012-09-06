.class public LQG;
.super Ljava/lang/Object;
.source "SimpleAlphaIndexer.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private a:[I

.field private a:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "LQH;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 48
    const/4 v1, 0x0

    move v2, v3

    .line 49
    :goto_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_50

    .line 50
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQH;

    invoke-interface {v0}, LQH;->a()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_46

    const-string v0, " "

    .line 53
    :goto_2b
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7e

    .line 54
    :cond_37
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :goto_41
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_13

    .line 51
    :cond_46
    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_2b

    .line 59
    :cond_50
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, LQG;->a:[Ljava/lang/String;

    .line 60
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, LQG;->a:[I

    .line 61
    :goto_66
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7d

    .line 62
    iget-object v1, p0, LQG;->a:[I

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v1, v3

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 64
    :cond_7d
    return-void

    :cond_7e
    move-object v0, v1

    goto :goto_41
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, LQG;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public getPositionForSection(I)I
    .registers 4
    .parameter

    .prologue
    .line 68
    if-gez p1, :cond_4

    .line 69
    const/4 v0, 0x0

    .line 73
    :goto_3
    return v0

    .line 70
    :cond_4
    iget-object v0, p0, LQG;->a:[I

    array-length v0, v0

    if-lt p1, v0, :cond_13

    .line 71
    iget-object v0, p0, LQG;->a:[I

    iget-object v1, p0, LQG;->a:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_3

    .line 73
    :cond_13
    iget-object v0, p0, LQG;->a:[I

    aget v0, v0, p1

    goto :goto_3
.end method

.method public getSectionForPosition(I)I
    .registers 3
    .parameter

    .prologue
    .line 79
    if-gez p1, :cond_9

    const/4 v0, 0x0

    .line 80
    :goto_3
    if-gez v0, :cond_8

    add-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    :cond_8
    return v0

    .line 79
    :cond_9
    iget-object v0, p0, LQG;->a:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    goto :goto_3
.end method

.method public synthetic getSections()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, LQG;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
