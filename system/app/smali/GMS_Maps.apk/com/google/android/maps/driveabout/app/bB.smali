.class public Lcom/google/android/maps/driveabout/app/bB;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bB;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bB;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/bw;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/bB;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bB;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bB;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bB;Lcom/google/android/maps/driveabout/app/bB;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bB;->b(Lcom/google/android/maps/driveabout/app/bB;)V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/app/bB;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->c:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bB;->a:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bB;
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-object p0

    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bB;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bB;->c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bB;

    move-result-object p0

    if-eqz p0, :cond_13

    goto :goto_8

    :cond_26
    const/4 p0, 0x0

    goto :goto_8
.end method

.method public d(I)Lcom/google/android/maps/driveabout/app/bB;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bB;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bB;
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->b:Ljava/lang/String;

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bB;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bB;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    :goto_20
    return-object p0

    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bB;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bB;->d(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bB;

    move-result-object p0

    if-eqz p0, :cond_2b

    goto :goto_20

    :cond_3e
    const/4 p0, 0x0

    goto :goto_20
.end method

.method public i()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bB;->b:Ljava/lang/String;

    return-object v0
.end method
