.class LaM/aB;
.super Lcom/google/googlenav/ui/view/b;
.source "SourceFile"


# instance fields
.field final synthetic a:LaM/az;


# direct methods
.method constructor <init>(LaM/az;)V
    .registers 2
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, LaM/aB;->a:LaM/az;

    invoke-direct {p0}, Lcom/google/googlenav/ui/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 4
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, LaM/aB;->a:LaM/az;

    invoke-virtual {v0}, LaM/az;->e()V

    .line 142
    const/16 v0, 0x2bf

    .line 144
    iget-object v1, p0, LaM/aB;->a:LaM/az;

    iget-object v1, v1, LaM/az;->b:Lcom/google/googlenav/ui/v;

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/v;->b(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, LaM/aB;->a:LaM/az;

    invoke-static {v0}, LaM/az;->a(LaM/az;)V

    .line 146
    const/4 v0, 0x1

    return v0
.end method
