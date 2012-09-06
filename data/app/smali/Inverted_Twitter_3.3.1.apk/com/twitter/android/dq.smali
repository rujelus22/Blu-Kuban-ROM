.class final Lcom/twitter/android/dq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/twitter/android/dp;


# direct methods
.method constructor <init>(Lcom/twitter/android/dp;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/twitter/android/dq;->c:Lcom/twitter/android/dp;

    iput-object p2, p0, Lcom/twitter/android/dq;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/twitter/android/dq;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/dq;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/twitter/android/provider/a;->a(Landroid/content/Context;)Lcom/twitter/android/provider/a;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/dq;->b:Ljava/lang/String;

    const-string v2, "notif_tweet"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/provider/a;->a(Ljava/lang/String;Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/twitter/android/dq;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/twitter/android/dq;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twitter/android/dq;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/twitter/android/platform/j;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/android/platform/C2DMService;->b(Landroid/content/Context;Landroid/accounts/Account;)V

    return-void
.end method
