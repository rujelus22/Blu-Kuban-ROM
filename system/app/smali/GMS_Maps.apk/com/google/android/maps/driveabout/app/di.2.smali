.class Lcom/google/android/maps/driveabout/app/dI;
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
    .line 815
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dI;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 819
    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dI;->a:Lcom/google/android/maps/driveabout/app/dD;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dI;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->d(Lcom/google/android/maps/driveabout/app/dD;)Lcom/google/android/maps/driveabout/app/cK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/cK;->j()Lcom/google/android/maps/driveabout/app/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/a;->b()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_13
    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Z)V

    .line 820
    return-void

    .line 819
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method
