.class Lcom/google/android/maps/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/x;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;Landroid/os/Bundle;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/google/android/maps/u;->b:Lcom/google/android/maps/MapsActivity;

    iput-object p2, p0, Lcom/google/android/maps/u;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/google/android/maps/u;->b:Lcom/google/android/maps/MapsActivity;

    sget-object v1, Lcom/google/android/maps/B;->b:Lcom/google/android/maps/B;

    #setter for: Lcom/google/android/maps/MapsActivity;->startupType:Lcom/google/android/maps/B;
    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->access$002(Lcom/google/android/maps/MapsActivity;Lcom/google/android/maps/B;)Lcom/google/android/maps/B;

    .line 600
    iget-object v0, p0, Lcom/google/android/maps/u;->b:Lcom/google/android/maps/MapsActivity;

    iget-object v1, p0, Lcom/google/android/maps/u;->a:Landroid/os/Bundle;

    #calls: Lcom/google/android/maps/MapsActivity;->onCreateInternal(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/google/android/maps/MapsActivity;->access$600(Lcom/google/android/maps/MapsActivity;Landroid/os/Bundle;)V

    .line 601
    iget-object v0, p0, Lcom/google/android/maps/u;->b:Lcom/google/android/maps/MapsActivity;

    #calls: Lcom/google/android/maps/MapsActivity;->onResumeInternal()V
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$700(Lcom/google/android/maps/MapsActivity;)V

    .line 602
    return-void
.end method
