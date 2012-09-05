.class Lcom/google/googlenav/ui/view/android/Q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/N;

.field private final b:Lcom/google/googlenav/ui/android/TemplateView;

.field private final c:Lcom/google/googlenav/ui/bl;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/N;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/bl;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/Q;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/Q;->b:Lcom/google/googlenav/ui/android/TemplateView;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/Q;->c:Lcom/google/googlenav/ui/bl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/N;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/bl;Lcom/google/googlenav/ui/view/android/O;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/Q;-><init>(Lcom/google/googlenav/ui/view/android/N;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/bl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Q;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/N;->a(Lcom/google/googlenav/ui/view/android/N;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Q;->b:Lcom/google/googlenav/ui/android/TemplateView;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Q;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/N;->a(Lcom/google/googlenav/ui/view/android/N;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Q;->b:Lcom/google/googlenav/ui/android/TemplateView;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/Q;->b:Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/Q;->c:Lcom/google/googlenav/ui/bl;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->a(Lcom/google/googlenav/ui/bl;)V

    :cond_20
    return-void
.end method
