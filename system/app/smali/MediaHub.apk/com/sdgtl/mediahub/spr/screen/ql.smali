.class final Lcom/sdgtl/mediahub/spr/screen/ql;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/sdgtl/mediahub/spr/screen/TvStore;


# direct methods
.method public constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 5

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ql;->c:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ql;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/screen/ql;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ql;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ql;->a:Ljava/lang/String;

    check-cast p1, Lcom/sdgtl/mediahub/spr/screen/ql;

    iget-object v1, p1, Lcom/sdgtl/mediahub/spr/screen/ql;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
