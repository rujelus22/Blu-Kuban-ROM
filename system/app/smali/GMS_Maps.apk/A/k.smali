.class public LA/k;
.super LA/j;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 232
    invoke-direct {p0}, LA/j;-><init>()V

    .line 233
    iput-object p1, p0, LA/k;->a:Ljava/lang/String;

    .line 234
    iput-object p2, p0, LA/k;->b:Ljava/lang/String;

    .line 235
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, LA/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/io/Writer;)V
    .registers 4
    .parameter

    .prologue
    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<message tag=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LA/k;->a:Ljava/lang/String;

    invoke-static {v1}, LA/f;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, LA/k;->b:Ljava/lang/String;

    invoke-static {v0}, LA/f;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 249
    const-string v0, "</message>"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, LA/k;->a:Ljava/lang/String;

    return-object v0
.end method
