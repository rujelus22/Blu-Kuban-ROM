.class public Lcom/google/googlenav/android/af;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/V;


# instance fields
.field private final a:Lcom/google/googlenav/android/ai;

.field private final b:Ljava/util/List;

.field private final c:Lcom/google/googlenav/android/U;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/android/ai;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/android/af;->a:Lcom/google/googlenav/android/ai;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/af;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/google/googlenav/android/af;->b:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/android/aj;

    invoke-direct {v1, p1}, Lcom/google/googlenav/android/aj;-><init>(Lcom/google/googlenav/android/ai;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/android/af;->b:Ljava/util/List;

    new-instance v1, Lcom/google/googlenav/android/ag;

    invoke-direct {v1, p1}, Lcom/google/googlenav/android/ag;-><init>(Lcom/google/googlenav/android/ai;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/googlenav/android/U;->a()Lcom/google/googlenav/android/U;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/android/af;->c:Lcom/google/googlenav/android/U;

    iget-object v0, p0, Lcom/google/googlenav/android/af;->c:Lcom/google/googlenav/android/U;

    invoke-virtual {v0}, Lcom/google/googlenav/android/U;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/googlenav/android/af;->ab_()I

    move-result v1

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lcom/google/googlenav/android/af;->c:Lcom/google/googlenav/android/U;

    invoke-virtual {v0, p0}, Lcom/google/googlenav/android/U;->a(Lcom/google/googlenav/android/V;)V

    :cond_36
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/android/af;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/android/ah;

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/ah;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0, p1}, Lcom/google/googlenav/android/ah;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method


# virtual methods
.method public a(IILandroid/content/Intent;)V
    .registers 6

    const-string v0, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/googlenav/android/af;->a(Ljava/lang/String;)Z

    :cond_16
    return-void
.end method

.method public ab_()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method
