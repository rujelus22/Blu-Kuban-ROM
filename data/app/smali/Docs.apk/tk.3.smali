.class Ltk;
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
        "LtE;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ltf;


# direct methods
.method constructor <init>(Ltf;)V
    .registers 2
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Ltk;->a:Ltf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 407
    check-cast p1, LtE;

    invoke-virtual {p0, p1}, Ltk;->a(LtE;)V

    return-void
.end method

.method public a(LtE;)V
    .registers 2
    .parameter

    .prologue
    .line 410
    invoke-static {p1}, Lts;->a(LtE;)V

    .line 412
    return-void
.end method
