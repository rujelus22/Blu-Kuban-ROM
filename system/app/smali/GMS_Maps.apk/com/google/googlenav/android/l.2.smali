.class Lcom/google/googlenav/android/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/android/x;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/InstallReceiver;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/InstallReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/google/googlenav/android/L;->a:Lcom/google/googlenav/android/InstallReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 47
    const-string v0, "InstallReceiver"

    const-string v1, "rsc"

    invoke-static {v0, v1}, LaT/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method
