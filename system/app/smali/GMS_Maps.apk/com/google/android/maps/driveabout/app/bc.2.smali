.class public Lcom/google/android/maps/driveabout/app/bC;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bC;->a:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bC;->b:Ljava/lang/String;

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/maps/driveabout/app/bx;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/google/android/maps/driveabout/app/bC;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 143
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 145
    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bC;)V
    .registers 1
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/app/bC;->a()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/app/bC;Lcom/google/android/maps/driveabout/app/bC;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/app/bC;->b(Lcom/google/android/maps/driveabout/app/bC;)V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/app/bC;)V
    .registers 3
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->c:Ljava/util/ArrayList;

    .line 138
    :cond_b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    if-eqz p1, :cond_4

    .line 130
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bC;->a:Ljava/lang/String;

    .line 132
    :cond_4
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bC;
    .registers 4
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 174
    :goto_8
    return-object p0

    .line 166
    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_26

    .line 167
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bC;

    .line 168
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bC;->c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bC;

    move-result-object p0

    .line 169
    if-eqz p0, :cond_13

    goto :goto_8

    .line 174
    :cond_26
    const/4 p0, 0x0

    goto :goto_8
.end method

.method public d(I)Lcom/google/android/maps/driveabout/app/bC;
    .registers 3
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    .line 153
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 155
    :cond_a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bC;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bC;
    .registers 4
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->b:Ljava/lang/String;

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bC;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_21

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bC;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 195
    :goto_20
    return-object p0

    .line 187
    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_3e

    .line 188
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/app/bC;

    .line 189
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/app/bC;->d(Ljava/lang/String;)Lcom/google/android/maps/driveabout/app/bC;

    move-result-object p0

    .line 190
    if-eqz p0, :cond_2b

    goto :goto_20

    .line 195
    :cond_3e
    const/4 p0, 0x0

    goto :goto_20
.end method

.method public j()I
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_5
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->a:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bC;->b:Ljava/lang/String;

    return-object v0
.end method
