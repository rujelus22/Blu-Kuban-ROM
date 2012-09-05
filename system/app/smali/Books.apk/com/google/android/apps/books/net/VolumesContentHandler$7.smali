.class Lcom/google/android/apps/books/net/VolumesContentHandler$7;
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

.field final synthetic val$defaultValue:Ljava/lang/Boolean;


# virtual methods
.method public end(Ljava/lang/String;)V
    .registers 6
    .parameter "body"

    .prologue
    .line 270
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$7;,"Lcom/google/android/apps/books/net/VolumesContentHandler.7;"
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, lower:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 273
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 279
    .local v1, value:Ljava/lang/Boolean;
    :goto_15
    iget-object v2, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$7;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;
    invoke-static {v2}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$7;->val$columnName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/google/android/apps/books/net/KeyValueHandler;->setColumn(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 280
    return-void

    .line 274
    .end local v1           #value:Ljava/lang/Boolean;
    :cond_21
    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 275
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .restart local v1       #value:Ljava/lang/Boolean;
    goto :goto_15

    .line 277
    .end local v1           #value:Ljava/lang/Boolean;
    :cond_2f
    iget-object v1, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$7;->val$defaultValue:Ljava/lang/Boolean;

    .restart local v1       #value:Ljava/lang/Boolean;
    goto :goto_15
.end method
