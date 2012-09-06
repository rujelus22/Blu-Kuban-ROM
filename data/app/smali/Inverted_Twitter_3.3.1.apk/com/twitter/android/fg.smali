.class final Lcom/twitter/android/fg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/TimelineFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TimelineFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/fg;->a:Lcom/twitter/android/TimelineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/fg;->a:Lcom/twitter/android/TimelineFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/fg;->a:Lcom/twitter/android/TimelineFragment;

    invoke-virtual {v2}, Lcom/twitter/android/TimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/twitter/android/FollowActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "follow_flow"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_20

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/TimelineFragment;->startActivity(Landroid/content/Intent;)V

    return-void

    nop

    :array_20
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method
