.class LUw;
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
        "LTt;",
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
    .line 1241
    iput-object p1, p0, LUw;->a:LUb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LTt;)V
    .registers 2
    .parameter

    .prologue
    .line 1244
    invoke-static {p1}, LUD;->a(LTt;)V

    .line 1246
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1241
    check-cast p1, LTt;

    invoke-virtual {p0, p1}, LUw;->a(LTt;)V

    return-void
.end method
