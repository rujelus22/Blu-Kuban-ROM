.class Lfs;
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
        "Lcom/google/android/apps/docs/app/MainDriveProxyActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfe;


# direct methods
.method constructor <init>(Lfe;)V
    .registers 2
    .parameter

    .prologue
    .line 1760
    iput-object p1, p0, Lfs;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/MainDriveProxyActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1763
    invoke-static {p1}, Lgm;->a(Lcom/google/android/apps/docs/app/MainDriveProxyActivity;)V

    .line 1765
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1760
    check-cast p1, Lcom/google/android/apps/docs/app/MainDriveProxyActivity;

    invoke-virtual {p0, p1}, Lfs;->a(Lcom/google/android/apps/docs/app/MainDriveProxyActivity;)V

    return-void
.end method
