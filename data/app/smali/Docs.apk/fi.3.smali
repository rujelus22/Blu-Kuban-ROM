.class Lfi;
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
        "Lcom/google/android/apps/docs/app/ErrorNotificationActivity;",
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
    .line 1688
    iput-object p1, p0, Lfi;->a:Lfe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/app/ErrorNotificationActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1691
    invoke-static {p1}, Lgh;->a(Lcom/google/android/apps/docs/app/ErrorNotificationActivity;)V

    .line 1693
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 1688
    check-cast p1, Lcom/google/android/apps/docs/app/ErrorNotificationActivity;

    invoke-virtual {p0, p1}, Lfi;->a(Lcom/google/android/apps/docs/app/ErrorNotificationActivity;)V

    return-void
.end method
