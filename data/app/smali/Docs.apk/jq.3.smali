.class Ljq;
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
        "Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;",
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
    .line 343
    iput-object p1, p0, Ljq;->a:Ljo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 346
    invoke-static {p1}, Ljw;->a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    .line 348
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 343
    check-cast p1, Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;

    invoke-virtual {p0, p1}, Ljq;->a(Lcom/google/android/apps/docs/app/tablet/TabletDocListActivity;)V

    return-void
.end method
