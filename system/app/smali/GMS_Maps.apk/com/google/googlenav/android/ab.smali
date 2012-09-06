.class public Lcom/google/googlenav/android/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/R;


# instance fields
.field private final a:Lcom/google/googlenav/android/ae;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/googlenav/android/Q;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/ae;)V
    .registers 4
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/googlenav/android/ab;->a:Lcom/google/googlenav/android/ae;

    .line 32
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/ab;->b:Ljava/util/List;

    .line 33
    iget-object v0, p0, Lcom/google/googlenav/android/ab;->b:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/android/af;

    invoke-direct {v1, p1}, Lcom/google/googlenav/android/af;-><init>(Lcom/google/googlenav/android/ae;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/google/googlenav/android/ab;->b:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/android/ac;

    invoke-direct {v1, p1}, Lcom/google/googlenav/android/ac;-><init>(Lcom/google/googlenav/android/ae;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-static {}, Lcom/google/googlenav/android/Q;->a()Lcom/google/googlenav/android/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/ab;->c:Lcom/google/googlenav/android/Q;

    .line 39
    iget-object v0, p0, Lcom/google/googlenav/android/ab;->c:Lcom/google/googlenav/android/Q;

    invoke-virtual {v0}, Lcom/google/googlenav/android/Q;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/android/ab;->a()I

    move-result v1

    if-ne v0, v1, :cond_36

    .line 40
    iget-object v0, p0, Lcom/google/googlenav/android/ab;->c:Lcom/google/googlenav/android/Q;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/android/Q;->a(Lcom/google/googlenav/android/R;)V

    .line 42
    :cond_36
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/googlenav/android/ab;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/ad;

    .line 90
    invoke-interface {v0, p1}, Lcom/google/googlenav/android/ad;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 93
    invoke-interface {v0, p1}, Lcom/google/googlenav/android/ad;->a(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    .line 97
    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x3

    return v0
.end method

.method public a(IILandroid/content/Intent;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 77
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/googlenav/android/ab;->a(Ljava/lang/String;)Z

    .line 79
    :cond_16
    return-void
.end method
