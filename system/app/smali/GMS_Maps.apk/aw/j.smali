.class Law/j;
.super Lcom/google/googlenav/ui/android/M;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Law/f;

.field final synthetic d:Law/g;


# direct methods
.method constructor <init>(Law/g;Landroid/content/Context;Landroid/view/View;Law/f;)V
    .registers 5

    iput-object p1, p0, Law/j;->d:Law/g;

    iput-object p2, p0, Law/j;->a:Landroid/content/Context;

    iput-object p3, p0, Law/j;->b:Landroid/view/View;

    iput-object p4, p0, Law/j;->c:Law/f;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/M;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Law/j;->d:Law/g;

    iget-object v1, p0, Law/j;->a:Landroid/content/Context;

    iget-object v2, p0, Law/j;->b:Landroid/view/View;

    iget-object v3, p0, Law/j;->c:Law/f;

    invoke-virtual {v0, v1, v2, v3}, Law/g;->a(Landroid/content/Context;Landroid/view/View;Law/f;)V

    return-void
.end method
