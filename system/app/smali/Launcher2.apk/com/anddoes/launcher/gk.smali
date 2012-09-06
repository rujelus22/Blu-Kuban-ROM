.class public final Lcom/anddoes/launcher/gk;
.super Landroid/appwidget/AppWidgetHost;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter

    .prologue
    .line 31
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected final onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    new-instance v0, Lcom/anddoes/launcher/gl;

    invoke-direct {v0, p1}, Lcom/anddoes/launcher/gl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final stopListening()V
    .registers 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 43
    invoke-virtual {p0}, Lcom/anddoes/launcher/gk;->clearViews()V

    .line 44
    return-void
.end method
