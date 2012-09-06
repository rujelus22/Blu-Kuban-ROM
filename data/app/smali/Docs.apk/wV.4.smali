.class LwV;
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
        "Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LwU;


# direct methods
.method constructor <init>(LwU;)V
    .registers 2
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, LwV;->a:LwU;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 525
    invoke-static {p1}, Lxf;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    .line 527
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 522
    check-cast p1, Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;

    invoke-virtual {p0, p1}, LwV;->a(Lcom/google/android/apps/docs/editors/kix/KixEditorActivity;)V

    return-void
.end method
