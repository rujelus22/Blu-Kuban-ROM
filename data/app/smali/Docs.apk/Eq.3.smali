.class LEq;
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
        "Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LEp;


# direct methods
.method constructor <init>(LEp;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, LEq;->a:LEp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 96
    invoke-static {p1}, LEt;->a(Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;)V

    .line 98
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    check-cast p1, Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;

    invoke-virtual {p0, p1}, LEq;->a(Lcom/google/android/apps/docs/editors/trix/TrixDemoActivity;)V

    return-void
.end method
