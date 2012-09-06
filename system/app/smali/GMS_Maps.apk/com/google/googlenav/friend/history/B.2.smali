.class Lcom/google/googlenav/friend/history/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic b:Lcom/google/googlenav/friend/history/z;


# direct methods
.method constructor <init>(Lcom/google/googlenav/friend/history/z;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/googlenav/friend/history/B;->b:Lcom/google/googlenav/friend/history/z;

    iput-object p2, p0, Lcom/google/googlenav/friend/history/B;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/googlenav/friend/history/B;->b:Lcom/google/googlenav/friend/history/z;

    iget-object v0, v0, Lcom/google/googlenav/friend/history/z;->b:Lcom/google/googlenav/friend/history/H;

    iget-object v1, p0, Lcom/google/googlenav/friend/history/B;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/history/H;->a(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 208
    return-void
.end method
