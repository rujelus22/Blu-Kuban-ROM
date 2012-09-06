.class Lcom/google/googlenav/ui/wizard/jb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/cs;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ja;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ja;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jb;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jb;->a:Lcom/google/googlenav/ui/wizard/ja;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/ui/wizard/ja;)V

    .line 286
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jb;->a:Lcom/google/googlenav/ui/wizard/ja;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/ja;->a(Lcom/google/googlenav/ui/wizard/ja;Z)V

    .line 292
    return-void
.end method
