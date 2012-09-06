.class LaK/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/google/googlenav/friend/aK;

.field private final b:Lcom/google/googlenav/friend/L;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/L;)V
    .registers 2
    .parameter

    .prologue
    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, LaK/f;->b:Lcom/google/googlenav/friend/L;

    .line 251
    return-void
.end method


# virtual methods
.method public a(Lcom/google/googlenav/friend/aK;)V
    .registers 2
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, LaK/f;->a:Lcom/google/googlenav/friend/aK;

    .line 263
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, LaK/f;->b:Lcom/google/googlenav/friend/L;

    iget-object v1, p0, LaK/f;->a:Lcom/google/googlenav/friend/aK;

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/L;->a(Lcom/google/googlenav/friend/aK;)V

    .line 256
    return-void
.end method
