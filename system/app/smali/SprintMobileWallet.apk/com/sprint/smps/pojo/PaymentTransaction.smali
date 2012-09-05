.class public Lcom/sprint/smps/pojo/PaymentTransaction;
.super Ljava/lang/Object;
.source "PaymentTransaction.java"


# instance fields
.field private merchantFullName:Ljava/lang/String;

.field private merchantInfo:Ljava/lang/String;

.field private orderUpdates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private txnAmount:Ljava/lang/String;

.field private txnDate:Ljava/util/Date;

.field private txnDescription:Ljava/lang/String;

.field private txnStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "merchantFullName"
    .parameter "merchantInfo"
    .parameter
    .parameter "txnAmount"
    .parameter "txnDate"
    .parameter "txnDescription"
    .parameter "txnStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, orderUpdates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->merchantFullName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->merchantInfo:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->orderUpdates:Ljava/util/List;

    .line 35
    iput-object p4, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->txnAmount:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->txnDate:Ljava/util/Date;

    .line 37
    iput-object p6, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->txnDescription:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->txnStatus:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getFormattedTxnAmount()Ljava/lang/String;
    .registers 5

    .prologue
    .line 64
    iget-object v1, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->txnAmount:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, fomattedTxnAmount:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_3c

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "$"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_3b
    return-object v0

    .line 71
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "$0."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b
.end method

.method public getMerchantFullName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->merchantFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->merchantInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderUpdates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->orderUpdates:Ljava/util/List;

    return-object v0
.end method

.method public getTxnAmount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->txnAmount:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->txnDate:Ljava/util/Date;

    return-object v0
.end method

.method public getTxnDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->txnDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getTxnStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->txnStatus:Ljava/lang/String;

    return-object v0
.end method

.method public setMerchantFullName(Ljava/lang/String;)V
    .registers 2
    .parameter "merchantFullName"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->merchantFullName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setMerchantInfo(Ljava/lang/String;)V
    .registers 2
    .parameter "merchantInfo"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->merchantInfo:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setOrderUpdates(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, orderUpdates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->orderUpdates:Ljava/util/List;

    .line 58
    return-void
.end method

.method public setTxnAmount(Ljava/lang/String;)V
    .registers 2
    .parameter "txnAmount"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->txnAmount:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setTxnDate(Ljava/util/Date;)V
    .registers 2
    .parameter "txnDate"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->txnDate:Ljava/util/Date;

    .line 84
    return-void
.end method

.method public setTxnDescription(Ljava/lang/String;)V
    .registers 2
    .parameter "txnDescription"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->txnDescription:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setTxnStatus(Ljava/lang/String;)V
    .registers 2
    .parameter "txnStatus"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->txnStatus:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MM/dd/yyyy"

    iget-object v2, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->txnDate:Ljava/util/Date;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->merchantFullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/PaymentTransaction;->txnAmount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
