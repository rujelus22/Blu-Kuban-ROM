.class LaY/aH;
.super Ljava/lang/Object;

# interfaces
.implements Lab/c;


# instance fields
.field final synthetic a:Lcom/google/googlenav/aV;

.field final synthetic b:Z

.field final synthetic c:LaY/aG;


# direct methods
.method constructor <init>(LaY/aG;Lcom/google/googlenav/aV;Z)V
    .registers 4

    iput-object p1, p0, LaY/aH;->c:LaY/aG;

    iput-object p2, p0, LaY/aH;->a:Lcom/google/googlenav/aV;

    iput-boolean p3, p0, LaY/aH;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v0, 0x1

    iget-object v1, p0, LaY/aH;->c:LaY/aG;

    iget-object v1, v1, LaY/aG;->b:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->ae()Lcom/google/googlenav/android/ac;

    move-result-object v1

    new-instance v2, LaY/aI;

    invoke-direct {v2, p0}, LaY/aI;-><init>(LaY/aH;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/ac;->a(Ljava/lang/Runnable;Z)V

    return-void
.end method
