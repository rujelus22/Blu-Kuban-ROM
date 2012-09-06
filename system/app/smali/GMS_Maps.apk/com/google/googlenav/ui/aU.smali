.class public Lcom/google/googlenav/ui/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/w;


# instance fields
.field private a:Lat/p;


# direct methods
.method public constructor <init>(Lat/p;)V
    .registers 2
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/googlenav/ui/au;->a:Lat/p;

    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/googlenav/ui/au;->a:Lat/p;

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 29
    iget-object v0, p0, Lcom/google/googlenav/ui/au;->a:Lat/p;

    invoke-virtual {v0}, Lat/p;->o()Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/google/googlenav/ui/aV;->bL:Lcom/google/googlenav/ui/aV;

    .line 31
    :goto_14
    invoke-static {}, Lcom/google/googlenav/ui/view/e;->a()Lcom/google/googlenav/ui/view/e;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/google/googlenav/ui/aW;->a(Ljava/lang/String;Lcom/google/googlenav/ui/aV;)Lcom/google/googlenav/ui/aW;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/view/e;->a(Lcom/google/googlenav/ui/aW;)V

    .line 34
    :cond_1f
    return-void

    .line 29
    :cond_20
    sget-object v0, Lcom/google/googlenav/ui/aV;->bK:Lcom/google/googlenav/ui/aV;

    goto :goto_14
.end method
