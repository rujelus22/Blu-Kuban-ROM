.class Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$1;
.super Ljava/lang/Object;
.source "FinskyWidgetProvider.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->onDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;

.field final synthetic val$document:Lcom/google/android/finsky/api/model/Document;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;Lcom/google/android/finsky/api/model/Document;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$1;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;

    iput-object p2, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$1;->val$document:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$1;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;

    iget-object v1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$1;->val$document:Lcom/google/android/finsky/api/model/Document;

    #calls: Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->bitmapLoaded(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    invoke-static {v0, v1, p1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;->access$200(Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    .line 264
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 260
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$1;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
