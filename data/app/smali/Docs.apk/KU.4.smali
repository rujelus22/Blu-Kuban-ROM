.class LKU;
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
        "Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LKT;


# direct methods
.method constructor <init>(LKT;)V
    .registers 2
    .parameter

    .prologue
    .line 310
    iput-object p1, p0, LKU;->a:LKT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 313
    invoke-static {p1}, LLc;->a(Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;)V

    .line 315
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 310
    check-cast p1, Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;

    invoke-virtual {p0, p1}, LKU;->a(Lcom/google/android/apps/docs/notification/DocsNotificationProxyActivity;)V

    return-void
.end method
