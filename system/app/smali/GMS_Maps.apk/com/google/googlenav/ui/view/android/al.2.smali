.class Lcom/google/googlenav/ui/view/android/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/android/Z;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/Z;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/al;->a:Lcom/google/googlenav/ui/view/android/Z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/al;->a:Lcom/google/googlenav/ui/view/android/Z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/android/Z;->b(Lcom/google/googlenav/ui/view/android/Z;I)V

    return-void
.end method
