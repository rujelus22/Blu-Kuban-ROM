.class Lcom/google/googlenav/android/P;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/googlenav/android/C;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/InstallReceiver;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/InstallReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/android/P;->a:Lcom/google/googlenav/android/InstallReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    const-string v0, "InstallReceiver"

    const-string v1, "rsc"

    invoke-static {v0, v1}, Laf/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
