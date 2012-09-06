.class final Lcom/anddoes/launcher/ej;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/anddoes/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/anddoes/launcher/Launcher;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/anddoes/launcher/ej;->a:Lcom/anddoes/launcher/Launcher;

    .line 3080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 3083
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 3084
    const-string v2, "http://blog.anddoes.com/apex-launcher-faq/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3083
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3085
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3087
    :try_start_12
    iget-object v1, p0, Lcom/anddoes/launcher/ej;->a:Lcom/anddoes/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/anddoes/launcher/Launcher;->startActivity(Landroid/content/Intent;)V
    :try_end_17
    .catch Landroid/content/ActivityNotFoundException; {:try_start_12 .. :try_end_17} :catch_1b

    .line 3093
    :goto_17
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 3094
    return-void

    .line 3089
    :catch_1b
    move-exception v0

    iget-object v0, p0, Lcom/anddoes/launcher/ej;->a:Lcom/anddoes/launcher/Launcher;

    .line 3090
    const v1, 0x7f060145

    .line 3091
    const/4 v2, 0x0

    .line 3089
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 3091
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_17
.end method
