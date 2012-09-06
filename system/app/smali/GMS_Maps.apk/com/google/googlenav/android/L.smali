.class Lcom/google/googlenav/android/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/i;)V
    .registers 2
    .parameter

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/google/googlenav/android/l;->a:Lcom/google/googlenav/android/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/google/googlenav/android/l;->a:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->c(Lcom/google/googlenav/android/i;)Lcom/google/android/maps/MapsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/MapsActivity;->finish()V

    .line 1042
    return-void
.end method
