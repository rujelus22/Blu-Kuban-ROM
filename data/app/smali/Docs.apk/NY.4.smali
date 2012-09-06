.class LNY;
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
        "Lcom/google/android/apps/docs/receivers/NetworkChangeReceiver;",
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
    .line 157
    iput-object p1, p0, LNY;->a:LNX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/receivers/NetworkChangeReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 160
    invoke-static {p1}, LOe;->a(Lcom/google/android/apps/docs/receivers/NetworkChangeReceiver;)V

    .line 162
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 157
    check-cast p1, Lcom/google/android/apps/docs/receivers/NetworkChangeReceiver;

    invoke-virtual {p0, p1}, LNY;->a(Lcom/google/android/apps/docs/receivers/NetworkChangeReceiver;)V

    return-void
.end method
