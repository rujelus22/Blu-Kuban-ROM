.class Lcom/google/googlenav/ui/view/android/D;
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
    .line 251
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/D;->a:Lcom/google/googlenav/ui/view/android/B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/D;->a:Lcom/google/googlenav/ui/view/android/B;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/B;->c(Lcom/google/googlenav/ui/view/android/B;)V

    .line 255
    return-void
.end method
