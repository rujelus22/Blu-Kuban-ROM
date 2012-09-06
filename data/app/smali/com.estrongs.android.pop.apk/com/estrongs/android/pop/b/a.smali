.class public Lcom/estrongs/android/pop/b/a;
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

.field private b:I

.field private c:I

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>(IILjava/lang/Object;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iput p1, p0, Lcom/estrongs/android/pop/b/a;->b:I

    iput p2, p0, Lcom/estrongs/android/pop/b/a;->c:I

    check-cast p3, Ljava/util/HashMap;

    iput-object p3, p0, Lcom/estrongs/android/pop/b/a;->d:Ljava/util/HashMap;

    iput p4, p0, Lcom/estrongs/android/pop/b/a;->e:I

    iget-object v0, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/estrongs/android/pop/d/e;Lcom/estrongs/android/pop/d/e;)I
    .registers 12

    const/4 v3, 0x0

    const/16 v8, 0x2e

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_a

    if-nez p2, :cond_c

    :cond_a
    move v2, v4

    :cond_b
    :goto_b
    return v2

    :cond_c
    iget-boolean v0, p1, Lcom/estrongs/android/pop/d/e;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p2, Lcom/estrongs/android/pop/d/e;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v5, :cond_1c

    if-nez v6, :cond_1e

    :cond_1c
    move v2, v4

    goto :goto_b

    :cond_1e
    iget v0, p0, Lcom/estrongs/android/pop/b/a;->c:I

    if-nez v0, :cond_4c

    move v0, v1

    :goto_23
    iget v7, p0, Lcom/estrongs/android/pop/b/a;->b:I

    if-nez v7, :cond_85

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_4e

    iget-object v0, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto :goto_b

    :cond_4c
    move v0, v2

    goto :goto_23

    :cond_4e
    move v2, v1

    goto :goto_b

    :cond_50
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_77

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_77

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_75

    iget-object v0, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto :goto_b

    :cond_75
    move v2, v1

    goto :goto_b

    :cond_77
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v1

    goto :goto_b

    :cond_85
    iget v7, p0, Lcom/estrongs/android/pop/b/a;->b:I

    if-ne v7, v1, :cond_147

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b2

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_af

    iget-object v0, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_af
    move v2, v1

    goto/16 :goto_b

    :cond_b2
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_138

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_138

    iget-object v1, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_221

    iget-object v5, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_cc
    iget-object v5, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v5, v2, :cond_da

    iget-object v3, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_da
    if-eqz v1, :cond_10b

    if-eqz v3, :cond_10b

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_101

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_fe

    iget-object v0, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_fe
    move v2, v1

    goto/16 :goto_b

    :cond_101
    iget-object v2, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    invoke-virtual {v2, v1, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int v2, v1, v0

    goto/16 :goto_b

    :cond_10b
    if-eqz v1, :cond_113

    if-nez v3, :cond_113

    mul-int/lit8 v2, v0, 0x1

    goto/16 :goto_b

    :cond_113
    if-nez v1, :cond_11b

    if-eqz v3, :cond_11b

    mul-int/lit8 v2, v0, -0x1

    goto/16 :goto_b

    :cond_11b
    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_135

    iget-object v0, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_135
    move v2, v1

    goto/16 :goto_b

    :cond_138
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v1

    goto/16 :goto_b

    :cond_147
    iget v3, p0, Lcom/estrongs/android/pop/b/a;->b:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_1c1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_175

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_175

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_172

    iget-object v0, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_172
    move v2, v1

    goto/16 :goto_b

    :cond_175
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1b2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1b2

    iget-wide v5, p1, Lcom/estrongs/android/pop/d/e;->e:J

    iget-wide v7, p2, Lcom/estrongs/android/pop/d/e;->e:J

    cmp-long v1, v5, v7

    if-nez v1, :cond_1a6

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_1a3

    iget-object v0, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_1a3
    move v2, v1

    goto/16 :goto_b

    :cond_1a6
    cmp-long v1, v5, v7

    if-lez v1, :cond_1af

    mul-int/lit8 v0, v0, 0x1

    :goto_1ac
    move v2, v0

    goto/16 :goto_b

    :cond_1af
    mul-int/lit8 v0, v0, -0x1

    goto :goto_1ac

    :cond_1b2
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v1

    goto/16 :goto_b

    :cond_1c1
    iget v3, p0, Lcom/estrongs/android/pop/b/a;->b:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_21e

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1d2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1de

    :cond_1d2
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_20f

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_20f

    :cond_1de
    iget-wide v5, p1, Lcom/estrongs/android/pop/d/e;->j:J

    iget-wide v7, p2, Lcom/estrongs/android/pop/d/e;->j:J

    cmp-long v1, v5, v7

    if-nez v1, :cond_203

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_200

    iget-object v0, p1, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/d/e;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_200
    move v2, v1

    goto/16 :goto_b

    :cond_203
    cmp-long v1, v5, v7

    if-lez v1, :cond_20c

    mul-int/lit8 v0, v0, 0x1

    :goto_209
    move v2, v0

    goto/16 :goto_b

    :cond_20c
    mul-int/lit8 v0, v0, -0x1

    goto :goto_209

    :cond_20f
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v1

    goto/16 :goto_b

    :cond_21e
    move v2, v4

    goto/16 :goto_b

    :cond_221
    move-object v1, v3

    goto/16 :goto_cc
.end method

.method public a(Lcom/estrongs/android/pop/netfs/NetFileInfo;Lcom/estrongs/android/pop/netfs/NetFileInfo;)I
    .registers 12

    const/4 v3, 0x0

    const/16 v8, 0x2e

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_a

    if-nez p2, :cond_c

    :cond_a
    move v2, v4

    :cond_b
    :goto_b
    return v2

    :cond_c
    iget-boolean v0, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->isDirectory:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v0, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->isDirectory:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v5, :cond_1c

    if-nez v6, :cond_1e

    :cond_1c
    move v2, v4

    goto :goto_b

    :cond_1e
    iget v0, p0, Lcom/estrongs/android/pop/b/a;->c:I

    if-nez v0, :cond_4c

    move v0, v1

    :goto_23
    iget v7, p0, Lcom/estrongs/android/pop/b/a;->b:I

    if-nez v7, :cond_85

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_50

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_4e

    iget-object v0, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto :goto_b

    :cond_4c
    move v0, v2

    goto :goto_23

    :cond_4e
    move v2, v1

    goto :goto_b

    :cond_50
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_77

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_77

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_75

    iget-object v0, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto :goto_b

    :cond_75
    move v2, v1

    goto :goto_b

    :cond_77
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v1

    goto :goto_b

    :cond_85
    iget v7, p0, Lcom/estrongs/android/pop/b/a;->b:I

    if-ne v7, v1, :cond_147

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b2

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_af

    iget-object v0, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_af
    move v2, v1

    goto/16 :goto_b

    :cond_b2
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_138

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_138

    iget-object v1, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_221

    iget-object v5, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_cc
    iget-object v5, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v5, v2, :cond_da

    iget-object v3, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_da
    if-eqz v1, :cond_10b

    if-eqz v3, :cond_10b

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_101

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_fe

    iget-object v0, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_fe
    move v2, v1

    goto/16 :goto_b

    :cond_101
    iget-object v2, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    invoke-virtual {v2, v1, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int v2, v1, v0

    goto/16 :goto_b

    :cond_10b
    if-eqz v1, :cond_113

    if-nez v3, :cond_113

    mul-int/lit8 v2, v0, 0x1

    goto/16 :goto_b

    :cond_113
    if-nez v1, :cond_11b

    if-eqz v3, :cond_11b

    mul-int/lit8 v2, v0, -0x1

    goto/16 :goto_b

    :cond_11b
    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_135

    iget-object v0, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_135
    move v2, v1

    goto/16 :goto_b

    :cond_138
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v1

    goto/16 :goto_b

    :cond_147
    iget v3, p0, Lcom/estrongs/android/pop/b/a;->b:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_1c1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_175

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_175

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_172

    iget-object v0, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_172
    move v2, v1

    goto/16 :goto_b

    :cond_175
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1b2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1b2

    iget-wide v5, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->size:J

    iget-wide v7, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->size:J

    cmp-long v1, v5, v7

    if-nez v1, :cond_1a6

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_1a3

    iget-object v0, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_1a3
    move v2, v1

    goto/16 :goto_b

    :cond_1a6
    cmp-long v1, v5, v7

    if-lez v1, :cond_1af

    mul-int/lit8 v0, v0, 0x1

    :goto_1ac
    move v2, v0

    goto/16 :goto_b

    :cond_1af
    mul-int/lit8 v0, v0, -0x1

    goto :goto_1ac

    :cond_1b2
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v1

    goto/16 :goto_b

    :cond_1c1
    iget v3, p0, Lcom/estrongs/android/pop/b/a;->b:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_21e

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1d2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1de

    :cond_1d2
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_20f

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_20f

    :cond_1de
    iget-wide v5, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->lastModifiedTime:J

    iget-wide v7, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->lastModifiedTime:J

    cmp-long v1, v5, v7

    if-nez v1, :cond_203

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v3, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_200

    iget-object v0, p1, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/pop/netfs/NetFileInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_200
    move v2, v1

    goto/16 :goto_b

    :cond_203
    cmp-long v1, v5, v7

    if-lez v1, :cond_20c

    mul-int/lit8 v0, v0, 0x1

    :goto_209
    move v2, v0

    goto/16 :goto_b

    :cond_20c
    mul-int/lit8 v0, v0, -0x1

    goto :goto_209

    :cond_20f
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v1

    goto/16 :goto_b

    :cond_21e
    move v2, v4

    goto/16 :goto_b

    :cond_221
    move-object v1, v3

    goto/16 :goto_cc
.end method

.method public a(Lcom/estrongs/android/util/u;Lcom/estrongs/android/util/u;)I
    .registers 12

    const/4 v4, 0x0

    const/16 v8, 0x2e

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz p1, :cond_a

    if-nez p2, :cond_c

    :cond_a
    move v3, v2

    :cond_b
    :goto_b
    return v3

    :cond_c
    iget v0, p1, Lcom/estrongs/android/util/u;->e:I

    if-ne v0, v1, :cond_24

    move v0, v1

    :goto_11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v0, p2, Lcom/estrongs/android/util/u;->e:I

    if-ne v0, v1, :cond_26

    move v0, v1

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v5, :cond_22

    if-nez v6, :cond_28

    :cond_22
    move v3, v2

    goto :goto_b

    :cond_24
    move v0, v2

    goto :goto_11

    :cond_26
    move v0, v2

    goto :goto_1a

    :cond_28
    iget v0, p0, Lcom/estrongs/android/pop/b/a;->c:I

    if-nez v0, :cond_56

    move v0, v1

    :goto_2d
    iget v7, p0, Lcom/estrongs/android/pop/b/a;->b:I

    if-nez v7, :cond_90

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5a

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5a

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v4, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_58

    iget-object v0, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v3, v2

    goto :goto_b

    :cond_56
    move v0, v3

    goto :goto_2d

    :cond_58
    move v3, v1

    goto :goto_b

    :cond_5a
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_81

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_81

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v4, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_7f

    iget-object v0, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v3, v2

    goto :goto_b

    :cond_7f
    move v3, v1

    goto :goto_b

    :cond_81
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v3, v1

    goto/16 :goto_b

    :cond_90
    iget v7, p0, Lcom/estrongs/android/pop/b/a;->b:I

    if-ne v7, v1, :cond_152

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_bd

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_bd

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v4, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_ba

    iget-object v0, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v3, v2

    goto/16 :goto_b

    :cond_ba
    move v3, v1

    goto/16 :goto_b

    :cond_bd
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_143

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_143

    iget-object v1, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_230

    iget-object v5, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_d7
    iget-object v5, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v5, v3, :cond_e5

    iget-object v4, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_e5
    if-eqz v1, :cond_116

    if-eqz v4, :cond_116

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10c

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v4, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_109

    iget-object v0, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v3, v2

    goto/16 :goto_b

    :cond_109
    move v3, v1

    goto/16 :goto_b

    :cond_10c
    iget-object v2, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    invoke-virtual {v2, v1, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int v3, v1, v0

    goto/16 :goto_b

    :cond_116
    if-eqz v1, :cond_11e

    if-nez v4, :cond_11e

    mul-int/lit8 v3, v0, 0x1

    goto/16 :goto_b

    :cond_11e
    if-nez v1, :cond_126

    if-eqz v4, :cond_126

    mul-int/lit8 v3, v0, -0x1

    goto/16 :goto_b

    :cond_126
    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v4, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_140

    iget-object v0, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v3, v2

    goto/16 :goto_b

    :cond_140
    move v3, v1

    goto/16 :goto_b

    :cond_143
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v3, v1

    goto/16 :goto_b

    :cond_152
    iget v4, p0, Lcom/estrongs/android/pop/b/a;->b:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1ce

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_180

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_180

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v4, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_17d

    iget-object v0, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v3, v2

    goto/16 :goto_b

    :cond_17d
    move v3, v1

    goto/16 :goto_b

    :cond_180
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1bf

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1bf

    iget v1, p1, Lcom/estrongs/android/util/u;->h:I

    int-to-long v4, v1

    iget v1, p2, Lcom/estrongs/android/util/u;->h:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1b3

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v4, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_1b0

    iget-object v0, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v3, v2

    goto/16 :goto_b

    :cond_1b0
    move v3, v1

    goto/16 :goto_b

    :cond_1b3
    cmp-long v1, v4, v6

    if-lez v1, :cond_1bc

    mul-int/lit8 v0, v0, 0x1

    :goto_1b9
    move v3, v0

    goto/16 :goto_b

    :cond_1bc
    mul-int/lit8 v0, v0, -0x1

    goto :goto_1b9

    :cond_1bf
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v3, v1

    goto/16 :goto_b

    :cond_1ce
    iget v4, p0, Lcom/estrongs/android/pop/b/a;->b:I

    const/4 v7, 0x3

    if-ne v4, v7, :cond_22d

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1df

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1eb

    :cond_1df
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_21e

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_21e

    :cond_1eb
    iget v1, p1, Lcom/estrongs/android/util/u;->g:I

    int-to-long v4, v1

    iget v1, p2, Lcom/estrongs/android/util/u;->g:I

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-nez v1, :cond_212

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    iget-object v4, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_20f

    iget-object v0, p1, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    iget-object v1, p2, Lcom/estrongs/android/util/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v3, v2

    goto/16 :goto_b

    :cond_20f
    move v3, v1

    goto/16 :goto_b

    :cond_212
    cmp-long v1, v4, v6

    if-lez v1, :cond_21b

    mul-int/lit8 v0, v0, 0x1

    :goto_218
    move v3, v0

    goto/16 :goto_b

    :cond_21b
    mul-int/lit8 v0, v0, -0x1

    goto :goto_218

    :cond_21e
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v3, v1

    goto/16 :goto_b

    :cond_22d
    move v3, v2

    goto/16 :goto_b

    :cond_230
    move-object v1, v4

    goto/16 :goto_d7
.end method

.method public a(Ljava/io/File;Ljava/io/File;)I
    .registers 12

    const/4 v3, 0x0

    const/16 v8, 0x2e

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    if-eqz p1, :cond_a

    if-nez p2, :cond_c

    :cond_a
    move v2, v4

    :cond_b
    :goto_b
    return v2

    :cond_c
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v5, :cond_20

    if-nez v6, :cond_22

    :cond_20
    move v2, v4

    goto :goto_b

    :cond_22
    iget v0, p0, Lcom/estrongs/android/pop/b/a;->c:I

    if-nez v0, :cond_58

    move v0, v1

    :goto_27
    iget v7, p0, Lcom/estrongs/android/pop/b/a;->b:I

    if-nez v7, :cond_9a

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5c

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_5a

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto :goto_b

    :cond_58
    move v0, v2

    goto :goto_27

    :cond_5a
    move v2, v1

    goto :goto_b

    :cond_5c
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_8b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_8b

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_89

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto :goto_b

    :cond_89
    move v2, v1

    goto :goto_b

    :cond_8b
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v1

    goto/16 :goto_b

    :cond_9a
    iget v7, p0, Lcom/estrongs/android/pop/b/a;->b:I

    if-ne v7, v1, :cond_17c

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_cf

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_cf

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_cc

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_cc
    move v2, v1

    goto/16 :goto_b

    :cond_cf
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_16d

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_16d

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v2, :cond_276

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_ed
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    if-eq v5, v2, :cond_ff

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_ff
    if-eqz v1, :cond_138

    if-eqz v3, :cond_138

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12e

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_12b

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_12b
    move v2, v1

    goto/16 :goto_b

    :cond_12e
    iget-object v2, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    invoke-virtual {v2, v1, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int v2, v1, v0

    goto/16 :goto_b

    :cond_138
    if-eqz v1, :cond_140

    if-nez v3, :cond_140

    mul-int/lit8 v2, v0, 0x1

    goto/16 :goto_b

    :cond_140
    if-nez v1, :cond_148

    if-eqz v3, :cond_148

    mul-int/lit8 v2, v0, -0x1

    goto/16 :goto_b

    :cond_148
    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_16a

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_16a
    move v2, v1

    goto/16 :goto_b

    :cond_16d
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v1

    goto/16 :goto_b

    :cond_17c
    iget v3, p0, Lcom/estrongs/android/pop/b/a;->b:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_20a

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1b2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1b2

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_1af

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_1af
    move v2, v1

    goto/16 :goto_b

    :cond_1b2
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1fb

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1fb

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-nez v1, :cond_1ef

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_1ec

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_1ec
    move v2, v1

    goto/16 :goto_b

    :cond_1ef
    cmp-long v1, v5, v7

    if-lez v1, :cond_1f8

    mul-int/lit8 v0, v0, 0x1

    :goto_1f5
    move v2, v0

    goto/16 :goto_b

    :cond_1f8
    mul-int/lit8 v0, v0, -0x1

    goto :goto_1f5

    :cond_1fb
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v1

    goto/16 :goto_b

    :cond_20a
    iget v3, p0, Lcom/estrongs/android/pop/b/a;->b:I

    const/4 v7, 0x3

    if-ne v3, v7, :cond_273

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_21b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_227

    :cond_21b
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_264

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_264

    :cond_227
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-nez v1, :cond_258

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    if-nez v1, :cond_255

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v4

    goto/16 :goto_b

    :cond_255
    move v2, v1

    goto/16 :goto_b

    :cond_258
    cmp-long v1, v5, v7

    if-lez v1, :cond_261

    mul-int/lit8 v0, v0, 0x1

    :goto_25e
    move v2, v0

    goto/16 :goto_b

    :cond_261
    mul-int/lit8 v0, v0, -0x1

    goto :goto_25e

    :cond_264
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    move v2, v1

    goto/16 :goto_b

    :cond_273
    move v2, v4

    goto/16 :goto_b

    :cond_276
    move-object v1, v3

    goto/16 :goto_ed
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    :try_start_0
    iget v0, p0, Lcom/estrongs/android/pop/b/a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/b/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/b/a;->a(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    :goto_19
    return v0

    :cond_1a
    iget v0, p0, Lcom/estrongs/android/pop/b/a;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/estrongs/android/pop/b/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/d/e;

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/d/e;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/b/a;->a(Lcom/estrongs/android/pop/d/e;Lcom/estrongs/android/pop/d/e;)I

    move-result v0

    goto :goto_19

    :cond_34
    iget v0, p0, Lcom/estrongs/android/pop/b/a;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4e

    iget-object v0, p0, Lcom/estrongs/android/pop/b/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/util/u;

    iget-object v1, p0, Lcom/estrongs/android/pop/b/a;->d:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/util/u;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/b/a;->a(Lcom/estrongs/android/util/u;Lcom/estrongs/android/util/u;)I

    move-result v0

    goto :goto_19

    :cond_4e
    iget v0, p0, Lcom/estrongs/android/pop/b/a;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_79

    invoke-static {p1}, Lcom/estrongs/android/pop/a/d;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/estrongs/android/pop/a/d;->w(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/b/a;->d:Ljava/util/HashMap;

    if-nez v0, :cond_74

    :goto_5f
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/netfs/NetFileInfo;

    iget-object v2, p0, Lcom/estrongs/android/pop/b/a;->d:Ljava/util/HashMap;

    if-nez v1, :cond_76

    :goto_69
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/estrongs/android/pop/netfs/NetFileInfo;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/b/a;->a(Lcom/estrongs/android/pop/netfs/NetFileInfo;Lcom/estrongs/android/pop/netfs/NetFileInfo;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_78

    move-result v0

    goto :goto_19

    :cond_74
    move-object p1, v0

    goto :goto_5f

    :cond_76
    move-object p2, v1

    goto :goto_69

    :catch_78
    move-exception v0

    :cond_79
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/estrongs/android/pop/b/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
