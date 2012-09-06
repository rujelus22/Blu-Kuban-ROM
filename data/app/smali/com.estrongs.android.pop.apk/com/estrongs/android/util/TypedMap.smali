.class public Lcom/estrongs/android/util/TypedMap;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/estrongs/android/util/TypedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/view/a/m;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/estrongs/android/util/TypedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return p2

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/estrongs/android/pop/view/a/m;->a(Ljava/lang/Object;Z)Z

    move-result p2

    goto :goto_6
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0, p1}, Lcom/estrongs/android/util/TypedMap;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getInt(Ljava/lang/String;J)I
    .registers 6

    invoke-virtual {p0, p1, p2, p3}, Lcom/estrongs/android/util/TypedMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 4

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/estrongs/android/util/TypedMap;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 5

    invoke-virtual {p0, p1}, Lcom/estrongs/android/util/TypedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-wide p2

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/estrongs/android/pop/view/a/m;->a(Ljava/lang/String;J)J

    move-result-wide p2

    goto :goto_6
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/estrongs/android/util/TypedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/estrongs/android/util/TypedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_a
    return-object p2
.end method
