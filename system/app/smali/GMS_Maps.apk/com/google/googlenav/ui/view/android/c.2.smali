.class Lcom/google/googlenav/ui/view/android/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/B;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/B;)V
    .registers 2
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/C;->a:Lcom/google/googlenav/ui/view/android/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/C;->a:Lcom/google/googlenav/ui/view/android/B;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/B;->b(Lcom/google/googlenav/ui/view/android/B;)V

    .line 248
    return-void
.end method
