.class Lcom/android/exchange/ExchangeService$AccountList;
.super Ljava/util/ArrayList;
.source "ExchangeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/exchange/ExchangeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccountList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/emailcommon/provider/EmailContent$Account;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1587
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/android/emailcommon/provider/EmailContent$Account;)Z
    .registers 5
    .parameter "account"

    .prologue
    .line 1596
    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mEmailAddress:Ljava/lang/String;

    const-string v2, "com.android.exchange"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Account;->mAmAccount:Landroid/accounts/Account;

    .line 1600
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1602
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 1587
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Account;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/exchange/ExchangeService$AccountList;->add(Lcom/android/emailcommon/provider/EmailContent$Account;)Z

    move-result v0

    return v0
.end method

.method public contains(J)Z
    .registers 7
    .parameter "id"

    .prologue
    .line 1608
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1609
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_4

    .line 1610
    const/4 v2, 0x1

    .line 1613
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method public getById(J)Lcom/android/emailcommon/provider/EmailContent$Account;
    .registers 7
    .parameter "id"

    .prologue
    .line 1617
    invoke-virtual {p0}, Lcom/android/exchange/ExchangeService$AccountList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 1618
    .local v0, account:Lcom/android/emailcommon/provider/EmailContent$Account;
    iget-wide v2, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_4

    .line 1622
    .end local v0           #account:Lcom/android/emailcommon/provider/EmailContent$Account;
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method
