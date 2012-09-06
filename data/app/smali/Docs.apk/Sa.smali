.class LSa;
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
        "LRY;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LRZ;


# direct methods
.method constructor <init>(LRZ;)V
    .registers 2
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, LSa;->a:LRZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LRY;)V
    .registers 2
    .parameter

    .prologue
    .line 354
    invoke-static {p1}, LSi;->a(LRY;)V

    .line 356
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 351
    check-cast p1, LRY;

    invoke-virtual {p0, p1}, LSa;->a(LRY;)V

    return-void
.end method
