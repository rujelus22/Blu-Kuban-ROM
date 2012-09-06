.class Lcom/google/ads/internal/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/internal/m;

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/internal/m;Ljava/util/LinkedList;IZLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/m;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/internal/l;->a:Lcom/google/ads/internal/m;

    iput-object p2, p0, Lcom/google/ads/internal/l;->b:Ljava/util/LinkedList;

    iput p3, p0, Lcom/google/ads/internal/l;->c:I

    iput-boolean p4, p0, Lcom/google/ads/internal/l;->d:Z

    iput-object p5, p0, Lcom/google/ads/internal/l;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/internal/l;->a:Lcom/google/ads/internal/m;

    iget-object v1, p0, Lcom/google/ads/internal/l;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/m;->a(Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/google/ads/internal/l;->a:Lcom/google/ads/internal/m;

    iget v1, p0, Lcom/google/ads/internal/l;->c:I

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/m;->a(I)V

    iget-object v0, p0, Lcom/google/ads/internal/l;->a:Lcom/google/ads/internal/m;

    iget-boolean v1, p0, Lcom/google/ads/internal/l;->d:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/m;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/internal/l;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/ads/internal/l;->a:Lcom/google/ads/internal/m;

    iget-object v1, p0, Lcom/google/ads/internal/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/internal/m;->a(Ljava/lang/String;)V

    :cond_24
    iget-object v0, p0, Lcom/google/ads/internal/l;->a:Lcom/google/ads/internal/m;

    invoke-virtual {v0}, Lcom/google/ads/internal/m;->x()V

    return-void
.end method
