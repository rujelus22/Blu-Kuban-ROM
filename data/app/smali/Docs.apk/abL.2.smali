.class LabL;
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
        "Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:LabK;


# direct methods
.method constructor <init>(LabK;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, LabL;->a:LabK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 108
    invoke-static {p1}, LabO;->a(Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;)V

    .line 110
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2
    .parameter

    .prologue
    .line 105
    check-cast p1, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;

    invoke-virtual {p0, p1}, LabL;->a(Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;)V

    return-void
.end method
