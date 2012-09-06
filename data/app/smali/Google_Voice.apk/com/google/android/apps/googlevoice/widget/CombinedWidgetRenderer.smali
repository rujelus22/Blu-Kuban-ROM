.class public Lcom/google/android/apps/googlevoice/widget/CombinedWidgetRenderer;
.super Ljava/lang/Object;
.source "CombinedWidgetRenderer.java"

# interfaces
.implements Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;


# instance fields
.field private final widgetRenderers:[Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;)V
    .registers 2
    .parameter "widgetRenderers"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/apps/googlevoice/widget/CombinedWidgetRenderer;->widgetRenderers:[Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;

    .line 20
    return-void
.end method


# virtual methods
.method public render(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;Lcom/google/android/apps/googlevoice/VoicePreferences;)V
    .registers 8
    .parameter "context"
    .parameter "widgetState"
    .parameter "voicePreferences"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/CombinedWidgetRenderer;->widgetRenderers:[Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 25
    .local v3, widgetRenderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;
    invoke-interface {v3, p1, p2, p3}, Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;->render(Landroid/content/Context;Lcom/google/android/apps/googlevoice/widget/WidgetState;Lcom/google/android/apps/googlevoice/VoicePreferences;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 27
    .end local v3           #widgetRenderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;
    :cond_e
    return-void
.end method

.method public setAppWidgetIds([I)V
    .registers 6
    .parameter "appWidgetIds"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/apps/googlevoice/widget/CombinedWidgetRenderer;->widgetRenderers:[Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;

    .local v0, arr$:[Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 32
    .local v3, widgetRenderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;
    invoke-interface {v3, p1}, Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;->setAppWidgetIds([I)V

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 34
    .end local v3           #widgetRenderer:Lcom/google/android/apps/googlevoice/widget/WidgetRenderer;
    :cond_e
    return-void
.end method
