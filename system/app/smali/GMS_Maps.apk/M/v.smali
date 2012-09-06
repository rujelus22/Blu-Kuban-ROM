.class Lm/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field final synthetic a:Lm/o;


# direct methods
.method private constructor <init>(Lm/o;)V
    .registers 2
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lm/v;->a:Lm/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lm/o;Lm/p;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lm/v;-><init>(Lm/o;)V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .registers 6
    .parameter

    .prologue
    .line 739
    iget-object v0, p0, Lm/v;->a:Lm/o;

    invoke-static {v0}, Lm/o;->a(Lm/o;)Lm/w;

    move-result-object v0

    invoke-interface {v0}, Lm/w;->c()Lm/u;

    move-result-object v0

    .line 740
    if-eqz v0, :cond_25

    .line 741
    new-instance v1, Lk/o;

    invoke-virtual {v0}, Lm/u;->a()I

    move-result v2

    invoke-virtual {v0}, Lm/u;->b()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lk/o;-><init>(III)V

    invoke-static {v1}, LA/f;->b(LA/j;)V

    .line 744
    iget-object v1, p0, Lm/v;->a:Lm/o;

    invoke-static {v1}, Lm/o;->c(Lm/o;)Lm/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lm/g;->a(Lm/u;)V

    .line 746
    :cond_25
    return-void
.end method
