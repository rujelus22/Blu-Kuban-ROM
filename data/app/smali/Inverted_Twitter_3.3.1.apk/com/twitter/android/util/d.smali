.class Lcom/twitter/android/util/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twitter/android/util/b;


# instance fields
.field private a:Ljava/util/Map;

.field private b:Lcom/twitter/android/util/g;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/util/d;->a:Ljava/util/Map;

    new-instance v0, Lcom/twitter/android/util/g;

    invoke-direct {v0}, Lcom/twitter/android/util/g;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/util/d;->b:Lcom/twitter/android/util/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/util/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_9
.end method

.method public final a(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/util/d;->a:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/twitter/android/util/d;->b:Lcom/twitter/android/util/g;

    invoke-virtual {v0, p2, p1}, Lcom/twitter/android/util/g;->a(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
