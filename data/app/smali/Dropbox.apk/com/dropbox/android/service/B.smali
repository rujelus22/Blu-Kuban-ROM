.class public abstract Lcom/dropbox/android/service/B;
.super Ljava/lang/Object;
.source "panda.py"


# instance fields
.field private final a:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/dropbox/android/service/B;->a:Ljava/util/HashSet;

    .line 452
    invoke-virtual {p0}, Lcom/dropbox/android/service/B;->a()Ljava/lang/String;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_24

    .line 454
    const-string v1, "\\|"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 455
    array-length v2, v1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v2, :cond_24

    aget-object v3, v1, v0

    .line 456
    iget-object v4, p0, Lcom/dropbox/android/service/B;->a:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 459
    :cond_24
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 486
    const-string v0, "|"

    iget-object v1, p0, Lcom/dropbox/android/service/B;->a:Ljava/util/HashSet;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-virtual {p0, v0}, Lcom/dropbox/android/service/B;->a(Ljava/lang/String;)V

    .line 488
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method public final b(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcom/dropbox/android/service/B;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 463
    if-eqz v0, :cond_b

    .line 464
    invoke-direct {p0}, Lcom/dropbox/android/service/B;->b()V

    .line 466
    :cond_b
    return v0
.end method

.method public final c(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 470
    iget-object v0, p0, Lcom/dropbox/android/service/B;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 471
    if-eqz v0, :cond_b

    .line 472
    invoke-direct {p0}, Lcom/dropbox/android/service/B;->b()V

    .line 474
    :cond_b
    return v0
.end method

.method public final d(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 478
    iget-object v0, p0, Lcom/dropbox/android/service/B;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
