.class Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;
.super Ljava/lang/Object;
.source "VolumesContentHandler.java"

# interfaces
.implements Landroid/sax/ElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/VolumesContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PriceTypeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;


# virtual methods
.method public end()V
    .registers 3

    .prologue
    .line 391
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>.PriceTypeListener;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mPriceType:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$602(Lcom/google/android/apps/books/net/VolumesContentHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 392
    return-void
.end method

.method public start(Lorg/xml/sax/Attributes;)V
    .registers 4
    .parameter "attributes"

    .prologue
    .line 384
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>.PriceTypeListener;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$PriceTypeListener;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    const-string v1, "type"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mPriceType:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$602(Lcom/google/android/apps/books/net/VolumesContentHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 385
    return-void
.end method
