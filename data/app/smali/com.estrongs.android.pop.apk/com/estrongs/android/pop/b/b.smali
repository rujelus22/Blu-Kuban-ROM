.class public Lcom/estrongs/android/pop/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/text/Collator;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/b/b;->a:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/b/b;->a:Ljava/text/Collator;

    iput-object p1, p0, Lcom/estrongs/android/pop/b/b;->b:Ljava/util/Map;

    iput p2, p0, Lcom/estrongs/android/pop/b/b;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/b/b;->b:Ljava/util/Map;

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    if-nez p2, :cond_d

    :cond_b
    move v0, v3

    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/estrongs/android/pop/b/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/estrongs/android/pop/b/b;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-eqz v0, :cond_29

    if-nez v1, :cond_2b

    :cond_29
    move v0, v3

    goto :goto_c

    :cond_2b
    aget-object v2, v0, v3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    aget-object v2, v1, v3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget v2, p0, Lcom/estrongs/android/pop/b/b;->c:I

    if-nez v2, :cond_6d

    move v2, v5

    :goto_40
    if-eqz v8, :cond_44

    if-nez v9, :cond_48

    :cond_44
    if-nez v8, :cond_7b

    if-nez v9, :cond_7b

    :cond_48
    aget-object v0, v0, v5

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aget-object v0, v1, v5

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v5, v8, v0

    if-nez v5, :cond_71

    iget-object v0, p0, Lcom/estrongs/android/pop/b/b;->a:Ljava/text/Collator;

    invoke-virtual {v0, v6, v7}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    mul-int/2addr v0, v2

    if-nez v0, :cond_c

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    move v0, v3

    goto :goto_c

    :cond_6d
    move v2, v4

    goto :goto_40

    :cond_6f
    move v0, v4

    goto :goto_c

    :cond_71
    cmp-long v0, v8, v0

    if-lez v0, :cond_78

    mul-int/lit8 v0, v2, 0x1

    goto :goto_c

    :cond_78
    mul-int/lit8 v0, v2, -0x1

    goto :goto_c

    :cond_7b
    if-nez v8, :cond_81

    if-eqz v9, :cond_81

    move v0, v5

    goto :goto_c

    :cond_81
    move v0, v4

    goto :goto_c
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
