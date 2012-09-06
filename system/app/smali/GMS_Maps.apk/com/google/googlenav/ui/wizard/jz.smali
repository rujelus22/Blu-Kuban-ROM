.class Lcom/google/googlenav/ui/wizard/jz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:LZ/a;

.field final synthetic c:Lcom/google/googlenav/ui/wizard/ju;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ju;ILZ/a;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1577
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/jz;->c:Lcom/google/googlenav/ui/wizard/ju;

    iput p2, p0, Lcom/google/googlenav/ui/wizard/jz;->a:I

    iput-object p3, p0, Lcom/google/googlenav/ui/wizard/jz;->b:LZ/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/jz;->c:Lcom/google/googlenav/ui/wizard/ju;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/ju;->a:Lcom/google/googlenav/J;

    iget v1, p0, Lcom/google/googlenav/ui/wizard/jz;->a:I

    iget-object v2, p0, Lcom/google/googlenav/ui/wizard/jz;->b:LZ/a;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/J;->a(ILZ/a;)Z

    .line 1581
    return-void
.end method
