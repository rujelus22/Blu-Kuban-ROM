.class LPG;
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
        "LPk;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LPr;


# direct methods
.method constructor <init>(LPr;)V
    .registers 2
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, LPG;->a:LPr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LPk;)V
    .registers 2
    .parameter

    .prologue
    .line 582
    invoke-static {p1}, LPN;->a(LPk;)V

    .line 584
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 579
    check-cast p1, LPk;

    invoke-virtual {p0, p1}, LPG;->a(LPk;)V

    return-void
.end method
