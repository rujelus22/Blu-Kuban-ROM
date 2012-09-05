.class public Lcom/sprint/smps/pojo/Merchant;
.super Ljava/lang/Object;
.source "Merchant.java"


# instance fields
.field private merchantName:Ljava/lang/String;

.field private merchantUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "merchantName"
    .parameter "merchantUrl"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sprint/smps/pojo/Merchant;->merchantName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/sprint/smps/pojo/Merchant;->merchantUrl:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public getMerchantName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sprint/smps/pojo/Merchant;->merchantName:Ljava/lang/String;

    return-object v0
.end method

.method public getMerchantUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sprint/smps/pojo/Merchant;->merchantUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setMerchantName(Ljava/lang/String;)V
    .registers 2
    .parameter "merchantName"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/sprint/smps/pojo/Merchant;->merchantName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setMerchantUrl(Ljava/lang/String;)V
    .registers 2
    .parameter "merchantUrl"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sprint/smps/pojo/Merchant;->merchantUrl:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sprint/smps/pojo/Merchant;->merchantName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sprint/smps/pojo/Merchant;->merchantUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
