.class final Lcom/twitter/android/bf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/ListTabActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/ListTabActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/bf;->a:Lcom/twitter/android/ListTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/bf;->a:Lcom/twitter/android/ListTabActivity;

    iget-object v0, v0, Lcom/twitter/android/ListTabActivity;->a:Lcom/twitter/android/client/b;

    iget-object v1, p0, Lcom/twitter/android/bf;->a:Lcom/twitter/android/ListTabActivity;

    iget-wide v1, v1, Lcom/twitter/android/ListTabActivity;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/client/b;->d(J)Ljava/lang/String;

    iget-object v0, p0, Lcom/twitter/android/bf;->a:Lcom/twitter/android/ListTabActivity;

    invoke-virtual {v0}, Lcom/twitter/android/ListTabActivity;->finish()V

    return-void
.end method
