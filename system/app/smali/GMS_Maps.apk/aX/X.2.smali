.class Lax/X;
.super Lcom/google/googlenav/x;
.source "SourceFile"


# instance fields
.field final synthetic a:Lax/W;


# direct methods
.method constructor <init>(Lax/W;)V
    .registers 2
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lax/X;->a:Lax/W;

    invoke-direct {p0}, Lcom/google/googlenav/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lax/X;->a:Lax/W;

    invoke-static {v0}, Lax/W;->a(Lax/W;)V

    .line 131
    return-void
.end method
