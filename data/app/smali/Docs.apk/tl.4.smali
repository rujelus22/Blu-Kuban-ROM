.class Ltl;
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
        "Lte;",
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
    .line 415
    iput-object p1, p0, Ltl;->a:Ltf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 415
    check-cast p1, Lte;

    invoke-virtual {p0, p1}, Ltl;->a(Lte;)V

    return-void
.end method

.method public a(Lte;)V
    .registers 2
    .parameter

    .prologue
    .line 418
    invoke-static {p1}, Ltr;->a(Lte;)V

    .line 420
    return-void
.end method
