.class Lcom/google/googlenav/ui/view/dialog/cI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/K;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/cF;

.field private final b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/dialog/cF;)V
    .registers 3
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/cI;->a:Lcom/google/googlenav/ui/view/dialog/cF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/cJ;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/view/dialog/cJ;-><init>(Lcom/google/googlenav/ui/view/dialog/cI;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cI;->b:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/dialog/cF;Lcom/google/googlenav/ui/view/dialog/cG;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 345
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/cI;-><init>(Lcom/google/googlenav/ui/view/dialog/cF;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/ui/view/J;)Z
    .registers 4
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/cI;->a:Lcom/google/googlenav/ui/view/dialog/cF;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/cF;->b(Lcom/google/googlenav/ui/view/dialog/cF;)Lcom/google/googlenav/ui/android/LoadingFooterView;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/cI;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/android/LoadingFooterView;->post(Ljava/lang/Runnable;)Z

    .line 360
    const/4 v0, 0x1

    return v0
.end method
