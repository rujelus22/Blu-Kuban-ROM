.class public LabO;
.super Ljava/lang/Object;
.source "GellyInjectorStore.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 78
    invoke-static {p0}, LfZ;->a(Lcom/google/android/apps/docs/app/BaseDialogActivity;)V

    .line 80
    invoke-static {}, LdD;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LabK;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LdE;

    iput-object v0, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:LdE;

    .line 86
    invoke-static {}, LZa;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LabK;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LXJ;

    iput-object v0, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:LXJ;

    .line 92
    invoke-static {}, LIf;->a()LanD;

    move-result-object v0

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, LabK;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LHW;

    iput-object v0, p0, Lcom/google/android/apps/docs/widget/WidgetConfigureActivity;->a:LHW;

    .line 98
    return-void
.end method
