.class public final Lcom/twitter/android/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twitter/android/widget/am;


# instance fields
.field private final a:Lcom/twitter/android/client/b;

.field private final b:Lcom/twitter/android/be;


# direct methods
.method public constructor <init>(Lcom/twitter/android/client/b;Lcom/twitter/android/be;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/client/b;

    iput-object p2, p0, Lcom/twitter/android/bi;->b:Lcom/twitter/android/be;

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/twitter/android/provider/m;)Landroid/graphics/Bitmap;
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/bi;->b:Lcom/twitter/android/be;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/android/be;->a(Z)V

    iget-object v0, p0, Lcom/twitter/android/bi;->b:Lcom/twitter/android/be;

    invoke-virtual {v0}, Lcom/twitter/android/be;->c()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/client/b;

    iget v1, p1, Lcom/twitter/android/provider/m;->t:I

    iget-wide v2, p1, Lcom/twitter/android/provider/m;->n:J

    iget-object v4, p1, Lcom/twitter/android/provider/m;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(IJLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1a
    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/client/b;

    iget v1, p1, Lcom/twitter/android/provider/m;->t:I

    iget-wide v2, p1, Lcom/twitter/android/provider/m;->n:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(IJ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1a
.end method

.method public final b(Lcom/twitter/android/provider/m;)Lcom/twitter/android/api/TweetEntities;
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/bi;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/b;->b(Lcom/twitter/android/provider/m;)Lcom/twitter/android/api/TweetEntities;

    move-result-object v0

    return-object v0
.end method
