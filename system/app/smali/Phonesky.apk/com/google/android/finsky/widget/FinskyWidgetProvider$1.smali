.class Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;
.super Ljava/lang/Object;
.source "FinskyWidgetProvider.java"

# interfaces
.implements Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$RefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/FinskyWidgetProvider;->refreshList(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/FinskyWidgetProvider;

.field final synthetic val$appWidgetIds:[I

.field final synthetic val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/FinskyWidgetProvider;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetProvider;

    iput-object p2, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iput-object p4, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;->val$appWidgetIds:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onData()V
    .registers 5

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetProvider;

    iget-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v3, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;->val$appWidgetIds:[I

    #calls: Lcom/google/android/finsky/widget/FinskyWidgetProvider;->rebindWidgets(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->access$100(Lcom/google/android/finsky/widget/FinskyWidgetProvider;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 123
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 116
    const-string v0, "Failed to load list for widget! %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetProvider;

    iget-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;->val$appWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v3, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$1;->val$appWidgetIds:[I

    #calls: Lcom/google/android/finsky/widget/FinskyWidgetProvider;->showError(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/widget/FinskyWidgetProvider;->access$000(Lcom/google/android/finsky/widget/FinskyWidgetProvider;Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 118
    return-void
.end method
