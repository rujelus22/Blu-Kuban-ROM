.class Lcom/google/googlenav/ui/view/android/M;
.super Ljava/lang/Object;

# interfaces
.implements LL/e;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/L;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/L;Landroid/net/Uri;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/M;->b:Lcom/google/googlenav/ui/view/android/L;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/M;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/M;->b:Lcom/google/googlenav/ui/view/android/L;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/L;->a(Lcom/google/googlenav/ui/view/android/L;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/M;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/M;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
