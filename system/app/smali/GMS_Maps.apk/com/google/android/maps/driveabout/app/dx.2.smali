.class Lcom/google/android/maps/driveabout/app/dX;
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
    .line 971
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/dX;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 974
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/dX;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/dD;->a(Lcom/google/android/maps/driveabout/app/dD;)Ls/n;

    move-result-object v0

    invoke-virtual {v0}, Ls/n;->g()Ls/q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/dX;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/dD;->e(Lcom/google/android/maps/driveabout/app/dD;)Lcom/google/android/maps/driveabout/app/aN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/app/aN;->C()Lo/P;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls/q;->a(Lo/P;Z)V

    .line 976
    return-void
.end method
