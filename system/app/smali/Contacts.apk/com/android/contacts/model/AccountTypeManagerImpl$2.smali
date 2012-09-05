.class final Lcom/android/contacts/model/AccountTypeManagerImpl$2;
.super Ljava/lang/Object;
.source "AccountTypeManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountTypeManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 201
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/accounts/Account;Landroid/accounts/Account;)I
    .registers 10
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v4, 0x1

    const/4 v5, -0x1

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, aDataSet:Ljava/lang/String;
    const/4 v1, 0x0

    .line 206
    .local v1, bDataSet:Ljava/lang/String;
    instance-of v3, p1, Lcom/android/contacts/model/AccountWithDataSet;

    if-eqz v3, :cond_d

    move-object v3, p1

    .line 207
    check-cast v3, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v0, v3, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 209
    :cond_d
    instance-of v3, p2, Lcom/android/contacts/model/AccountWithDataSet;

    if-eqz v3, :cond_16

    move-object v3, p2

    .line 210
    check-cast v3, Lcom/android/contacts/model/AccountWithDataSet;

    iget-object v1, v3, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 213
    :cond_16
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-static {v0, v1}, Lcom/android/internal/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 215
    const/4 v2, 0x0

    .line 234
    :cond_31
    :goto_31
    return v2

    .line 216
    :cond_32
    iget-object v3, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v3, :cond_3a

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-nez v3, :cond_3c

    :cond_3a
    move v2, v5

    .line 217
    goto :goto_31

    .line 218
    :cond_3c
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v3, :cond_44

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-nez v3, :cond_46

    :cond_44
    move v2, v4

    .line 219
    goto :goto_31

    .line 221
    :cond_46
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 222
    .local v2, diff:I
    if-nez v2, :cond_31

    .line 225
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 226
    if-nez v2, :cond_31

    .line 231
    if-eqz v0, :cond_66

    .line 232
    if-nez v1, :cond_61

    move v3, v4

    :goto_5f
    move v2, v3

    goto :goto_31

    :cond_61
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_5f

    :cond_66
    move v2, v5

    .line 234
    goto :goto_31
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 201
    check-cast p1, Landroid/accounts/Account;

    .end local p1
    check-cast p2, Landroid/accounts/Account;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/model/AccountTypeManagerImpl$2;->compare(Landroid/accounts/Account;Landroid/accounts/Account;)I

    move-result v0

    return v0
.end method
