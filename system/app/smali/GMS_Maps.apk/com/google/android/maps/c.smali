.class Lcom/google/android/maps/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/view/n;


# instance fields
.field final synthetic a:Lcom/google/android/maps/b;


# direct methods
.method constructor <init>(Lcom/google/android/maps/b;)V
    .registers 2
    .parameter

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/google/android/maps/c;->a:Lcom/google/android/maps/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/google/android/maps/c;->a:Lcom/google/android/maps/b;

    iget-object v0, v0, Lcom/google/android/maps/b;->d:Lcom/google/android/maps/MapsActivity;

    #calls: Lcom/google/android/maps/MapsActivity;->onNewFeaturesContentHintClick()V
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$900(Lcom/google/android/maps/MapsActivity;)V

    .line 1188
    return-void
.end method
