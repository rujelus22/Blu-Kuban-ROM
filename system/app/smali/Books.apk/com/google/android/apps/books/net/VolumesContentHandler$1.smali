.class Lcom/google/android/apps/books/net/VolumesContentHandler$1;
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


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .registers 3
    .parameter "attributes"

    .prologue
    .line 143
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$1;,"Lcom/google/android/apps/books/net/VolumesContentHandler.1;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$1;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    #getter for: Lcom/google/android/apps/books/net/VolumesContentHandler;->mKeyValueHandler:Lcom/google/android/apps/books/net/KeyValueHandler;
    invoke-static {v0}, Lcom/google/android/apps/books/net/VolumesContentHandler;->access$000(Lcom/google/android/apps/books/net/VolumesContentHandler;)Lcom/google/android/apps/books/net/KeyValueHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/net/KeyValueHandler;->init()V

    .line 144
    return-void
.end method
