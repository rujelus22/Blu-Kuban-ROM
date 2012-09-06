.class Lcom/google/googlenav/ui/view/android/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/p;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/ah;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/ah;Lcom/google/googlenav/ui/view/p;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/ai;->b:Lcom/google/googlenav/ui/view/android/ah;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/ai;->a:Lcom/google/googlenav/ui/view/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/ai;->a:Lcom/google/googlenav/ui/view/p;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/p;->e:Lcom/google/googlenav/ui/view/w;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/ai;->b:Lcom/google/googlenav/ui/view/android/ah;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/view/w;->a(Landroid/app/Dialog;)V

    .line 42
    return-void
.end method
