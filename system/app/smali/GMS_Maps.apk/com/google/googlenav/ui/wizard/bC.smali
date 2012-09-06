.class Lcom/google/googlenav/ui/wizard/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic b:Lcom/google/googlenav/ui/wizard/bb;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/bb;Landroid/graphics/drawable/BitmapDrawable;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/bc;->b:Lcom/google/googlenav/ui/wizard/bb;

    iput-object p2, p0, Lcom/google/googlenav/ui/wizard/bc;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/bc;->b:Lcom/google/googlenav/ui/wizard/bb;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/bb;->b:Lcom/google/googlenav/ui/wizard/bi;

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/bc;->a:Landroid/graphics/drawable/BitmapDrawable;

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/bi;->a(Landroid/graphics/drawable/BitmapDrawable;)V

    .line 145
    return-void
.end method
