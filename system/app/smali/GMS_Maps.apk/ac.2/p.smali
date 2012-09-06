.class LaC/p;
.super LaC/w;
.source "SourceFile"


# instance fields
.field final synthetic a:LaC/o;


# direct methods
.method public constructor <init>(LaC/o;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, LaC/p;->a:LaC/o;

    .line 112
    invoke-direct {p0, p2, p3, p4}, LaC/w;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, LaC/p;->a:LaC/o;

    invoke-static {v0}, LaC/o;->a(LaC/o;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c

    iget-object v0, p0, LaC/p;->a:LaC/o;

    invoke-static {v0}, LaC/o;->b(LaC/o;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, LaC/p;->a:LaC/o;

    invoke-static {v0}, LaC/o;->b(LaC/o;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4b

    .line 118
    :cond_1c
    iget-object v0, p0, LaC/p;->a:LaC/o;

    invoke-static {v0}, LaC/o;->c(LaC/o;)Lcom/google/googlenav/ui/wizard/gi;

    move-result-object v0

    iget-object v1, p0, LaC/p;->a:LaC/o;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/gi;->a(LaC/o;)V

    .line 119
    const/16 v0, 0x6f

    const-string v1, "pc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LaC/p;->a:LaC/o;

    invoke-static {v3}, LaC/o;->d(LaC/o;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_4b
    return-void
.end method
