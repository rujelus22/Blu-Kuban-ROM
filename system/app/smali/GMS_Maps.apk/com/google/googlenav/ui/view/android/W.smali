.class final Lcom/google/googlenav/ui/view/android/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/g;

.field final synthetic b:I


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/g;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/w;->a:Lcom/google/googlenav/ui/g;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/w;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/w;->a:Lcom/google/googlenav/ui/g;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/w;->b:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 76
    const/4 v0, 0x4

    const-string v1, "mb"

    const-string v2, "cs"

    invoke-static {v0, v1, v2}, LaT/k;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/google/googlenav/ui/view/android/v;->a()V

    .line 80
    return-void
.end method
