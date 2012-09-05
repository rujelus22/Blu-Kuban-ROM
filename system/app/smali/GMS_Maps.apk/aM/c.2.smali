.class LaM/c;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:J

.field public c:J

.field public d:Ljava/util/Map;

.field final synthetic e:LaM/b;


# direct methods
.method constructor <init>(LaM/b;I)V
    .registers 5

    iput-object p1, p0, LaM/c;->e:LaM/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, LaM/c;->c:J

    iput p2, p0, LaM/c;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LaM/c;->b:J

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, LaM/c;->d:Ljava/util/Map;

    return-void
.end method
