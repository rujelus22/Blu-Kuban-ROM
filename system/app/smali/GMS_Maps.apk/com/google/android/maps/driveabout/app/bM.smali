.class final Lcom/google/android/maps/driveabout/app/bm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/layer/q;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cI;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/cI;Landroid/content/Context;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bm;->a:Lcom/google/android/maps/driveabout/app/cI;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/bm;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bm;->a:Lcom/google/android/maps/driveabout/app/cI;

    if-eqz v0, :cond_9

    .line 72
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bm;->a:Lcom/google/android/maps/driveabout/app/cI;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->j()V

    .line 74
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/W;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bm;->a:Lcom/google/android/maps/driveabout/app/cI;

    if-eqz v0, :cond_a

    .line 51
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bm;->a:Lcom/google/android/maps/driveabout/app/cI;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cI;->j()V

    .line 53
    :cond_a
    if-nez p2, :cond_1d

    .line 54
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bm;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d006f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    :cond_1c
    :goto_1c
    return-void

    .line 60
    :cond_1d
    invoke-virtual {p2}, Lcom/google/googlenav/W;->aP()Ljava/lang/String;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1c

    .line 63
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/bm;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1c
.end method
