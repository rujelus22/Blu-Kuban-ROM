.class Lcom/google/googlenav/ui/view/android/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/bm;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bm;Landroid/widget/ImageView;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bo;->b:Lcom/google/googlenav/ui/view/android/bm;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bo;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bo;->b:Lcom/google/googlenav/ui/view/android/bm;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bm;->a(Lcom/google/googlenav/ui/view/android/bm;)V

    .line 140
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bo;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/bo;->b:Lcom/google/googlenav/ui/view/android/bm;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/bm;->b(Lcom/google/googlenav/ui/view/android/bm;)Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0x7f020260

    :goto_12
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    return-void

    .line 140
    :cond_16
    const v0, 0x7f02025f

    goto :goto_12
.end method
