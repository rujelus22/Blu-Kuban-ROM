.class Lcom/android/calendar/SelectMapActivity$2;
.super Ljava/lang/Object;
.source "SelectMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/SelectMapActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/SelectMapActivity;)V
    .registers 2
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/calendar/SelectMapActivity$2;->this$0:Lcom/android/calendar/SelectMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/calendar/SelectMapActivity$2;->this$0:Lcom/android/calendar/SelectMapActivity;

    #calls: Lcom/android/calendar/SelectMapActivity;->searchLocation()V
    invoke-static {v0}, Lcom/android/calendar/SelectMapActivity;->access$000(Lcom/android/calendar/SelectMapActivity;)V

    .line 253
    return-void
.end method
