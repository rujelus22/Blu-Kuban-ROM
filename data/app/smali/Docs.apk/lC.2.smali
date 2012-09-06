.class LlC;
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
        "Lmj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LlB;


# direct methods
.method constructor <init>(LlB;)V
    .registers 2
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, LlC;->a:LlB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 301
    check-cast p1, Lmj;

    invoke-virtual {p0, p1}, LlC;->a(Lmj;)V

    return-void
.end method

.method public a(Lmj;)V
    .registers 2
    .parameter

    .prologue
    .line 304
    invoke-static {p1}, LlJ;->a(Lmj;)V

    .line 306
    return-void
.end method
