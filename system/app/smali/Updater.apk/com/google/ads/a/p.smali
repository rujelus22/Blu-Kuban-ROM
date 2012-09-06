.class final Lcom/google/ads/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/a/q;

.field private final b:Ljava/util/LinkedList;

.field private final c:I

.field private final d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/a/q;Ljava/util/LinkedList;IZLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/a/p;->a:Lcom/google/ads/a/q;

    iput-object p2, p0, Lcom/google/ads/a/p;->b:Ljava/util/LinkedList;

    iput p3, p0, Lcom/google/ads/a/p;->c:I

    iput-boolean p4, p0, Lcom/google/ads/a/p;->d:Z

    iput-object p5, p0, Lcom/google/ads/a/p;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/ads/a/p;->a:Lcom/google/ads/a/q;

    iget-object v1, p0, Lcom/google/ads/a/p;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/q;->a(Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/google/ads/a/p;->a:Lcom/google/ads/a/q;

    iget v1, p0, Lcom/google/ads/a/p;->c:I

    invoke-virtual {v0, v1}, Lcom/google/ads/a/q;->a(I)V

    iget-object v0, p0, Lcom/google/ads/a/p;->a:Lcom/google/ads/a/q;

    iget-boolean v1, p0, Lcom/google/ads/a/p;->d:Z

    invoke-virtual {v0, v1}, Lcom/google/ads/a/q;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/a/p;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/google/ads/a/p;->a:Lcom/google/ads/a/q;

    iget-object v1, p0, Lcom/google/ads/a/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/q;->a(Ljava/lang/String;)V

    :cond_24
    iget-object v0, p0, Lcom/google/ads/a/p;->a:Lcom/google/ads/a/q;

    invoke-virtual {v0}, Lcom/google/ads/a/q;->u()V

    return-void
.end method
