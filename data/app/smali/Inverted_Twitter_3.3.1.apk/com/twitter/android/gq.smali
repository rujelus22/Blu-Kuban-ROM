.class final Lcom/twitter/android/gq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/UsersFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/UsersFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/gq;->a:Lcom/twitter/android/UsersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/gq;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->m:Lcom/twitter/android/api/PromotedContent;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/twitter/android/gq;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/gq;->a:Lcom/twitter/android/UsersFragment;

    iget-wide v1, v1, Lcom/twitter/android/UsersFragment;->l:J

    iget-object v3, p0, Lcom/twitter/android/gq;->a:Lcom/twitter/android/UsersFragment;

    iget-object v3, v3, Lcom/twitter/android/UsersFragment;->m:Lcom/twitter/android/api/PromotedContent;

    iget-object v3, v3, Lcom/twitter/android/api/PromotedContent;->impressionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->b(JLjava/lang/String;)Ljava/lang/String;

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/twitter/android/gq;->a:Lcom/twitter/android/UsersFragment;

    iget-object v0, v0, Lcom/twitter/android/UsersFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/gq;->a:Lcom/twitter/android/UsersFragment;

    iget-wide v1, v1, Lcom/twitter/android/UsersFragment;->l:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->b(JLjava/lang/String;)Ljava/lang/String;

    goto :goto_17
.end method
