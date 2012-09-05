.class Lcom/google/android/apps/books/net/VolumesContentHandler$6;
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
    .registers 8
    .parameter "body"

    .prologue
    .line 254
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$6;,"Lcom/google/android/apps/books/net/VolumesContentHandler.6;"
    move-object v1, p1

    .line 255
    .local v1, time:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$6;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$500(Lcom/google/android/apps/books/net/VolumesContentHandler;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z

    move-result v0

    .line 256
    .local v0, parsed:Z
    if-nez v0, :cond_26

    .line 257
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_26
    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$6;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;
    invoke-static {v2}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$6;->val$columnName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$6;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mTime:Landroid/text/format/Time;
    invoke-static {v4}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$500(Lcom/google/android/apps/books/net/VolumesContentHandler;)Landroid/text/format/Time;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    return-void
.end method
