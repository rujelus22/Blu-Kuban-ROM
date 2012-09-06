.class final Lcom/twitter/android/client/d;
.super Lcom/twitter/android/service/f;


# instance fields
.field final synthetic a:Lcom/twitter/android/client/b;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/b;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/client/d;->a:Lcom/twitter/android/client/b;

    invoke-direct {p0}, Lcom/twitter/android/service/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/client/d;->a:Lcom/twitter/android/client/b;

    invoke-virtual {v0, p1}, Lcom/twitter/android/client/b;->b(Landroid/content/Intent;)V

    return-void
.end method
