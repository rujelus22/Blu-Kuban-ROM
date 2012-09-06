.class Lcom/google/android/maps/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/x;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/google/android/maps/z;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/google/android/maps/z;->a:Lcom/google/android/maps/MapsActivity;

    #calls: Lcom/google/android/maps/MapsActivity;->onResumeInternal()V
    invoke-static {v0}, Lcom/google/android/maps/MapsActivity;->access$700(Lcom/google/android/maps/MapsActivity;)V

    .line 1092
    return-void
.end method
