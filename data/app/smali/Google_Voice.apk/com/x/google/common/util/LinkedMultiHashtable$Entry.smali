.class public Lcom/x/google/common/util/LinkedMultiHashtable$Entry;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/x/google/common/util/LinkedMultiHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field key:Ljava/lang/Object;

.field value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_b
    iput-object p1, p0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->key:Ljava/lang/Object;

    iput-object p2, p0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->value:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/x/google/common/util/LinkedMultiHashtable$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public appendToStringBuffer(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_17
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;

    if-eqz v2, :cond_2d

    check-cast p1, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;

    iget-object v2, p0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->key:Ljava/lang/Object;

    iget-object v3, p1, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->value:Ljava/lang/Object;

    if-nez v2, :cond_1d

    iget-object v2, p1, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->value:Ljava/lang/Object;

    if-eqz v2, :cond_4

    :cond_1d
    iget-object v2, p0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->value:Ljava/lang/Object;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->value:Ljava/lang/Object;

    iget-object v3, p1, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2b
    move v0, v1

    goto :goto_4

    :cond_2d
    move v0, v1

    goto :goto_4
.end method

.method public getKey()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->value:Ljava/lang/Object;

    if-nez v0, :cond_11

    const/4 v0, 0x0

    :goto_f
    add-int/2addr v0, v1

    return v0

    :cond_11
    iget-object v0, p0, Lcom/x/google/common/util/LinkedMultiHashtable$Entry;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_f
.end method
