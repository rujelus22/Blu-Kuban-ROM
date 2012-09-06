.class final Lcom/twitter/android/api/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/twitter/android/api/TweetEntities$Entity;

    check-cast p2, Lcom/twitter/android/api/TweetEntities$Entity;

    iget v0, p1, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    iget v1, p2, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    iget v0, p1, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    iget v1, p2, Lcom/twitter/android/api/TweetEntities$Entity;->start:I

    if-ge v0, v1, :cond_14

    const/4 v0, -0x1

    goto :goto_b

    :cond_14
    const/4 v0, 0x1

    goto :goto_b
.end method
