.class final Lcom/twitter/android/dm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Lcom/twitter/android/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileFragment;ZLandroid/content/Context;ZZZ)V
    .registers 7

    iput-object p1, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iput-boolean p2, p0, Lcom/twitter/android/dm;->a:Z

    iput-object p3, p0, Lcom/twitter/android/dm;->b:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/twitter/android/dm;->c:Z

    iput-boolean p5, p0, Lcom/twitter/android/dm;->d:Z

    iput-boolean p6, p0, Lcom/twitter/android/dm;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 12

    const/16 v8, 0x10

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/twitter/android/dm;->a:Z

    if-eqz v2, :cond_2f

    if-nez p2, :cond_2f

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/dm;->b:Landroid/content/Context;

    const-class v2, Lcom/twitter/android/MessagesThreadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_name"

    iget-object v2, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget-object v2, v2, Lcom/twitter/android/ProfileFragment;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget-object v2, v2, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v2}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    invoke-virtual {v1, v0}, Lcom/twitter/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    :goto_2e
    return-void

    :cond_2f
    iget-boolean v2, p0, Lcom/twitter/android/dm;->a:Z

    if-nez v2, :cond_6d

    add-int/lit8 p2, p2, 0x1

    iget-boolean v2, p0, Lcom/twitter/android/dm;->c:Z

    if-nez v2, :cond_3b

    add-int/lit8 p2, p2, 0x1

    :cond_3b
    :goto_3b
    packed-switch p2, :pswitch_data_fc

    goto :goto_2e

    :pswitch_3f
    iget-boolean v2, p0, Lcom/twitter/android/dm;->d:Z

    if-eqz v2, :cond_76

    iget-object v2, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget-object v3, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget-object v3, v3, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    iget-object v4, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget-object v4, v4, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v4}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget-wide v5, v5, Lcom/twitter/android/ProfileFragment;->m:J

    iget-boolean v7, p0, Lcom/twitter/android/dm;->d:Z

    if-nez v7, :cond_74

    :goto_59
    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/android/ProfileFragment;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget-object v1, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget v1, v1, Lcom/twitter/android/ProfileFragment;->n:I

    invoke-static {v1, v8}, Lcom/twitter/android/provider/ad;->b(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/ProfileFragment;->n:I

    goto :goto_2e

    :cond_6d
    iget-boolean v2, p0, Lcom/twitter/android/dm;->c:Z

    if-nez v2, :cond_3b

    add-int/lit8 p2, p2, 0x1

    goto :goto_3b

    :cond_74
    move v0, v1

    goto :goto_59

    :cond_76
    iget-object v2, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget-object v3, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget-object v3, v3, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    iget-object v4, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget-object v4, v4, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v4}, Lcom/twitter/android/client/b;->g()Lcom/twitter/android/client/Session;

    move-result-object v4

    iget-object v5, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget-wide v5, v5, Lcom/twitter/android/ProfileFragment;->m:J

    iget-boolean v7, p0, Lcom/twitter/android/dm;->d:Z

    if-nez v7, :cond_a0

    :goto_8c
    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/twitter/android/client/b;->a(Lcom/twitter/android/client/Session;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/twitter/android/ProfileFragment;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget-object v1, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget v1, v1, Lcom/twitter/android/ProfileFragment;->n:I

    invoke-static {v1, v8}, Lcom/twitter/android/provider/ad;->a(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/ProfileFragment;->n:I

    goto :goto_2e

    :cond_a0
    move v0, v1

    goto :goto_8c

    :pswitch_a2
    iget-object v2, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/twitter/android/dm;->b:Landroid/content/Context;

    const-class v5, Lcom/twitter/android/ListsActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.action.PICK"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "owner_id"

    iget-object v5, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget-object v5, v5, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    invoke-virtual {v5}, Lcom/twitter/android/client/b;->k()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "inquire_user_id"

    iget-object v4, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    iget-wide v4, v4, Lcom/twitter/android/ProfileFragment;->m:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/twitter/android/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2e

    :pswitch_d6
    iget-boolean v0, p0, Lcom/twitter/android/dm;->e:Z

    if-eqz v0, :cond_e5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/ProfileFragment;->f(I)V

    goto/16 :goto_2e

    :cond_e5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/twitter/android/ProfileFragment;->f(I)V

    goto/16 :goto_2e

    :pswitch_f0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/twitter/android/dm;->f:Lcom/twitter/android/ProfileFragment;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/twitter/android/ProfileFragment;->f(I)V

    goto/16 :goto_2e

    nop

    :pswitch_data_fc
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_a2
        :pswitch_d6
        :pswitch_f0
    .end packed-switch
.end method
