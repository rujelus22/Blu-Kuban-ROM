.class Lcom/google/googlenav/ui/wizard/cF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac/d;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cD;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/cD;)V
    .registers 2
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cF;->a:Lcom/google/googlenav/ui/wizard/cD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Z()V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cF;->a:Lcom/google/googlenav/ui/wizard/cD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/wizard/cD;->b(Lcom/google/googlenav/ui/wizard/cD;Z)Z

    .line 140
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cF;->a:Lcom/google/googlenav/ui/wizard/cD;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cD;->a()V

    .line 141
    return-void
.end method
