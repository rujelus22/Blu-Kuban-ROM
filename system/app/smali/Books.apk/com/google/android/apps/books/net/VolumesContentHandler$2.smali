.class Lcom/google/android/apps/books/net/VolumesContentHandler$2;
.super Ljava/lang/Object;
.source "VolumesContentHandler.java"

# interfaces
.implements Landroid/sax/ElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/net/VolumesContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

.field final synthetic val$isFeed:Z


# virtual methods
.method public end()V
    .registers 2

    .prologue
    .line 162
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$2;,"Lcom/google/android/apps/books/net/VolumesContentHandler.2;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$2;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;
    invoke-static {v0}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->endRow()V

    .line 163
    return-void
.end method

.method public start(Lorg/xml/sax/Attributes;)V
    .registers 3
    .parameter "attributes"

    .prologue
    .line 154
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$2;,"Lcom/google/android/apps/books/net/VolumesContentHandler.2;"
    iget-boolean v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$2;->val$isFeed:Z

    if-nez v0, :cond_d

    .line 155
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$2;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;
    invoke-static {v0}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->init()V

    .line 157
    :cond_d
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$2;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;
    invoke-static {v0}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->startRow()V

    .line 158
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$2;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #calls: Lcom/google/android/apps/books/net/VolumesContentHandler;->handleEtag(Lorg/xml/sax/Attributes;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$100(Lcom/google/android/apps/books/net/VolumesContentHandler;Lorg/xml/sax/Attributes;)V

    .line 159
    return-void
.end method
