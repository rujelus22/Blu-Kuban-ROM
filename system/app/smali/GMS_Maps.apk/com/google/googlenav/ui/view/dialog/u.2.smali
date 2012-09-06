.class Lcom/google/googlenav/ui/view/dialog/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/R;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/R;)V
    .registers 2
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/U;->a:Lcom/google/googlenav/ui/view/dialog/R;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 155
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/googlenav/ui/bn;->e()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/MapsActivity;->getMapsActivity(Landroid/content/Context;)Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x257

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x362

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 159
    return-void
.end method
