.class Lcom/google/googlenav/friend/android/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/friend/android/InviteActivity;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/android/InviteActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/friend/android/l;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/friend/android/l;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->c(Lcom/google/googlenav/friend/android/InviteActivity;)Lcom/google/googlenav/friend/android/o;

    move-result-object v0

    iget-object v0, v0, Lcom/google/googlenav/friend/android/o;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/google/googlenav/friend/android/l;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-static {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->d(Lcom/google/googlenav/friend/android/InviteActivity;)I

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/googlenav/friend/android/l;->a:Lcom/google/googlenav/friend/android/InviteActivity;

    invoke-virtual {v0}, Lcom/google/googlenav/friend/android/InviteActivity;->finish()V

    :cond_18
    return-void
.end method
