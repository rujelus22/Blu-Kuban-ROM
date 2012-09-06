.class Lcom/google/android/maps/driveabout/app/dW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dD;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dD;)V
    .registers 2
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dW;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 966
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dW;->a:Lcom/google/android/maps/driveabout/app/dD;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dW;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/dD;)Ls/n;

    move-result-object v0

    sget-object v2, Ls/w;->k:Ls/w;

    invoke-virtual {v0, v2}, Ls/n;->b(Ls/w;)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_11
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->e(Z)V

    .line 967
    return-void

    .line 966
    :cond_15
    const/4 v0, 0x0

    goto :goto_11
.end method
