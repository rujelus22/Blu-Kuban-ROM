.class Lcom/google/android/maps/driveabout/app/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/aE;

.field final synthetic b:[Lo/b;

.field final synthetic c:Lcom/google/android/maps/driveabout/app/al;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/aE;[Lo/b;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ap;->c:Lcom/google/android/maps/driveabout/app/al;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/ap;->a:Lcom/google/android/maps/driveabout/app/aE;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/ap;->b:[Lo/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ap;->c:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/al;->p()V

    .line 808
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ap;->a:Lcom/google/android/maps/driveabout/app/aE;

    if-eqz v0, :cond_10

    .line 809
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ap;->a:Lcom/google/android/maps/driveabout/app/aE;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ap;->b:[Lo/b;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/aE;->a([Lo/b;)V

    .line 811
    :cond_10
    return-void
.end method
