.class Lcom/google/googlenav/android/o;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/android/i;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/i;)V
    .registers 2
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/googlenav/android/o;->a:Lcom/google/googlenav/android/i;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/googlenav/android/o;->a:Lcom/google/googlenav/android/i;

    invoke-static {v0}, Lcom/google/googlenav/android/i;->b(Lcom/google/googlenav/android/i;)LaD/i;

    move-result-object v0

    invoke-interface {v0}, LaD/i;->a()V

    .line 406
    return-void
.end method
