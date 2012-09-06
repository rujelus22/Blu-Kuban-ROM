.class public final Lcom/anddoes/launcher/ht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private a:Landroid/content/pm/PackageManager;

.field private b:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;)V
    .registers 3
    .parameter

    .prologue
    .line 2097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2098
    iput-object p1, p0, Lcom/anddoes/launcher/ht;->a:Landroid/content/pm/PackageManager;

    .line 2099
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/ht;->b:Ljava/util/HashMap;

    .line 2100
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2104
    iget-object v0, p0, Lcom/anddoes/launcher/ht;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2105
    iget-object v0, p0, Lcom/anddoes/launcher/ht;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 2112
    :goto_11
    iget-object v0, p0, Lcom/anddoes/launcher/ht;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2113
    iget-object v0, p0, Lcom/anddoes/launcher/ht;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2120
    :goto_21
    invoke-static {}, Lcom/anddoes/launcher/LauncherModel;->j()Ljava/text/Collator;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2107
    :cond_2a
    instance-of v0, p1, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_3a

    move-object v0, p1

    .line 2108
    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 2110
    :goto_33
    iget-object v1, p0, Lcom/anddoes/launcher/ht;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    goto :goto_11

    :cond_3a
    move-object v0, p1

    .line 2109
    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v1, p0, Lcom/anddoes/launcher/ht;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    .line 2115
    :cond_48
    instance-of v0, p2, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_57

    move-object v0, p2

    .line 2116
    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 2118
    :goto_51
    iget-object v2, p0, Lcom/anddoes/launcher/ht;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_57
    move-object v0, p2

    .line 2117
    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/anddoes/launcher/ht;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_51
.end method
