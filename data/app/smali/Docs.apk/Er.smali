.class LEr;
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
        "Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;",
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
    .line 101
    iput-object p1, p0, LEr;->a:LEp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 104
    invoke-static {p1}, LEu;->a(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;)V

    .line 106
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    check-cast p1, Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;

    invoke-virtual {p0, p1}, LEr;->a(Lcom/google/android/apps/docs/editors/trix/TrixNativeDemoActivity;)V

    return-void
.end method
