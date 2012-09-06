.class Lcom/google/android/maps/driveabout/app/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/NavigationImageView;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/NavigationImageView;)V
    .registers 2
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/ch;->a:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 350
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/ch;->a:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/app/ch;->a:Lcom/google/android/maps/driveabout/app/NavigationImageView;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Lcom/google/android/maps/driveabout/app/NavigationImageView;)Lo/I;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/app/NavigationImageView;->a(Lcom/google/android/maps/driveabout/app/NavigationImageView;Lo/I;Z)V

    .line 351
    return-void
.end method
