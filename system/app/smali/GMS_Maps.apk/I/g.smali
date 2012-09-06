.class Li/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/b;


# instance fields
.field final synthetic a:Li/b;

.field final synthetic b:Li/f;


# direct methods
.method constructor <init>(Li/f;Li/b;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Li/g;->b:Li/f;

    iput-object p2, p0, Li/g;->a:Li/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/a;)V
    .registers 4
    .parameter

    .prologue
    .line 215
    iget-object v0, p0, Li/g;->b:Li/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Li/f;->a(Li/f;Li/a;)Li/a;

    .line 216
    iget-object v0, p0, Li/g;->a:Li/b;

    iget-object v1, p0, Li/g;->b:Li/f;

    invoke-interface {v0, v1}, Li/b;->a(Li/a;)V

    .line 217
    return-void
.end method
