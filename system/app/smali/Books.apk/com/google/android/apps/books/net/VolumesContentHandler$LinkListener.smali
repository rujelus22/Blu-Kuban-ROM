.class Lcom/google/android/apps/books/net/VolumesContentHandler$LinkListener;
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
    name = "LinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .registers 3
    .parameter "attributes"

    .prologue
    .line 375
    .local p0, this:Lcom/google/android/apps/books/net/VolumesContentHandler$LinkListener;,"Lcom/google/android/apps/books/net/VolumesContentHandler<TT;>.LinkListener;"
    iget-object v0, p0, Lcom/google/android/apps/books/net/VolumesContentHandler$LinkListener;->this$0:Lcom/google/android/apps/books/net/VolumesContentHandler;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/books/net/VolumesContentHandler;->handleLink(Lorg/xml/sax/Attributes;)V

    .line 376
    return-void
.end method
