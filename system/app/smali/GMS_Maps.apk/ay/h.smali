.class Lay/h;
.super Lax/bK;


# instance fields
.field private final a:Lay/a;

.field private final b:Lax/bK;

.field private final c:Ljava/lang/Long;

.field private final d:Ljava/lang/String;

.field private final e:Lah/f;

.field private final f:Lay/n;


# direct methods
.method private constructor <init>(Lax/bK;Ljava/lang/Long;Ljava/lang/String;Lah/f;Lay/a;)V
    .registers 7

    invoke-direct {p0}, Lax/bK;-><init>()V

    iput-object p1, p0, Lay/h;->b:Lax/bK;

    iput-object p5, p0, Lay/h;->a:Lay/a;

    iput-object p2, p0, Lay/h;->c:Ljava/lang/Long;

    iput-object p3, p0, Lay/h;->d:Ljava/lang/String;

    iput-object p4, p0, Lay/h;->e:Lah/f;

    invoke-virtual {p5, p2}, Lay/a;->a(Ljava/lang/Long;)Lay/n;

    move-result-object v0

    iput-object v0, p0, Lay/h;->f:Lay/n;

    return-void
.end method

.method synthetic constructor <init>(Lax/bK;Ljava/lang/Long;Ljava/lang/String;Lah/f;Lay/a;Lay/b;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lay/h;-><init>(Lax/bK;Ljava/lang/Long;Ljava/lang/String;Lah/f;Lay/a;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5

    iget-object v0, p0, Lay/h;->a:Lay/a;

    iget-object v1, p0, Lay/h;->c:Ljava/lang/Long;

    invoke-static {v0, v1}, Lay/a;->a(Lay/a;Ljava/lang/Long;)V

    iget-object v0, p0, Lay/h;->a:Lay/a;

    iget-object v1, p0, Lay/h;->c:Ljava/lang/Long;

    iget-object v2, p0, Lay/h;->f:Lay/n;

    invoke-static {v0, v1, v2}, Lay/a;->a(Lay/a;Ljava/lang/Long;Lay/n;)V

    iget-object v0, p0, Lay/h;->a:Lay/a;

    invoke-static {v0}, Lay/a;->a(Lay/a;)V

    iget-object v0, p0, Lay/h;->a:Lay/a;

    iget-object v1, p0, Lay/h;->f:Lay/n;

    invoke-static {v0, v1}, Lay/a;->a(Lay/a;Lay/n;)V

    iget-object v0, p0, Lay/h;->b:Lax/bK;

    invoke-virtual {v0, p1}, Lax/bK;->a(I)V

    return-void
.end method

.method public a([B)V
    .registers 5

    iget-object v0, p0, Lay/h;->a:Lay/a;

    iget-object v1, p0, Lay/h;->c:Ljava/lang/Long;

    invoke-static {v0, v1}, Lay/a;->a(Lay/a;Ljava/lang/Long;)V

    iget-object v0, p0, Lay/h;->e:Lah/f;

    iget-object v1, p0, Lay/h;->d:Ljava/lang/String;

    iget-object v2, p0, Lay/h;->c:Ljava/lang/Long;

    invoke-static {v0, v1, v2}, Lay/n;->a(Lah/f;Ljava/lang/String;Ljava/lang/Long;)Lay/n;

    move-result-object v0

    iget-object v1, p0, Lay/h;->a:Lay/a;

    iget-object v2, p0, Lay/h;->c:Ljava/lang/Long;

    invoke-static {v1, v2, v0}, Lay/a;->a(Lay/a;Ljava/lang/Long;Lay/n;)V

    iget-object v1, p0, Lay/h;->a:Lay/a;

    invoke-static {v1}, Lay/a;->a(Lay/a;)V

    iget-object v1, p0, Lay/h;->a:Lay/a;

    invoke-static {v1, v0}, Lay/a;->a(Lay/a;Lay/n;)V

    iget-object v0, p0, Lay/h;->b:Lax/bK;

    invoke-virtual {v0, p1}, Lax/bK;->a([B)V

    return-void
.end method
