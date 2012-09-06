.class Lcom/google/android/maps/driveabout/app/bT;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/bT;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/bT;->a:Lcom/google/android/maps/driveabout/app/NavigationActivity;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/NavigationActivity;->c()V

    .line 298
    return-void
.end method
