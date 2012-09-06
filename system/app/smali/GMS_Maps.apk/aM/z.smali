.class LaM/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/V;


# instance fields
.field final synthetic a:LaM/y;


# direct methods
.method constructor <init>(LaM/y;)V
    .registers 2
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, LaM/z;->a:LaM/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 7
    .parameter

    .prologue
    .line 492
    if-nez p1, :cond_1f

    .line 493
    iget-object v0, p0, LaM/z;->a:LaM/y;

    iget-object v0, v0, LaM/y;->b:Lcom/google/googlenav/ui/v;

    const/16 v1, 0x245

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, LaM/z;->a:LaM/y;

    invoke-virtual {v4}, LaM/y;->aK()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/v;->a(Ljava/lang/String;)V

    .line 496
    :cond_1f
    return-void
.end method
