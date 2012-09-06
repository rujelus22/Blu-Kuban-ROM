.class Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Itr;
.super Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;
.source "LinkedBlockingDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;)V
    .registers 2
    .parameter

    .prologue
    .line 1171
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Itr;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>.Itr;"
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Itr;->this$0:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;

    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$AbstractItr;-><init>(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1171
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Itr;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>.Itr;"
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Itr;-><init>(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;)V

    return-void
.end method


# virtual methods
.method firstNode()Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1173
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Itr;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>.Itr;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Itr;->this$0:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;

    iget-object v0, v0, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque;->first:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    return-object v0
.end method

.method nextNode(Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;)Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;)",
            "Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1175
    .local p0, this:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Itr;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque<TE;>.Itr;"
    .local p1, n:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;,"Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node<TE;>;"
    iget-object v0, p1, Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;->next:Lcom/google/android/apps/unveil/env/LinkedBlockingDeque$Node;

    return-object v0
.end method
