.class Lcom/android/calendar/EditEvent$60;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/EditEvent;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/android/calendar/EditEvent;)V
    .registers 2
    .parameter

    .prologue
    .line 2937
    iput-object p1, p0, Lcom/android/calendar/EditEvent$60;->this$0:Lcom/android/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 2939
    iget-object v0, p0, Lcom/android/calendar/EditEvent$60;->this$0:Lcom/android/calendar/EditEvent;

    #setter for: Lcom/android/calendar/EditEvent;->mLatitude:I
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$7102(Lcom/android/calendar/EditEvent;I)I

    .line 2940
    iget-object v0, p0, Lcom/android/calendar/EditEvent$60;->this$0:Lcom/android/calendar/EditEvent;

    #setter for: Lcom/android/calendar/EditEvent;->mLongitude:I
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$7202(Lcom/android/calendar/EditEvent;I)I

    .line 2941
    iget-object v0, p0, Lcom/android/calendar/EditEvent$60;->this$0:Lcom/android/calendar/EditEvent;

    #getter for: Lcom/android/calendar/EditEvent;->mMapContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/EditEvent;->access$7300(Lcom/android/calendar/EditEvent;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2942
    iget-object v0, p0, Lcom/android/calendar/EditEvent$60;->this$0:Lcom/android/calendar/EditEvent;

    const/4 v1, 0x0

    #setter for: Lcom/android/calendar/EditEvent;->mLocationBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/calendar/EditEvent;->access$7402(Lcom/android/calendar/EditEvent;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 2943
    return-void
.end method
