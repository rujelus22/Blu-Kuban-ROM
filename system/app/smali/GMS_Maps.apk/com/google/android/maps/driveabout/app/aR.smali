.class Lcom/google/android/maps/driveabout/app/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/DialogInterface$OnCancelListener;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/al;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/al;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 893
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ar;->b:Lcom/google/android/maps/driveabout/app/al;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ar;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 896
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ar;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 897
    return-void
.end method
