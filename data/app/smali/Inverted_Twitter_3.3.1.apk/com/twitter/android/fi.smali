.class public final Lcom/twitter/android/fi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/twitter/android/cj;


# instance fields
.field private final a:Lcom/twitter/android/client/b;

.field private final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/twitter/android/client/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twitter/android/fi;->a:Lcom/twitter/android/client/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/fi;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 8

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/twitter/android/fi;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/twitter/android/fi;->a:Lcom/twitter/android/client/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twitter/android/client/b;->a(ILjava/lang/String;J)V

    iget-object v0, p0, Lcom/twitter/android/fi;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    return-void
.end method
