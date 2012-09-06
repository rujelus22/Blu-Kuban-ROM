.class Lcom/google/android/maps/driveabout/app/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cJ;

.field final synthetic b:Lcom/google/android/maps/driveabout/app/al;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/cJ;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aw;->b:Lcom/google/android/maps/driveabout/app/al;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/aw;->a:Lcom/google/android/maps/driveabout/app/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aw;->b:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/al;->d()V

    .line 330
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aw;->a:Lcom/google/android/maps/driveabout/app/cJ;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/app/cJ;->a()V

    .line 331
    return-void
.end method
