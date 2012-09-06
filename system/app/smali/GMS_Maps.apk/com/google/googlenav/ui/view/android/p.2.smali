.class Lcom/google/googlenav/ui/view/android/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/N;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/N;)V
    .registers 2
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/P;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/P;->a:Lcom/google/googlenav/ui/view/android/N;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/N;->f(Lcom/google/googlenav/ui/view/android/N;)V

    .line 263
    return-void
.end method
