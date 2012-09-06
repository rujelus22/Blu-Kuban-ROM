.class LfB;
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
        "Lcom/google/android/apps/docs/app/BaseActivity;",
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
    .line 1616
    iput-object p1, p0, LfB;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/BaseActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1619
    invoke-static {p1}, LfY;->a(Lcom/google/android/apps/docs/app/BaseActivity;)V

    .line 1621
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1616
    check-cast p1, Lcom/google/android/apps/docs/app/BaseActivity;

    invoke-virtual {p0, p1}, LfB;->a(Lcom/google/android/apps/docs/app/BaseActivity;)V

    return-void
.end method
