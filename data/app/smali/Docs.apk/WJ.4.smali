.class LWJ;
.super Ljava/lang/Object;
.source "GellyInjectorBuilderBase.java"

# interfaces
.implements LanD;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LanD",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:LWI;

.field final synthetic a:LanD;


# direct methods
.method constructor <init>(LWI;LanD;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, LWJ;->a:LWI;

    iput-object p2, p0, LWJ;->a:LanD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, LWJ;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
