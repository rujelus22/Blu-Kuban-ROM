.class Lcom/google/googlenav/ui/view/android/bS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/bR;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/bR;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/bS;->b:Lcom/google/googlenav/ui/view/android/bR;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/bS;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 93
    const-string v0, "http://www.google.com/support/go/placesprivacy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/bS;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    return-void
.end method
