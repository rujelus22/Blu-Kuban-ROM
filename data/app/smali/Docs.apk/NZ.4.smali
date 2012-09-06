.class LNZ;
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
        "Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LNX;


# direct methods
.method constructor <init>(LNX;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, LNZ;->a:LNX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 168
    invoke-static {p1}, LOd;->a(Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;)V

    .line 170
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 165
    check-cast p1, Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;

    invoke-virtual {p0, p1}, LNZ;->a(Lcom/google/android/apps/docs/receivers/AccountChangeReceiver;)V

    return-void
.end method
