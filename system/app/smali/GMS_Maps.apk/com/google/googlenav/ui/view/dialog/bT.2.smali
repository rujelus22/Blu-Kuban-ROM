.class Lcom/google/googlenav/ui/view/dialog/bT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bS;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bS;)V
    .registers 2
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bT;->a:Lcom/google/googlenav/ui/view/dialog/bS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 268
    invoke-static {}, Lcom/google/googlenav/android/c;->a()Lcom/google/googlenav/android/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/android/c;->c()Lcom/google/googlenav/android/i;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->f()Lcom/google/android/maps/MapsActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/MapsActivity;->hasDataConnection()Z

    move-result v1

    if-nez v1, :cond_22

    .line 270
    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    const/16 v1, 0x333

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 276
    :goto_21
    return-void

    .line 274
    :cond_22
    new-instance v0, Lcom/google/googlenav/ui/view/dialog/bm;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bT;->a:Lcom/google/googlenav/ui/view/dialog/bS;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/bS;->a:Lcom/google/googlenav/ui/view/dialog/bO;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/bO;->d(Lcom/google/googlenav/ui/view/dialog/bO;)Lcom/google/googlenav/ui/wizard/ju;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/ui/view/dialog/bm;-><init>(Lcom/google/googlenav/ui/wizard/ju;)V

    .line 275
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/dialog/bm;->show()V

    goto :goto_21
.end method
