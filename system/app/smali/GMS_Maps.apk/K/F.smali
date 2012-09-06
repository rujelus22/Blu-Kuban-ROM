.class public Lk/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;LA/k;)Z
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    if-eqz p0, :cond_c

    invoke-virtual {p2}, LA/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_c
    if-eqz p1, :cond_18

    invoke-virtual {p2}, LA/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public a(Ljava/util/HashMap;Lk/k;Lcom/google/android/maps/driveabout/app/NavigationActivity;Lcom/google/android/maps/driveabout/app/cK;Lcom/google/android/maps/driveabout/app/aN;Ljava/lang/StringBuilder;)Z
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    const-string v0, "tag"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    const-string v1, "text"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    const-string v2, "lookback"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_42

    const/16 v2, 0x2710

    .line 141
    :goto_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, v2

    sub-long/2addr v3, v5

    .line 144
    invoke-virtual {p2}, Lk/k;->a()Ljava/util/List;

    move-result-object v2

    .line 145
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 146
    :cond_2c
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 147
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LA/j;

    .line 148
    invoke-virtual {v2}, LA/j;->g()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-gez v6, :cond_4f

    .line 156
    :cond_40
    const/4 v0, 0x0

    :goto_41
    return v0

    .line 139
    :cond_42
    const-string v2, "lookback"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1a

    .line 151
    :cond_4f
    instance-of v6, v2, LA/k;

    if-eqz v6, :cond_2c

    check-cast v2, LA/k;

    invoke-static {v0, v1, v2}, Lk/f;->a(Ljava/lang/String;Ljava/lang/String;LA/k;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 153
    const/4 v0, 0x1

    goto :goto_41
.end method

.method public a()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tag"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lookback"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public b()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 127
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text"

    aput-object v2, v0, v1

    return-object v0
.end method
