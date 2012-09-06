.class final Lcom/twitter/android/dl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/dl;->a:Lcom/twitter/android/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/twitter/android/dl;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->p:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/twitter/android/dl;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/dl;->a:Lcom/twitter/android/ProfileFragment;

    iget-wide v1, v1, Lcom/twitter/android/ProfileFragment;->m:J

    iget-object v3, p0, Lcom/twitter/android/dl;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v3, v3, Lcom/twitter/android/ProfileFragment;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->e(JLjava/lang/String;)Ljava/lang/String;

    :goto_15
    iget-object v0, p0, Lcom/twitter/android/dl;->a:Lcom/twitter/android/ProfileFragment;

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->X:Lcom/twitter/android/service/ScribeEvent;

    invoke-static {v0, v1}, Lcom/twitter/android/ProfileFragment;->a(Lcom/twitter/android/ProfileFragment;Lcom/twitter/android/service/ScribeEvent;)V

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/twitter/android/dl;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/dl;->a:Lcom/twitter/android/ProfileFragment;

    iget-wide v1, v1, Lcom/twitter/android/ProfileFragment;->m:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/client/b;->e(JLjava/lang/String;)Ljava/lang/String;

    goto :goto_15
.end method
