.class public abstract Lq/p;
.super LC/j;


# instance fields
.field protected final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, LC/j;-><init>(J)V

    iput-object p3, p0, Lq/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 3

    invoke-direct {p0, p1}, LC/j;-><init>(Lorg/w3c/dom/Node;)V

    const-string v0, "provider"

    invoke-static {p1, v0}, Lq/p;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq/p;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/p;->a:Ljava/lang/String;

    return-object v0
.end method
