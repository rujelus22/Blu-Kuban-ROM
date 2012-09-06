.class Lcom/google/googlenav/ui/android/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/r;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/r;)V
    .registers 2
    .parameter

    .prologue
    .line 500
    iput-object p1, p0, Lcom/google/googlenav/ui/android/u;->a:Lcom/google/googlenav/ui/android/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 503
    iget-object v0, p0, Lcom/google/googlenav/ui/android/u;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->c(Lcom/google/googlenav/ui/android/r;)V

    .line 504
    return-void
.end method
