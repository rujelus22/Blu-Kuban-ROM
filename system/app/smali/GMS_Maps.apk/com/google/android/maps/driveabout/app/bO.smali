.class Lcom/google/android/maps/driveabout/app/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/bn;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/bn;)V
    .registers 2
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Lcom/google/android/maps/driveabout/app/bn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bo;->a:Lcom/google/android/maps/driveabout/app/bn;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/bn;->dismiss()V

    .line 79
    return-void
.end method
