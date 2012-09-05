.class public final Lcom/cooliris/media/DirectLinkedList$Entry;
.super Ljava/lang/Object;
.source "DirectLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cooliris/media/DirectLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public inserted:Z

.field public next:Lcom/cooliris/media/DirectLinkedList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field public previous:Lcom/cooliris/media/DirectLinkedList$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/cooliris/media/DirectLinkedList$Entry",
            "<TE;>;"
        }
    .end annotation
.end field

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/cooliris/media/DirectLinkedList$Entry;,"Lcom/cooliris/media/DirectLinkedList$Entry<TE;>;"
    .local p1, value:Ljava/lang/Object;,"TE;"
    const/4 v0, 0x0

    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/cooliris/media/DirectLinkedList$Entry;->previous:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 35
    iput-object v0, p0, Lcom/cooliris/media/DirectLinkedList$Entry;->next:Lcom/cooliris/media/DirectLinkedList$Entry;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cooliris/media/DirectLinkedList$Entry;->inserted:Z

    .line 28
    iput-object p1, p0, Lcom/cooliris/media/DirectLinkedList$Entry;->value:Ljava/lang/Object;

    .line 29
    return-void
.end method
