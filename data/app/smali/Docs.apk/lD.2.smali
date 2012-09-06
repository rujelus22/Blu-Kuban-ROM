.class LlD;
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
        "Lms;",
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
    .line 309
    iput-object p1, p0, LlD;->a:LlB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 309
    check-cast p1, Lms;

    invoke-virtual {p0, p1}, LlD;->a(Lms;)V

    return-void
.end method

.method public a(Lms;)V
    .registers 2
    .parameter

    .prologue
    .line 312
    invoke-static {p1}, LlK;->a(Lms;)V

    .line 314
    return-void
.end method
