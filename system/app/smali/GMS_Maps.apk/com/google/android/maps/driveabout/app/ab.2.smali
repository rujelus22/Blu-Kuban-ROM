.class Lcom/google/android/maps/driveabout/app/aB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/al;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/al;)V
    .registers 2
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aB;->a:Lcom/google/android/maps/driveabout/app/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 647
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 648
    return-void
.end method
