.class Lcom/google/googlenav/ui/view/android/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/googlenav/ui/view/android/aq;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/aq;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/as;->b:Lcom/google/googlenav/ui/view/android/aq;

    iput p2, p0, Lcom/google/googlenav/ui/view/android/as;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/as;->b:Lcom/google/googlenav/ui/view/android/aq;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/android/aq;->g:Lcom/google/googlenav/ui/g;

    iget v1, p0, Lcom/google/googlenav/ui/view/android/as;->a:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/google/googlenav/ui/g;->a(IILjava/lang/Object;)Z

    .line 311
    return-void
.end method
