.class final Ldbxyzptlk/e/d;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Lcom/dropbox/android/widget/aj;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Ldbxyzptlk/e/d;->a:Landroid/content/Intent;

    iput-object p2, p0, Ldbxyzptlk/e/d;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 242
    invoke-static {}, Ldbxyzptlk/e/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNoViewer was called."

    invoke-static {v0, v1}, Ldbxyzptlk/h/f;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .registers 4
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Ldbxyzptlk/e/d;->a:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Ldbxyzptlk/e/d;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v0, p0, Ldbxyzptlk/e/d;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Ldbxyzptlk/e/c;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 236
    return-void
.end method
