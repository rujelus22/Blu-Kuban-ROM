.class public final Lcom/sdgtl/mediahub/spr/common/fl;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/util/HashMap;

.field public static b:Ljava/util/HashMap;

.field public static c:Lcom/sdgtl/mediahub/spr/common/ej;

.field public static d:Lcom/sdgtl/mediahub/spr/common/ej;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->a:Ljava/util/HashMap;

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->b:Ljava/util/HashMap;

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->c:Lcom/sdgtl/mediahub/spr/common/ej;

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->d:Lcom/sdgtl/mediahub/spr/common/ej;

    return-void
.end method

.method public static a()Lcom/sdgtl/mediahub/spr/common/ej;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->c:Lcom/sdgtl/mediahub/spr/common/ej;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ek;
    .registers 5

    const/4 v1, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->a:Ljava/util/HashMap;

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dr;

    if-nez v0, :cond_13

    move-object v0, v1

    goto :goto_6

    :cond_13
    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ek;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/ek;-><init>()V

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dr;->g:Ljava/util/ArrayList;

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/dr;->f:I

    if-gtz v3, :cond_55

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_33

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dr;->f:I

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    const/16 v0, 0x2329

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    :goto_2c
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    goto :goto_6

    :cond_33
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_4c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x20

    const/16 v3, 0x20

    if-ge v0, v3, :cond_4c

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    goto :goto_2c

    :cond_4c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    goto :goto_2c

    :cond_55
    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dr;->f:I

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    goto :goto_2c
.end method

.method public static a(Lcom/sdgtl/mediahub/spr/common/dr;)V
    .registers 3

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->a:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->a:Ljava/util/HashMap;

    :cond_b
    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/dr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/sdgtl/mediahub/spr/common/ej;)V
    .registers 2

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/ej;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/ej;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->c:Lcom/sdgtl/mediahub/spr/common/ej;

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/fl;->c:Lcom/sdgtl/mediahub/spr/common/ej;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)V
    .registers 6

    const/4 v2, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->b:Ljava/util/HashMap;

    move v1, v2

    :goto_10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_17

    return-void

    :cond_17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dr;

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/dr;->f:I

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dr;->c:Ljava/lang/String;

    const-string v3, "05"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    sget-object v3, Lcom/sdgtl/mediahub/spr/common/fl;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dr;

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/dr;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dr;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_42
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    :cond_46
    sget-object v3, Lcom/sdgtl/mediahub/spr/common/fl;->a:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dr;

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/dr;->a:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dr;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42
.end method

.method public static b()Lcom/sdgtl/mediahub/spr/common/ej;
    .registers 1

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->d:Lcom/sdgtl/mediahub/spr/common/ej;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/sdgtl/mediahub/spr/common/ek;
    .registers 5

    const/4 v1, 0x0

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->b:Ljava/util/HashMap;

    if-nez v0, :cond_7

    move-object v0, v1

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dr;

    if-nez v0, :cond_13

    move-object v0, v1

    goto :goto_6

    :cond_13
    new-instance v1, Lcom/sdgtl/mediahub/spr/common/ek;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/ek;-><init>()V

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dr;->g:Ljava/util/ArrayList;

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/dr;->f:I

    if-gtz v3, :cond_46

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_32

    const/4 v0, 0x0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    const/16 v0, 0x2329

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    :goto_2b
    iget-object v0, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v0, v1

    goto :goto_6

    :cond_32
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v3, 0x20

    if-ge v0, v3, :cond_41

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    goto :goto_2b

    :cond_41
    const/16 v0, 0x21

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    goto :goto_2b

    :cond_46
    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dr;->f:I

    iput v0, v1, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    goto :goto_2b
.end method

.method public static b(Lcom/sdgtl/mediahub/spr/common/dr;)V
    .registers 3

    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->b:Ljava/util/HashMap;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->b:Ljava/util/HashMap;

    :cond_b
    sget-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->b:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/dr;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(Lcom/sdgtl/mediahub/spr/common/ej;)V
    .registers 2

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/ej;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/ej;-><init>()V

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->d:Lcom/sdgtl/mediahub/spr/common/ej;

    sput-object p0, Lcom/sdgtl/mediahub/spr/common/fl;->d:Lcom/sdgtl/mediahub/spr/common/ej;

    return-void
.end method

.method public static c()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->a:Ljava/util/HashMap;

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->b:Ljava/util/HashMap;

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->c:Lcom/sdgtl/mediahub/spr/common/ej;

    sput-object v0, Lcom/sdgtl/mediahub/spr/common/fl;->d:Lcom/sdgtl/mediahub/spr/common/ej;

    return-void
.end method
