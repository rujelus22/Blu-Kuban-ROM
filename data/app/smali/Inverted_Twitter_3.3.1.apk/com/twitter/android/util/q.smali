.class final Lcom/twitter/android/util/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/twitter/android/util/p;


# direct methods
.method constructor <init>(Lcom/twitter/android/util/p;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/util/q;->a:Lcom/twitter/android/util/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Lcom/twitter/android/util/o;

    check-cast p2, Lcom/twitter/android/util/o;

    iget v0, p1, Lcom/twitter/android/util/o;->b:I

    iget v1, p2, Lcom/twitter/android/util/o;->b:I

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    iget v0, p1, Lcom/twitter/android/util/o;->b:I

    iget v1, p2, Lcom/twitter/android/util/o;->b:I

    if-ne v0, v1, :cond_14

    const/4 v0, 0x0

    goto :goto_b

    :cond_14
    const/4 v0, -0x1

    goto :goto_b
.end method
