.class Lcom/google/googlenav/android/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/a;

.field final synthetic b:Lcom/google/googlenav/android/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/i;Lcom/google/googlenav/ui/android/a;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 983
    iput-object p1, p0, Lcom/google/googlenav/android/k;->b:Lcom/google/googlenav/android/i;

    iput-object p2, p0, Lcom/google/googlenav/android/k;->a:Lcom/google/googlenav/ui/android/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 986
    const/4 v0, 0x4

    if-ne p2, v0, :cond_a

    .line 987
    iget-object v0, p0, Lcom/google/googlenav/android/k;->a:Lcom/google/googlenav/ui/android/a;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/a;->d()V

    .line 988
    const/4 v0, 0x1

    .line 990
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
