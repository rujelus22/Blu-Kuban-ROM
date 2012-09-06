.class Lug;
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
        "Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;",
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
    .line 53
    iput-object p1, p0, Lug;->a:Luf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 56
    invoke-static {p1}, Luk;->a(Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;)V

    .line 58
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 53
    check-cast p1, Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;

    invoke-virtual {p0, p1}, Lug;->a(Lcom/google/android/apps/docs/editors/ErrorNotificationActivity;)V

    return-void
.end method
