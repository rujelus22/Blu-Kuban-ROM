.class final Lcom/twitter/android/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/twitter/android/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/DiscoverFragment;Landroid/support/v4/app/FragmentActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/twitter/android/ab;->b:Lcom/twitter/android/DiscoverFragment;

    iput-object p2, p0, Lcom/twitter/android/ab;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/ab;->b:Lcom/twitter/android/DiscoverFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/ab;->a:Landroid/support/v4/app/FragmentActivity;

    const-class v3, Lcom/twitter/android/UsersActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "follow_all_title"

    const v3, 0x7f0b01a6

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "follow_all_subtitle"

    const v3, 0x7f0b01a7

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.twitter.android.intent.action.FOLLOW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/DiscoverFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
