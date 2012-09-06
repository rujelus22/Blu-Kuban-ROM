.class Lcom/google/googlenav/android/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/s;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/s;)V
    .registers 2
    .parameter

    .prologue
    .line 734
    iput-object p1, p0, Lcom/google/googlenav/android/t;->a:Lcom/google/googlenav/android/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 737
    iget-object v0, p0, Lcom/google/googlenav/android/t;->a:Lcom/google/googlenav/android/s;

    iget-object v0, v0, Lcom/google/googlenav/android/s;->b:Lcom/google/googlenav/android/i;

    const-string v1, "ParameterManager"

    invoke-static {v0, v1}, Lcom/google/googlenav/android/i;->a(Lcom/google/googlenav/android/i;Ljava/lang/String;)V

    .line 738
    return-void
.end method
