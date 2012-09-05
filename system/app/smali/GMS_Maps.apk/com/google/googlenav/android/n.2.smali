.class Lcom/google/googlenav/android/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/b;

.field final synthetic b:Lcom/google/googlenav/android/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/l;Lcom/google/googlenav/ui/android/b;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/android/n;->b:Lcom/google/googlenav/android/l;

    iput-object p2, p0, Lcom/google/googlenav/android/n;->a:Lcom/google/googlenav/ui/android/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-ne p2, v0, :cond_a

    iget-object v0, p0, Lcom/google/googlenav/android/n;->a:Lcom/google/googlenav/ui/android/b;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/b;->c()V

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
