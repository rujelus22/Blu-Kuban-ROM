.class public Lcom/google/googlenav/ui/view/android/bj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:[Lcom/google/googlenav/ui/view/android/bk;

.field c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bj;->a:Ljava/lang/String;

    .line 254
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .registers 2
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bj;->c:Ljava/util/List;

    .line 258
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bj;->c:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public a(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 267
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bj;->c:Ljava/util/List;

    if-nez v0, :cond_7

    move v0, v1

    .line 276
    :goto_6
    return v0

    .line 271
    :cond_7
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bj;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/bR;

    .line 272
    invoke-virtual {v0}, Lcom/google/googlenav/bR;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 273
    const/4 v0, 0x1

    goto :goto_6

    :cond_25
    move v0, v1

    .line 276
    goto :goto_6
.end method

.method public b()Ljava/util/List;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bj;->c:Ljava/util/List;

    return-object v0
.end method
