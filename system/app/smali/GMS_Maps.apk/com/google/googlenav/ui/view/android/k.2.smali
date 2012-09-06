.class Lcom/google/googlenav/ui/view/android/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/H;

.field private final b:Lcom/google/googlenav/ui/android/TemplateView;

.field private final c:Lcom/google/googlenav/ui/bd;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/android/H;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/bd;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/K;->a:Lcom/google/googlenav/ui/view/android/H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/K;->b:Lcom/google/googlenav/ui/android/TemplateView;

    .line 305
    iput-object p3, p0, Lcom/google/googlenav/ui/view/android/K;->c:Lcom/google/googlenav/ui/bd;

    .line 306
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/android/H;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/bd;Lcom/google/googlenav/ui/view/android/I;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 298
    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/K;-><init>(Lcom/google/googlenav/ui/view/android/H;Lcom/google/googlenav/ui/android/TemplateView;Lcom/google/googlenav/ui/bd;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/K;->a:Lcom/google/googlenav/ui/view/android/H;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/H;->a(Lcom/google/googlenav/ui/view/android/H;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/K;->b:Lcom/google/googlenav/ui/android/TemplateView;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 315
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/K;->a:Lcom/google/googlenav/ui/view/android/H;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/H;->a(Lcom/google/googlenav/ui/view/android/H;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/K;->b:Lcom/google/googlenav/ui/android/TemplateView;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/K;->b:Lcom/google/googlenav/ui/android/TemplateView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/K;->c:Lcom/google/googlenav/ui/bd;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/TemplateView;->setTemplateContent(Lcom/google/googlenav/ui/bd;)V

    .line 318
    :cond_20
    return-void
.end method
