.class Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity$1;
.super Ljava/lang/Object;
.source "AppWidgetPickerActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/boombuler/system/appwidgetpicker/SubItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;


# direct methods
.method constructor <init>(Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity$1;->this$0:Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/boombuler/system/appwidgetpicker/SubItem;Lcom/boombuler/system/appwidgetpicker/SubItem;)I
    .registers 5
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/boombuler/system/appwidgetpicker/SubItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/boombuler/system/appwidgetpicker/SubItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/boombuler/system/appwidgetpicker/SubItem;

    check-cast p2, Lcom/boombuler/system/appwidgetpicker/SubItem;

    invoke-virtual {p0, p1, p2}, Lcom/boombuler/system/appwidgetpicker/AppWidgetPickerActivity$1;->compare(Lcom/boombuler/system/appwidgetpicker/SubItem;Lcom/boombuler/system/appwidgetpicker/SubItem;)I

    move-result v0

    return v0
.end method
