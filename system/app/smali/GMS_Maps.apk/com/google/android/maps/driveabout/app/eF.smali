.class Lcom/google/android/maps/driveabout/app/ef;
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
    .line 1023
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ef;->a:Lcom/google/android/maps/driveabout/app/dD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ef;->a:Lcom/google/android/maps/driveabout/app/dD;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/app/dD;->b(Z)V

    .line 1027
    return-void
.end method
