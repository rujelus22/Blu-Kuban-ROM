.class public abstract Lcom/google/common/base/m;
.super Ljava/lang/ref/SoftReference;

# interfaces
.implements Lcom/google/common/base/FinalizableReference;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lcom/google/common/base/h;)V
    .registers 4

    iget-object v0, p2, Lcom/google/common/base/h;->a:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p2}, Lcom/google/common/base/h;->a()V

    return-void
.end method
