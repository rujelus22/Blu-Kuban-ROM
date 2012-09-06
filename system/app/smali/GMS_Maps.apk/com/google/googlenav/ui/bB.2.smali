.class Lcom/google/googlenav/ui/bB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/aY;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/Workspace;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/Workspace;)V
    .registers 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/googlenav/ui/bB;->a:Lcom/google/googlenav/ui/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/googlenav/ui/bB;->a:Lcom/google/googlenav/ui/Workspace;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/ui/Workspace;->b(I)V

    .line 154
    return-void
.end method
