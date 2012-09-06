.class LKV;
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
        "LKR;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LKT;


# direct methods
.method constructor <init>(LKT;)V
    .registers 2
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, LKV;->a:LKT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LKR;)V
    .registers 2
    .parameter

    .prologue
    .line 321
    invoke-static {p1}, LLb;->a(LKR;)V

    .line 323
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 318
    check-cast p1, LKR;

    invoke-virtual {p0, p1}, LKV;->a(LKR;)V

    return-void
.end method
