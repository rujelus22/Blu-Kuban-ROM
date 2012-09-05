.class Lcom/google/android/apps/books/net/VolumesContentHandler$4;
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

.field final synthetic val$columnName:Ljava/lang/String;


# virtual methods
.method public end(Ljava/lang/String;)V
    .registers 5
    .parameter "body"

    .prologue
    .line 218
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$4;,"Lcom/google/android/apps/books/net/VolumesContentHandler.4;"
    move-object v0, p1

    .line 219
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$4;->val$columnName:Ljava/lang/String;

    const-string v2, "volume_id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 225
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_13
    iget-object v1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$4;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;
    invoke-static {v1}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$4;->val$columnName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    return-void
.end method
