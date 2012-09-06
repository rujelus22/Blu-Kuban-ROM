.class public LFt;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, LFt;->a:I

    .line 21
    iput p2, p0, LFt;->b:I

    .line 22
    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LFt;",
            ">;)",
            "Ljava/util/List",
            "<",
            "LFt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LFt;

    .line 51
    if-nez v2, :cond_1b

    :goto_19
    move-object v2, v0

    .line 59
    goto :goto_b

    .line 53
    :cond_1b
    invoke-virtual {v2}, LFt;->b()I

    move-result v1

    invoke-virtual {v0}, LFt;->a()I

    move-result v5

    if-ne v1, v5, :cond_34

    .line 55
    new-instance v1, LFt;

    invoke-virtual {v2}, LFt;->a()I

    move-result v2

    invoke-virtual {v0}, LFt;->b()I

    move-result v0

    invoke-direct {v1, v2, v0}, LFt;-><init>(II)V

    move-object v0, v1

    goto :goto_19

    .line 58
    :cond_34
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 62
    :cond_38
    if-eqz v2, :cond_3d

    .line 63
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_3d
    return-object v3
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, LFt;->a:I

    return v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, LFt;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 36
    instance-of v1, p1, LFt;

    if-eqz v1, :cond_14

    .line 37
    check-cast p1, LFt;

    .line 38
    iget v1, p1, LFt;->a:I

    iget v2, p0, LFt;->a:I

    if-ne v1, v2, :cond_14

    iget v1, p1, LFt;->b:I

    iget v2, p0, LFt;->b:I

    if-ne v1, v2, :cond_14

    const/4 v0, 0x1

    .line 40
    :cond_14
    return v0
.end method
