.class Lcr;
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
        "Lcj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcq;


# direct methods
.method constructor <init>(Lcq;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcr;->a:Lcq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcj;)V
    .registers 2
    .parameter

    .prologue
    .line 358
    invoke-static {p1}, Lcz;->a(Lcj;)V

    .line 360
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 355
    check-cast p1, Lcj;

    invoke-virtual {p0, p1}, Lcr;->a(Lcj;)V

    return-void
.end method
