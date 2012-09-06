.class Lcom/google/googlenav/ui/wizard/cZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/wizard/dh;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/cX;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/wizard/cX;)V
    .registers 2
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cZ;->a:Lcom/google/googlenav/ui/wizard/cX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/wizard/cX;Lcom/google/googlenav/ui/wizard/cY;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/wizard/cZ;-><init>(Lcom/google/googlenav/ui/wizard/cX;)V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 240
    return-void
.end method

.method public a(Lcom/google/googlenav/friend/ah;)V
    .registers 4
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cZ;->a:Lcom/google/googlenav/ui/wizard/cX;

    invoke-static {v0, p1}, Lcom/google/googlenav/ui/wizard/cX;->a(Lcom/google/googlenav/ui/wizard/cX;Lcom/google/googlenav/friend/ah;)Lcom/google/googlenav/friend/ah;

    .line 246
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cZ;->a:Lcom/google/googlenav/ui/wizard/cX;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/cX;->b(Lcom/google/googlenav/ui/wizard/cX;)Lcom/google/googlenav/ui/wizard/da;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/cZ;->a:Lcom/google/googlenav/ui/wizard/cX;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/cX;->a(Lcom/google/googlenav/ui/wizard/cX;)Lcom/google/googlenav/ui/wizard/db;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/google/googlenav/ui/wizard/da;->a(Lcom/google/googlenav/ui/wizard/db;Lcom/google/googlenav/friend/ah;)V

    .line 247
    return-void
.end method
