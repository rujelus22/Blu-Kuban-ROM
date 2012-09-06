.class final Lcom/twitter/android/gr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/UsersFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/UsersFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/gr;->a:Lcom/twitter/android/UsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    iget-object v6, p0, Lcom/twitter/android/gr;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, p0, Lcom/twitter/android/gr;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/twitter/android/gr;->a:Lcom/twitter/android/UsersFragment;

    iget-wide v2, v2, Lcom/twitter/android/UsersFragment;->n:J

    iget-object v4, p0, Lcom/twitter/android/gr;->a:Lcom/twitter/android/UsersFragment;

    iget-wide v4, v4, Lcom/twitter/android/UsersFragment;->l:J

    invoke-virtual/range {v0 .. v5}, Lcom/twitter/android/client/b;->b(IJJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/twitter/android/UsersFragment;->a(Ljava/lang/String;)V

    return-void
.end method
