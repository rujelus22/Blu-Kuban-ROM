.class LzP;
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
        "LzW;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LzO;


# direct methods
.method constructor <init>(LzO;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, LzP;->a:LzO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 150
    check-cast p1, LzW;

    invoke-virtual {p0, p1}, LzP;->a(LzW;)V

    return-void
.end method

.method public a(LzW;)V
    .registers 2
    .parameter

    .prologue
    .line 153
    invoke-static {p1}, LzT;->a(LzW;)V

    .line 155
    return-void
.end method
