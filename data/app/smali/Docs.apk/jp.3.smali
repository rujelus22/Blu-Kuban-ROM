.class Ljp;
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
        "Lcom/google/android/apps/docs/app/tablet/TabletHomeActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljo;


# direct methods
.method constructor <init>(Ljo;)V
    .registers 2
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Ljp;->a:Ljo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/tablet/TabletHomeActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 338
    invoke-static {p1}, Ljx;->a(Lcom/google/android/apps/docs/app/tablet/TabletHomeActivity;)V

    .line 340
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 335
    check-cast p1, Lcom/google/android/apps/docs/app/tablet/TabletHomeActivity;

    invoke-virtual {p0, p1}, Ljp;->a(Lcom/google/android/apps/docs/app/tablet/TabletHomeActivity;)V

    return-void
.end method
