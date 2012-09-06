.class Lcom/google/android/maps/driveabout/app/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/dw;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/dw;)V
    .registers 2
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dy;->a:Lcom/google/android/maps/driveabout/app/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dy;->a:Lcom/google/android/maps/driveabout/app/dw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/dw;->a(Lcom/google/android/maps/driveabout/app/dw;I)I

    .line 147
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dy;->a:Lcom/google/android/maps/driveabout/app/dw;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dw;->a(Lcom/google/android/maps/driveabout/app/dw;)Lcom/google/android/maps/driveabout/app/dA;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 148
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dy;->a:Lcom/google/android/maps/driveabout/app/dw;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dw;->a(Lcom/google/android/maps/driveabout/app/dw;)Lcom/google/android/maps/driveabout/app/dA;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/dA;->c()V

    .line 150
    :cond_17
    return-void
.end method
