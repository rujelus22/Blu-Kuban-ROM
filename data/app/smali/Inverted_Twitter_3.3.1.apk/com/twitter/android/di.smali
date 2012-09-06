.class final Lcom/twitter/android/di;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 8

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v1, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/ProfileFragment;

    iget v1, v1, Lcom/twitter/android/ProfileFragment;->n:I

    invoke-static {v1, v2}, Lcom/twitter/android/provider/ad;->b(II)I

    move-result v1

    iput v1, v0, Lcom/twitter/android/ProfileFragment;->n:I

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/ProfileFragment;

    const v1, 0x7f0b00f7

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/ProfileFragment;->a(ZI)V

    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v0, v0, Lcom/twitter/android/ProfileFragment;->c:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v1, v1, Lcom/twitter/android/ProfileFragment;->p:Ljava/lang/String;

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v2, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/ProfileFragment;

    iget-wide v2, v2, Lcom/twitter/android/ProfileFragment;->m:J

    iget-object v4, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v4, v4, Lcom/twitter/android/ProfileFragment;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/twitter/android/client/b;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/ProfileFragment;->a(Ljava/lang/String;)V

    :goto_30
    iget-object v0, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/ProfileFragment;

    sget-object v1, Lcom/twitter/android/service/ScribeEvent;->Z:Lcom/twitter/android/service/ScribeEvent;

    invoke-static {v0, v1}, Lcom/twitter/android/ProfileFragment;->a(Lcom/twitter/android/ProfileFragment;Lcom/twitter/android/service/ScribeEvent;)V

    return-void

    :cond_38
    iget-object v1, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/ProfileFragment;

    iget-object v2, p0, Lcom/twitter/android/di;->a:Lcom/twitter/android/ProfileFragment;

    iget-wide v2, v2, Lcom/twitter/android/ProfileFragment;->m:J

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/twitter/android/client/b;->b(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/ProfileFragment;->a(Ljava/lang/String;)V

    goto :goto_30
.end method
