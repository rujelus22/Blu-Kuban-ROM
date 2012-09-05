.class Lcom/google/android/apps/books/net/VolumesContentHandler$PriceAmountListener;
.super Ljava/lang/Object;
.source "VolumesContentHandler.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/VolumesContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PriceAmountListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .registers 6
    .parameter "attributes"

    .prologue
    .line 400
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$PriceAmountListener;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>.PriceAmountListener;"
    const-string v2, "amount"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, amount:Ljava/lang/String;
    const-string v2, "currencyCode"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, currencyCode:Ljava/lang/String;
    const-string v2, "RetailPrice"

    iget-object v3, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceAmountListener;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mPriceType:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$600(Lcom/google/android/apps/books/net/VolumesContentHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 403
    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceAmountListener;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;
    invoke-static {v2}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v2

    const-string v3, "price_amount"

    invoke-interface {v2, v3, v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceAmountListener;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;
    invoke-static {v2}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v2

    const-string v3, "price_currency"

    invoke-interface {v2, v3, v1}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_30
    :goto_30
    return-void

    .line 405
    :cond_31
    const-string v2, "SuggestedRetailPrice"

    iget-object v3, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceAmountListener;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mPriceType:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$600(Lcom/google/android/apps/books/net/VolumesContentHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 406
    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceAmountListener;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;
    invoke-static {v2}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v2

    const-string v3, "suggested_price_amount"

    invoke-interface {v2, v3, v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceAmountListener;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;
    invoke-static {v2}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v2

    const-string v3, "suggested_price_currency"

    invoke-interface {v2, v3, v1}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method
