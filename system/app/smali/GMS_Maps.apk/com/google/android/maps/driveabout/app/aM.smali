.class Lcom/google/android/maps/driveabout/app/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/al;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/al;)V
    .registers 2
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/am;->a:Lcom/google/android/maps/driveabout/app/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/am;->a:Lcom/google/android/maps/driveabout/app/al;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/app/al;->a(Lcom/google/android/maps/driveabout/app/al;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 226
    return-void
.end method
