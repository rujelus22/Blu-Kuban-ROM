.class final Lcom/twitter/android/cs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/PostActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/PostActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/cs;->a:Lcom/twitter/android/PostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/twitter/android/cs;->a:Lcom/twitter/android/PostActivity;

    iget-object v0, v0, Lcom/twitter/android/PostActivity;->k:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/cs;->a:Lcom/twitter/android/PostActivity;

    invoke-virtual {v0}, Lcom/twitter/android/PostActivity;->d()V

    return-void
.end method
