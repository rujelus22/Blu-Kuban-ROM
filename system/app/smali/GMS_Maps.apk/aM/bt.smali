.class LaM/bt;
.super Lcom/google/googlenav/ui/view/b;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:LaM/bj;


# direct methods
.method constructor <init>(LaM/bj;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 3134
    iput-object p1, p0, LaM/bt;->b:LaM/bj;

    iput p2, p0, LaM/bt;->a:I

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 5
    .parameter

    .prologue
    .line 3139
    iget-object v0, p0, LaM/bt;->b:LaM/bj;

    invoke-static {v0}, LaM/bj;->c(LaM/bj;)V

    .line 3142
    iget-object v0, p0, LaM/bt;->b:LaM/bj;

    const-string v1, "m"

    iget v2, p0, LaM/bt;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, LaM/bj;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3143
    iget-object v0, p0, LaM/bt;->b:LaM/bj;

    iget v1, p0, LaM/bt;->a:I

    invoke-virtual {v0, v1}, LaM/bj;->b(I)V

    .line 3144
    iget-object v0, p0, LaM/bt;->b:LaM/bj;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaM/bj;->b(Z)V

    .line 3145
    iget-object v0, p0, LaM/bt;->b:LaM/bj;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, LaM/bj;->a(ILjava/lang/Object;)V

    .line 3148
    iget-object v0, p0, LaM/bt;->b:LaM/bj;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, LaM/bj;->f(I)V

    .line 3149
    const/4 v0, 0x1

    return v0
.end method
