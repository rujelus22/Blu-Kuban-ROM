.class LAb;
.super LcI;
.source "UpdateUiTask.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "LzW;",
            ">;"
        }
    .end annotation
.end field

.field private final a:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/ref/WeakReference;[B)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "LzW;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, LcI;-><init>()V

    .line 22
    iput-object p1, p0, LAb;->a:Ljava/lang/String;

    .line 23
    iput-object p2, p0, LAb;->a:Ljava/lang/ref/WeakReference;

    .line 24
    iput-object p3, p0, LAb;->a:[B

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 29
    iget-object v0, p0, LAb;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LzW;

    .line 30
    if-nez v0, :cond_b

    .line 34
    :goto_a
    return-void

    .line 33
    :cond_b
    iget-object v1, p0, LAb;->a:Ljava/lang/String;

    iget-object v2, p0, LAb;->a:[B

    invoke-virtual {v0, v1, v2}, LzW;->a(Ljava/lang/String;[B)V

    goto :goto_a
.end method
