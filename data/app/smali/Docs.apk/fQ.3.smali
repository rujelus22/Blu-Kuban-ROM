.class LfQ;
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
        "Lcom/google/android/apps/docs/app/CommentStreamActivity;",
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
    .line 1632
    iput-object p1, p0, LfQ;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1635
    invoke-static {p1}, Lgc;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V

    .line 1637
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1632
    check-cast p1, Lcom/google/android/apps/docs/app/CommentStreamActivity;

    invoke-virtual {p0, p1}, LfQ;->a(Lcom/google/android/apps/docs/app/CommentStreamActivity;)V

    return-void
.end method
