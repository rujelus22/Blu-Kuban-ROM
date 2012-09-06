.class LaM/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/friend/bd;


# instance fields
.field final synthetic a:LaM/X;


# direct methods
.method constructor <init>(LaM/X;)V
    .registers 2
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, LaM/Y;->a:LaM/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 5
    .parameter

    .prologue
    .line 275
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 276
    :goto_5
    const/4 v1, 0x0

    .line 277
    iget-object v2, p0, LaM/Y;->a:LaM/X;

    invoke-static {v2}, LaM/X;->a(LaM/X;)Lcom/google/googlenav/ui/friend/q;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/googlenav/ui/friend/q;->a(Ljava/lang/Boolean;Z)V

    .line 278
    return-void

    .line 275
    :cond_10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5
.end method
