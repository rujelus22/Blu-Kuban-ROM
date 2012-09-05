.class Lcom/google/android/apps/books/net/VolumesContentHandler$5;
.super Ljava/lang/Object;
.source "VolumesContentHandler.java"

# interfaces
.implements Landroid/sax/StartElementListener;


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

.field final synthetic val$attributeName:Ljava/lang/String;

.field final synthetic val$columnName:Ljava/lang/String;


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .registers 5
    .parameter "attributes"

    .prologue
    .line 242
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$5;,"Lcom/google/android/apps/books/net/VolumesContentHandler.5;"
    iget-object v1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$5;->val$attributeName:Ljava/lang/String;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$5;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;
    invoke-static {v1}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$5;->val$columnName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return-void
.end method
