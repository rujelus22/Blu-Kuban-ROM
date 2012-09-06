.class Lcom/google/android/maps/driveabout/app/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/al;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/al;)V
    .registers 2
    .parameter

    .prologue
    .line 946
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/as;->a:Lcom/google/android/maps/driveabout/app/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 949
    if-eqz p2, :cond_1a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/as;->a:Lcom/google/android/maps/driveabout/app/al;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/al;->c(Lcom/google/android/maps/driveabout/app/al;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 950
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/as;->a:Lcom/google/android/maps/driveabout/app/al;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/al;->c(Lcom/google/android/maps/driveabout/app/al;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 951
    if-eqz v0, :cond_1a

    .line 952
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 956
    :cond_1a
    return-void
.end method
