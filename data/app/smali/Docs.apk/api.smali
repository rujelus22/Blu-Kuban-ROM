.class Lapi;
.super Ljava/lang/Object;
.source "MembersInjectorImpl.java"

# interfaces
.implements Laov;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Laov",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lant;

.field final synthetic a:Laoy;

.field final synthetic a:Laph;

.field final synthetic a:Ljava/lang/Object;

.field final synthetic a:Z

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Laph;Lant;Ljava/lang/Object;Ljava/lang/Object;Laoy;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lapi;->a:Laph;

    iput-object p2, p0, Lapi;->a:Lant;

    iput-object p3, p0, Lapi;->a:Ljava/lang/Object;

    iput-object p4, p0, Lapi;->b:Ljava/lang/Object;

    iput-object p5, p0, Lapi;->a:Laoy;

    iput-boolean p6, p0, Lapi;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lapb;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lapi;->a(Lapb;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public a(Lapb;)Ljava/lang/Void;
    .registers 6
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lapi;->a:Lant;

    iget-object v1, p0, Lapi;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lapb;->a(Lant;Ljava/lang/Object;)V

    .line 80
    :try_start_7
    iget-object v0, p0, Lapi;->a:Laph;

    iget-object v1, p0, Lapi;->b:Ljava/lang/Object;

    iget-object v2, p0, Lapi;->a:Laoy;

    iget-boolean v3, p0, Lapi;->a:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Laph;->a(Ljava/lang/Object;Laoy;Lapb;Z)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_17

    .line 82
    invoke-virtual {p1}, Lapb;->a()V

    .line 84
    const/4 v0, 0x0

    return-object v0

    .line 82
    :catchall_17
    move-exception v0

    invoke-virtual {p1}, Lapb;->a()V

    throw v0
.end method
