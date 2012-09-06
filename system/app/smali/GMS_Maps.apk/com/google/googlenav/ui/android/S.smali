.class Lcom/google/googlenav/ui/android/s;
.super LY/b;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/android/r;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/android/r;LY/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/google/googlenav/ui/android/s;->a:Lcom/google/googlenav/ui/android/r;

    invoke-direct {p0, p2}, LY/b;-><init>(LY/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/googlenav/ui/android/s;->a:Lcom/google/googlenav/ui/android/r;

    invoke-static {v0}, Lcom/google/googlenav/ui/android/r;->a(Lcom/google/googlenav/ui/android/r;)LaM/ah;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaM/ah;->a(Ljava/lang/String;)V

    .line 438
    return-void
.end method
