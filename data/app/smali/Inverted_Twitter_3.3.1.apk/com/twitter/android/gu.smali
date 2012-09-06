.class final Lcom/twitter/android/gu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/WelcomeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/gu;->a:Lcom/twitter/android/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    const/4 v0, -0x1

    if-ne p2, v0, :cond_25

    iget-object v0, p0, Lcom/twitter/android/gu;->a:Lcom/twitter/android/WelcomeActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/gu;->a:Lcom/twitter/android/WelcomeActivity;

    const-class v3, Lcom/twitter/android/FollowActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "onboarding"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "follow_flow"

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_3c

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/twitter/android/gu;->a:Lcom/twitter/android/WelcomeActivity;

    iget-object v0, v0, Lcom/twitter/android/WelcomeActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/gu;->a:Lcom/twitter/android/WelcomeActivity;

    iget-object v1, v1, Lcom/twitter/android/WelcomeActivity;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v1}, Lcom/twitter/android/client/b;->a()J

    move-result-wide v1

    sget-object v3, Lcom/twitter/android/service/ScribeEvent;->ap:Lcom/twitter/android/service/ScribeEvent;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->a(JLcom/twitter/android/service/ScribeEvent;)V

    iget-object v0, p0, Lcom/twitter/android/gu;->a:Lcom/twitter/android/WelcomeActivity;

    invoke-virtual {v0}, Lcom/twitter/android/WelcomeActivity;->finish()V

    goto :goto_24

    :array_3c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method
