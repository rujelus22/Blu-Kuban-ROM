.class Lcom/google/android/apps/books/net/VolumesContentHandler$3;
.super Ljava/lang/Object;
.source "VolumesContentHandler.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


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

.field final synthetic val$key:Ljava/lang/String;


# virtual methods
.method public end(Ljava/lang/String;)V
    .registers 4
    .parameter "body"

    .prologue
    .line 197
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$3;,"Lcom/google/android/apps/books/net/VolumesContentHandler.3;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$3;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;
    invoke-static {v0}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$3;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/apps/books/net/KeyValueHandler;->setMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method
