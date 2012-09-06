.class final Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
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
.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field prev:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    .local p1, x:Ljava/lang/Object;,"TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->item:Ljava/lang/Object;

    .line 136
    return-void
.end method
