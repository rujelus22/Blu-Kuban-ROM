.class public Lcom/android/contacts/model/AccountTypeWithDataSet;
.super Ljava/lang/Object;
.source "AccountTypeWithDataSet.java"


# instance fields
.field public final accountType:Ljava/lang/String;

.field public final dataSet:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-object p1, v0

    .end local p1
    :cond_b
    iput-object p1, p0, Lcom/android/contacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    :goto_13
    iput-object v0, p0, Lcom/android/contacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    .line 37
    return-void

    :cond_16
    move-object v0, p2

    .line 36
    goto :goto_13
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountTypeWithDataSet;
    .registers 3
    .parameter "accountType"
    .parameter "dataSet"

    .prologue
    .line 40
    new-instance v0, Lcom/android/contacts/model/AccountTypeWithDataSet;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/model/AccountTypeWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 45
    instance-of v2, p1, Lcom/android/contacts/model/AccountTypeWithDataSet;

    if-nez v2, :cond_6

    .line 48
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/android/contacts/model/AccountTypeWithDataSet;

    .line 48
    .local v0, other:Lcom/android/contacts/model/AccountTypeWithDataSet;
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/contacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    if-nez v0, :cond_c

    move v0, v1

    :goto_6
    iget-object v2, p0, Lcom/android/contacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    if-nez v2, :cond_13

    :goto_a
    xor-int/2addr v0, v1

    return v0

    :cond_c
    iget-object v0, p0, Lcom/android/contacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_6

    :cond_13
    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
