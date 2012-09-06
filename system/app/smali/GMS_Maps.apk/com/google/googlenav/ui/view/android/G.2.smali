.class Lcom/google/googlenav/ui/view/android/G;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH/e;


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/google/googlenav/ui/view/android/F;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/android/F;Landroid/net/Uri;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/googlenav/ui/view/android/G;->b:Lcom/google/googlenav/ui/view/android/F;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/android/G;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/G;->b:Lcom/google/googlenav/ui/view/android/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/android/F;->a(Lcom/google/googlenav/ui/view/android/F;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/G;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/G;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
