.class public Lq/u;
.super LC/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, LC/j;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 2

    invoke-direct {p0, p1}, LC/j;-><init>(Lorg/w3c/dom/Node;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/io/Writer;)V
    .registers 3

    const-string v0, "<networksdisabled/>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
