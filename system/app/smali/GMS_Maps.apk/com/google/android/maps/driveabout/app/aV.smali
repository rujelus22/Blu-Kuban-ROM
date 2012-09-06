.class Lcom/google/android/maps/driveabout/app/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/cJ;

.field final synthetic b:[Lo/P;

.field final synthetic c:Lcom/google/android/maps/driveabout/app/al;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/al;Lcom/google/android/maps/driveabout/app/cJ;[Lo/P;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/av;->c:Lcom/google/android/maps/driveabout/app/al;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/app/av;->a:Lcom/google/android/maps/driveabout/app/cJ;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/app/av;->b:[Lo/P;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/av;->c:Lcom/google/android/maps/driveabout/app/al;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/app/al;->d()V

    .line 321
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/av;->a:Lcom/google/android/maps/driveabout/app/cJ;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/av;->b:[Lo/P;

    aget-object v1, v1, p2

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/app/cJ;->a(Lo/P;)V

    .line 322
    return-void
.end method
