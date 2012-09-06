.class Luh;
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
        "Lcom/google/android/apps/docs/editors/EditorsApplication;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Luf;


# direct methods
.method constructor <init>(Luf;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Luh;->a:Luf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/editors/EditorsApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    invoke-static {p1}, Luj;->a(Lcom/google/android/apps/docs/editors/EditorsApplication;)V

    .line 66
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 61
    check-cast p1, Lcom/google/android/apps/docs/editors/EditorsApplication;

    invoke-virtual {p0, p1}, Luh;->a(Lcom/google/android/apps/docs/editors/EditorsApplication;)V

    return-void
.end method
