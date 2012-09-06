.class Lcom/google/googlenav/ui/android/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aE;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/AndroidVectorView;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/AndroidVectorView;)V
    .registers 2
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/googlenav/ui/android/j;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aD;)V
    .registers 4
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/google/googlenav/ui/android/j;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/android/AndroidVectorView;->a()V

    .line 415
    const/16 v0, 0x62

    const-string v1, "i"

    invoke-static {v0, v1}, LaT/k;->a(ILjava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/google/googlenav/ui/android/j;->a:Lcom/google/googlenav/ui/android/AndroidVectorView;

    iget-object v0, v0, Lcom/google/googlenav/ui/android/AndroidVectorView;->b:Lcom/google/googlenav/android/i;

    invoke-virtual {v0}, Lcom/google/googlenav/android/i;->i()Lcom/google/googlenav/ui/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/v;->p()Lcom/google/googlenav/ui/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/ap;->z()V

    .line 418
    return-void
.end method
