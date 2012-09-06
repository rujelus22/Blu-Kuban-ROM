.class public final Lcom/anddoes/launcher/dz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/pm/ResolveInfo;

.field public b:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;Landroid/appwidget/AppWidgetProviderInfo;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/anddoes/launcher/dz;->a:Landroid/content/pm/ResolveInfo;

    .line 64
    iput-object p2, p0, Lcom/anddoes/launcher/dz;->b:Landroid/appwidget/AppWidgetProviderInfo;

    .line 65
    return-void
.end method
