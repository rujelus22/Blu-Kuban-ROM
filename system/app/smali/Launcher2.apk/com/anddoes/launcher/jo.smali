.class final Lcom/anddoes/launcher/jo;
.super Lcom/anddoes/launcher/jn;
.source "SourceFile"


# instance fields
.field b:I

.field c:I

.field d:I

.field e:I

.field f:Ljava/lang/String;

.field g:Landroid/os/Parcelable;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/anddoes/launcher/jn;-><init>()V

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lcom/anddoes/launcher/jo;->i:I

    .line 46
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/anddoes/launcher/jo;->a:Landroid/content/ComponentName;

    .line 47
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iput v0, p0, Lcom/anddoes/launcher/jo;->b:I

    .line 48
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iput v0, p0, Lcom/anddoes/launcher/jo;->c:I

    .line 49
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    iput v0, p0, Lcom/anddoes/launcher/jo;->d:I

    .line 50
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    iput v0, p0, Lcom/anddoes/launcher/jo;->e:I

    .line 51
    if-eqz p2, :cond_22

    if-eqz p3, :cond_22

    .line 52
    iput-object p2, p0, Lcom/anddoes/launcher/jo;->f:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/anddoes/launcher/jo;->g:Landroid/os/Parcelable;

    .line 55
    :cond_22
    return-void
.end method
