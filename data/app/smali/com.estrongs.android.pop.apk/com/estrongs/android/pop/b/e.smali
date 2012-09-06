.class public Lcom/estrongs/android/pop/b/e;
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

    iput-object v0, p0, Lcom/estrongs/android/pop/b/e;->a:Ljava/text/Collator;

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

    iput-object v0, p0, Lcom/estrongs/android/pop/b/e;->a:Ljava/text/Collator;

    iput-object p1, p0, Lcom/estrongs/android/pop/b/e;->b:Ljava/util/Map;

    iput p2, p0, Lcom/estrongs/android/pop/b/e;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 14

    const/4 v5, 0x0

    const/16 v10, 0x2e

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/b/e;->b:Ljava/util/Map;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    if-nez p2, :cond_10

    :cond_e
    move v4, v6

    :cond_f
    :goto_f
    return v4

    :cond_10
    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/estrongs/android/pop/b/e;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/estrongs/android/pop/b/e;->b:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2c

    if-nez v1, :cond_2e

    :cond_2c
    move v4, v6

    goto :goto_f

    :cond_2e
    iget v2, p0, Lcom/estrongs/android/pop/b/e;->c:I

    if-nez v2, :cond_51

    move v2, v3

    :goto_33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_55

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_55

    iget-object v0, p0, Lcom/estrongs/android/pop/b/e;->a:Ljava/text/Collator;

    invoke-virtual {v0, v7, v8}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    mul-int v3, v0, v2

    if-nez v3, :cond_53

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v4, v6

    goto :goto_f

    :cond_51
    move v2, v4

    goto :goto_33

    :cond_53
    move v4, v3

    goto :goto_f

    :cond_55
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_c5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-nez v9, :cond_c5

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v4, :cond_d4

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_6b
    invoke-virtual {v8, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_75

    invoke-virtual {v8, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    :cond_75
    if-eqz v0, :cond_9f

    if-eqz v5, :cond_9f

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    iget-object v0, p0, Lcom/estrongs/android/pop/b/e;->a:Ljava/text/Collator;

    invoke-virtual {v0, v7, v8}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    mul-int v3, v0, v2

    if-nez v3, :cond_92

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v4, v6

    goto/16 :goto_f

    :cond_92
    move v4, v3

    goto/16 :goto_f

    :cond_95
    iget-object v1, p0, Lcom/estrongs/android/pop/b/e;->a:Ljava/text/Collator;

    invoke-virtual {v1, v0, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    mul-int v4, v0, v2

    goto/16 :goto_f

    :cond_9f
    if-eqz v0, :cond_a7

    if-nez v5, :cond_a7

    mul-int/lit8 v4, v2, 0x1

    goto/16 :goto_f

    :cond_a7
    if-nez v0, :cond_af

    if-eqz v5, :cond_af

    mul-int/lit8 v4, v2, -0x1

    goto/16 :goto_f

    :cond_af
    iget-object v0, p0, Lcom/estrongs/android/pop/b/e;->a:Ljava/text/Collator;

    invoke-virtual {v0, v7, v8}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    mul-int v3, v0, v2

    if-nez v3, :cond_c2

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v4, v6

    goto/16 :goto_f

    :cond_c2
    move v4, v3

    goto/16 :goto_f

    :cond_c5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_f

    move v4, v3

    goto/16 :goto_f

    :cond_d4
    move-object v0, v5

    goto :goto_6b
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/b/e;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
