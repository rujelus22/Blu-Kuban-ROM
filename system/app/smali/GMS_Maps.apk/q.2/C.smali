.class public Lq/C;
.super Lq/B;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lq/C;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lq/C;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1}, Lq/B;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lq/C;->a:Ljava/lang/String;

    iput p3, p0, Lq/C;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    if-eqz p2, :cond_8

    const-string v0, "true"

    :goto_4
    invoke-direct {p0, p1, v0}, Lq/C;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    const-string v0, "false"

    goto :goto_4
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .registers 3

    invoke-direct {p0, p1}, Lq/B;-><init>(Lorg/w3c/dom/Node;)V

    const-string v0, "param"

    invoke-static {p1, v0}, Lq/C;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq/C;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lq/C;->b:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lq/C;->a:Ljava/lang/String;

    if-nez v0, :cond_c

    iget v0, p0, Lq/C;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lq/C;->a:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lq/C;->a:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/io/Writer;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "param=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lq/C;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lq/k;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
