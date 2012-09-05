.class Ld/B;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Ld/y;


# direct methods
.method constructor <init>(Ld/y;Ljava/util/List;J)V
    .registers 5

    iput-object p1, p0, Ld/B;->c:Ld/y;

    iput-object p2, p0, Ld/B;->a:Ljava/util/List;

    iput-wide p3, p0, Ld/B;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Ld/B;->c:Ld/y;

    invoke-static {v0}, Ld/y;->a(Ld/y;)Ld/F;

    move-result-object v0

    iget-object v1, p0, Ld/B;->a:Ljava/util/List;

    iget-wide v2, p0, Ld/B;->b:J

    invoke-virtual {v0, v1, v2, v3}, Ld/F;->a(Ljava/util/List;J)V

    return-void
.end method
