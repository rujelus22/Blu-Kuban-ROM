.class public Lcom/google/android/location/localizer/D;
.super Ljava/lang/Object;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Li/E;)V
    .registers 3

    invoke-interface {p1}, Li/E;->p()Li/F;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/location/localizer/D;-><init>(Li/F;)V

    return-void
.end method

.method constructor <init>(Li/F;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/google/android/location/localizer/D;->a(Li/F;)I

    move-result v0

    iput v0, p0, Lcom/google/android/location/localizer/D;->a:I

    return-void
.end method

.method private a(Li/F;)I
    .registers 6

    const/4 v1, 0x0

    const/16 v0, -0xa

    iget-object v2, p1, Li/F;->a:Ljava/lang/String;

    const-string v3, "LGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iget-object v2, p1, Li/F;->b:Ljava/lang/String;

    const-string v3, "P9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    :cond_17
    :goto_17
    return v0

    :cond_18
    iget-object v2, p1, Li/F;->a:Ljava/lang/String;

    const-string v3, "HTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p1, Li/F;->b:Ljava/lang/String;

    const-string v3, "Nexus One"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_2c
    invoke-static {p1}, Lcom/google/android/location/localizer/D;->d(Li/F;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p1, Li/F;->b:Ljava/lang/String;

    const-string v3, "Droid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    :cond_3c
    invoke-static {p1}, Lcom/google/android/location/localizer/D;->b(Li/F;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p1, Li/F;->b:Ljava/lang/String;

    const-string v2, "Nexus S"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move v0, v1

    goto :goto_17

    :cond_4e
    invoke-static {p1}, Lcom/google/android/location/localizer/D;->b(Li/F;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p1, Li/F;->b:Ljava/lang/String;

    const-string v2, "Galaxy Nexus"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    const/4 v0, -0x5

    goto :goto_17

    :cond_60
    invoke-static {p1}, Lcom/google/android/location/localizer/D;->b(Li/F;)Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p1, Li/F;->b:Ljava/lang/String;

    const-string v2, "SC-02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    const/4 v0, -0x3

    goto :goto_17

    :cond_72
    invoke-static {p1}, Lcom/google/android/location/localizer/D;->c(Li/F;)Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object v0, p1, Li/F;->b:Ljava/lang/String;

    const-string v2, "IS11S"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    iget-object v0, p1, Li/F;->b:Ljava/lang/String;

    const-string v2, "SO-02C"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    :cond_8c
    const/4 v0, -0x1

    goto :goto_17

    :cond_8e
    invoke-static {p1}, Lcom/google/android/location/localizer/D;->d(Li/F;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p1, Li/F;->b:Ljava/lang/String;

    const-string v2, "Xoom"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a1

    const/4 v0, -0x8

    goto/16 :goto_17

    :cond_a1
    invoke-static {p1}, Lcom/google/android/location/localizer/D;->b(Li/F;)Z

    move-result v0

    if-eqz v0, :cond_b5

    iget-object v0, p1, Li/F;->b:Ljava/lang/String;

    const-string v2, "GT-P7510"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b5

    const/16 v0, -0xf

    goto/16 :goto_17

    :cond_b5
    iget-object v0, p1, Li/F;->a:Ljava/lang/String;

    const-string v2, "mock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    iget-object v0, p1, Li/F;->b:Ljava/lang/String;

    const-string v2, "mock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    move v0, v1

    goto/16 :goto_17

    :cond_cc
    const/4 v0, -0x7

    goto/16 :goto_17
.end method

.method private static b(Li/F;)Z
    .registers 3

    iget-object v0, p0, Li/F;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static c(Li/F;)Z
    .registers 3

    iget-object v0, p0, Li/F;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static d(Li/F;)Z
    .registers 3

    iget-object v0, p0, Li/F;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "motorola"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)I
    .registers 3

    iget v0, p0, Lcom/google/android/location/localizer/D;->a:I

    add-int/2addr v0, p1

    return v0
.end method

.method public a(Ljava/util/Map;)Ljava/util/Map;
    .registers 6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/location/localizer/D;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_33
    return-object v1
.end method
