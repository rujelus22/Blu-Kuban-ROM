.class Lcom/google/android/music/athome/AtHomePickerWidget$1;
.super Ljava/lang/Object;
.source "AtHomePickerWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/athome/AtHomePickerWidget;->updateImage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/athome/AtHomePickerWidget;

.field final synthetic val$imageId:I


# direct methods
.method constructor <init>(Lcom/google/android/music/athome/AtHomePickerWidget;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomePickerWidget$1;->this$0:Lcom/google/android/music/athome/AtHomePickerWidget;

    iput p2, p0, Lcom/google/android/music/athome/AtHomePickerWidget$1;->val$imageId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePickerWidget$1;->this$0:Lcom/google/android/music/athome/AtHomePickerWidget;

    iget v1, p0, Lcom/google/android/music/athome/AtHomePickerWidget$1;->val$imageId:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/athome/AtHomePickerWidget;->setImageResource(I)V

    .line 56
    return-void
.end method
