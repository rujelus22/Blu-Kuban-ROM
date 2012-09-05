.class Lcom/google/android/maps/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/google/android/maps/MapsActivity;


# direct methods
.method constructor <init>(Lcom/google/android/maps/MapsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/n;->a:Lcom/google/android/maps/MapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, LaV/n;->j()V

    :cond_9
    return-void
.end method
