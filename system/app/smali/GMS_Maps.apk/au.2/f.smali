.class Lau/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cs;


# instance fields
.field final synthetic a:Lau/e;


# direct methods
.method constructor <init>(Lau/e;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lau/f;->a:Lau/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/l;Ljava/util/List;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    iget-object v1, p0, Lau/f;->a:Lau/e;

    invoke-static {v1}, Lau/e;->c(Lau/e;)Lcom/google/googlenav/android/Y;

    move-result-object v1

    new-instance v2, Lau/g;

    invoke-direct {v2, p0, p2}, Lau/g;-><init>(Lau/f;Ljava/util/List;)V

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/android/Y;->a(Ljava/lang/Runnable;Z)V

    .line 117
    return-void
.end method
