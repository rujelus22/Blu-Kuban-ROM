.class final Lcom/cooliris/media/RenderView$TextureReference;
.super Ljava/lang/ref/WeakReference;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextureReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference",
        "<",
        "Lcom/cooliris/media/Texture;",
        ">;"
    }
.end annotation


# instance fields
.field public final activeListEntry:Lcom/cooliris/media/DirectLinkedList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/DirectLinkedList$Entry",
            "<",
            "Lcom/cooliris/media/RenderView$TextureReference;",
            ">;"
        }
    .end annotation
.end field

.field public final gl:Ljavax/microedition/khronos/opengles/GL11;

.field public final textureId:I


# direct methods
.method public constructor <init>(Lcom/cooliris/media/Texture;Ljavax/microedition/khronos/opengles/GL11;Ljava/lang/ref/ReferenceQueue;I)V
    .registers 6
    .parameter "texture"
    .parameter "gl"
    .parameter
    .parameter "textureId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cooliris/media/Texture;",
            "Ljavax/microedition/khronos/opengles/GL11;",
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p3, referenceQueue:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 155
    new-instance v0, Lcom/cooliris/media/DirectLinkedList$Entry;

    invoke-direct {v0, p0}, Lcom/cooliris/media/DirectLinkedList$Entry;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cooliris/media/RenderView$TextureReference;->activeListEntry:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 147
    iput p4, p0, Lcom/cooliris/media/RenderView$TextureReference;->textureId:I

    .line 148
    iput-object p2, p0, Lcom/cooliris/media/RenderView$TextureReference;->gl:Ljavax/microedition/khronos/opengles/GL11;

    .line 149
    return-void
.end method
