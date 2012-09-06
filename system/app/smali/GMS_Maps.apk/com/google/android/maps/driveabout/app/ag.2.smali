.class Lcom/google/android/maps/driveabout/app/aG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/maps/driveabout/app/DirectionsListItem;


# direct methods
.method constructor <init>(Lcom/google/android/maps/driveabout/app/DirectionsListItem;)V
    .registers 2
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/google/android/maps/driveabout/app/aG;->a:Lcom/google/android/maps/driveabout/app/DirectionsListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/maps/driveabout/app/aG;->a:Lcom/google/android/maps/driveabout/app/DirectionsListItem;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/DirectionsListItem;->a(Lcom/google/android/maps/driveabout/app/DirectionsListItem;)V

    .line 144
    return-void
.end method
