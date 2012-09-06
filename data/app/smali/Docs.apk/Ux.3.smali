.class LUx;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"

# interfaces
.implements Lany;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lany",
        "<",
        "LVo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LUb;


# direct methods
.method constructor <init>(LUb;)V
    .registers 2
    .parameter

    .prologue
    .line 1249
    iput-object p1, p0, LUx;->a:LUb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LVo;)V
    .registers 2
    .parameter

    .prologue
    .line 1252
    invoke-static {p1}, LUJ;->a(LVo;)V

    .line 1254
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1249
    check-cast p1, LVo;

    invoke-virtual {p0, p1}, LUx;->a(LVo;)V

    return-void
.end method
