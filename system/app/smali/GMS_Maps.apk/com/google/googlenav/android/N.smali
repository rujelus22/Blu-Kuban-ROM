.class Lcom/google/googlenav/android/n;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/i;)V
    .registers 2
    .parameter

    .prologue
    .line 391
    iput-object p1, p0, Lcom/google/googlenav/android/n;->a:Lcom/google/googlenav/android/i;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/googlenav/android/n;->a:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->a(Lcom/google/googlenav/android/i;)LaD/k;

    move-result-object v0

    invoke-interface {v0}, LaD/k;->a()V

    .line 395
    return-void
.end method
