.class Lag/k;
.super Lcom/google/googlenav/ui/android/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lag/g;

.field final synthetic d:Lag/h;


# direct methods
.method constructor <init>(Lag/h;Landroid/content/Context;Landroid/view/View;Lag/g;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lag/k;->d:Lag/h;

    iput-object p2, p0, Lag/k;->a:Landroid/content/Context;

    iput-object p3, p0, Lag/k;->b:Landroid/view/View;

    iput-object p4, p0, Lag/k;->c:Lag/g;

    invoke-direct {p0}, Lcom/google/googlenav/ui/android/ac;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 248
    iget-object v0, p0, Lag/k;->d:Lag/h;

    iget-object v1, p0, Lag/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lag/k;->b:Landroid/view/View;

    iget-object v3, p0, Lag/k;->c:Lag/g;

    invoke-virtual {v0, v1, v2, v3}, Lag/h;->a(Landroid/content/Context;Landroid/view/View;Lag/g;)V

    .line 249
    return-void
.end method
