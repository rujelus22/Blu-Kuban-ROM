.class LUc;
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
        "LTP;",
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
    .line 1225
    iput-object p1, p0, LUc;->a:LUb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LTP;)V
    .registers 2
    .parameter

    .prologue
    .line 1228
    invoke-static {p1}, LUH;->a(LTP;)V

    .line 1230
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1225
    check-cast p1, LTP;

    invoke-virtual {p0, p1}, LUc;->a(LTP;)V

    return-void
.end method
