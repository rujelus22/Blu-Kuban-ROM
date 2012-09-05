.class Lcom/google/googlenav/ui/view/android/bV;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/bU;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bU;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bV;->b:Lcom/google/googlenav/ui/view/android/bU;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bV;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "http://www.google.com/support/go/placesprivacy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bV;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
