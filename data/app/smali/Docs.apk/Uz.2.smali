.class LUz;
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
        "LTH;",
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
    .line 1265
    iput-object p1, p0, LUz;->a:LUb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LTH;)V
    .registers 2
    .parameter

    .prologue
    .line 1268
    invoke-static {p1}, LUF;->a(LTH;)V

    .line 1270
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1265
    check-cast p1, LTH;

    invoke-virtual {p0, p1}, LUz;->a(LTH;)V

    return-void
.end method
