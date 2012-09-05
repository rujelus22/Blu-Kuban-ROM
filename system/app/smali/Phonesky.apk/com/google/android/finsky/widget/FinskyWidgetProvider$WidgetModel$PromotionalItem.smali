.class public Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;
.super Ljava/lang/Object;
.source "FinskyWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PromotionalItem"
.end annotation


# instance fields
.field developer:Ljava/lang/String;

.field doc:Lcom/google/android/finsky/api/model/Document;

.field image:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;

.field title:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;)V
    .registers 2
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel$PromotionalItem;->this$0:Lcom/google/android/finsky/widget/FinskyWidgetProvider$WidgetModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
